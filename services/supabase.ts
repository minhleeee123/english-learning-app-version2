import { createClient, SupabaseClient } from '@supabase/supabase-js';
import { Deck, WordData } from '../types';

// Supabase configuration
const supabaseUrl = import.meta.env.VITE_SUPABASE_URL;
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseAnonKey) {
  console.error('Missing Supabase configuration. Please check your .env file.');
}

// Create Supabase client
export const supabase: SupabaseClient = createClient(supabaseUrl, supabaseAnonKey);

// =====================================================
// Database Types (matching Supabase schema)
// =====================================================
interface DbDeck {
  id: string;
  name: string;
  is_system: boolean;
  created_at: string;
  updated_at: string;
}

interface DbWord {
  id: string;
  deck_id: string;
  word: string;
  ipa: string;
  pos: string;
  definition: string;
  example: string;
  created_at: string;
}

// =====================================================
// DECK OPERATIONS
// =====================================================

/**
 * Fetch all decks with their words
 */
export const fetchAllDecks = async (): Promise<Deck[]> => {
  try {
    // Fetch decks
    const { data: decksData, error: decksError } = await supabase
      .from('decks')
      .select('*')
      .order('is_system', { ascending: false })
      .order('created_at', { ascending: true });

    if (decksError) throw decksError;

    // Fetch all words
    const { data: wordsData, error: wordsError } = await supabase
      .from('words')
      .select('*')
      .order('created_at', { ascending: true });

    if (wordsError) throw wordsError;

    // Map database format to app format
    const decks: Deck[] = (decksData as DbDeck[]).map((deck) => ({
      id: deck.id,
      name: deck.name,
      isSystem: deck.is_system,
      words: (wordsData as DbWord[])
        .filter((word) => word.deck_id === deck.id)
        .map((word) => ({
          id: word.id,
          word: word.word,
          ipa: word.ipa,
          pos: word.pos,
          definition: word.definition,
          example: word.example,
        })),
    }));

    return decks;
  } catch (error) {
    console.error('Error fetching decks:', error);
    return [];
  }
};

/**
 * Create a new deck with words
 */
export const createDeck = async (deck: Deck): Promise<boolean> => {
  try {
    // Insert deck
    const { data: deckData, error: deckError } = await supabase
      .from('decks')
      .insert({
        id: deck.id,
        name: deck.name,
        is_system: deck.isSystem,
      })
      .select()
      .single();

    if (deckError) throw deckError;

    // Insert words
    if (deck.words.length > 0) {
      const wordsToInsert = deck.words.map((word) => ({
        id: word.id,
        deck_id: deck.id,
        word: word.word,
        ipa: word.ipa,
        pos: word.pos,
        definition: word.definition,
        example: word.example,
      }));

      const { error: wordsError } = await supabase
        .from('words')
        .insert(wordsToInsert);

      if (wordsError) throw wordsError;
    }

    return true;
  } catch (error) {
    console.error('Error creating deck:', error);
    return false;
  }
};

/**
 * Delete a deck (cascade deletes words automatically)
 */
export const deleteDeck = async (deckId: string): Promise<boolean> => {
  try {
    const { error } = await supabase
      .from('decks')
      .delete()
      .eq('id', deckId);

    if (error) throw error;
    return true;
  } catch (error) {
    console.error('Error deleting deck:', error);
    return false;
  }
};

/**
 * Update deck name
 */
export const updateDeck = async (deckId: string, name: string): Promise<boolean> => {
  try {
    const { error } = await supabase
      .from('decks')
      .update({ name, updated_at: new Date().toISOString() })
      .eq('id', deckId);

    if (error) throw error;
    return true;
  } catch (error) {
    console.error('Error updating deck:', error);
    return false;
  }
};

// =====================================================
// WORD OPERATIONS
// =====================================================

/**
 * Add a word to a deck
 */
export const addWord = async (deckId: string, word: WordData): Promise<boolean> => {
  try {
    const { error } = await supabase
      .from('words')
      .insert({
        id: word.id,
        deck_id: deckId,
        word: word.word,
        ipa: word.ipa,
        pos: word.pos,
        definition: word.definition,
        example: word.example,
      });

    if (error) throw error;
    return true;
  } catch (error) {
    console.error('Error adding word:', error);
    return false;
  }
};

/**
 * Delete a word
 */
export const deleteWord = async (wordId: string): Promise<boolean> => {
  try {
    const { error } = await supabase
      .from('words')
      .delete()
      .eq('id', wordId);

    if (error) throw error;
    return true;
  } catch (error) {
    console.error('Error deleting word:', error);
    return false;
  }
};

/**
 * Update a word
 */
export const updateWord = async (wordId: string, updates: Partial<WordData>): Promise<boolean> => {
  try {
    const { error } = await supabase
      .from('words')
      .update(updates)
      .eq('id', wordId);

    if (error) throw error;
    return true;
  } catch (error) {
    console.error('Error updating word:', error);
    return false;
  }
};

// =====================================================
// UTILITY FUNCTIONS
// =====================================================

/**
 * Check if Supabase is properly configured
 */
export const checkSupabaseConnection = async (): Promise<boolean> => {
  try {
    const { error } = await supabase.from('decks').select('count').limit(1);
    return !error;
  } catch (error) {
    console.error('Supabase connection error:', error);
    return false;
  }
};
