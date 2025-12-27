import React, { useState, useEffect } from 'react';
import { Deck, AppMode } from './types';
import { SYSTEM_DECK, Icons } from './constants';
import DeckBuilder from './components/DeckBuilder';
import FlashcardMode from './components/FlashcardMode';
import QuizMode from './components/QuizMode';
import ReadingMode from './components/ReadingMode';

const STORAGE_KEY = 'lexiflow_decks_v1';

const App: React.FC = () => {
  const [mode, setMode] = useState<AppMode>(AppMode.DASHBOARD);
  
  // Initialize state from LocalStorage (Database simulation)
  const [decks, setDecks] = useState<Deck[]>(() => {
    try {
      const savedData = localStorage.getItem(STORAGE_KEY);
      if (savedData) {
        const parsedDecks = JSON.parse(savedData);
        // Ensure SYSTEM_DECK is always available/updated or handle migration if needed
        // For now, if we have saved data, return it.
        return parsedDecks;
      }
    } catch (error) {
      console.error("Failed to load data from storage:", error);
    }
    // Default fallback
    return [SYSTEM_DECK];
  });

  const [selectedDeckId, setSelectedDeckId] = useState<string | null>(null);

  // Save to LocalStorage whenever 'decks' state changes
  useEffect(() => {
    localStorage.setItem(STORAGE_KEY, JSON.stringify(decks));
  }, [decks]);

  const activeDeck = decks.find((d) => d.id === selectedDeckId);

  const handleCreateDeck = (newDeck: Deck) => {
    setDecks((prev) => [...prev, newDeck]);
    setMode(AppMode.DASHBOARD);
  };

  const handleDeleteDeck = (e: React.MouseEvent, deckId: string) => {
    e.stopPropagation();
    if (window.confirm("Are you sure you want to delete this deck?")) {
      setDecks((prev) => prev.filter(d => d.id !== deckId));
    }
  };

  const startSession = (deckId: string, targetMode: AppMode) => {
    setSelectedDeckId(deckId);
    setMode(targetMode);
  };

  // Render Dashboard
  const renderDashboard = () => (
    <div className="max-w-5xl mx-auto p-6">
      <header className="mb-10 text-center">
        <h1 className="text-4xl font-extrabold text-slate-900 mb-2 tracking-tight">LexiFlow AI</h1>
        <p className="text-slate-500">Master English vocabulary with generative context.</p>
      </header>

      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        {/* Create New Deck Card */}
        <button
          onClick={() => setMode(AppMode.DECK_BUILDER)}
          className="group flex flex-col items-center justify-center p-8 bg-white border-2 border-dashed border-slate-300 rounded-2xl hover:border-indigo-500 hover:bg-indigo-50 transition-all duration-300 min-h-[250px]"
        >
          <div className="w-12 h-12 bg-indigo-100 text-indigo-600 rounded-full flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
            <Icons.Plus />
          </div>
          <h3 className="font-semibold text-slate-900">Create New Deck</h3>
          <p className="text-sm text-slate-500 mt-2 text-center">Import words & use AI to generate definitions</p>
        </button>

        {/* Render Existing Decks */}
        {decks.map((deck) => (
          <div key={deck.id} className="bg-white rounded-2xl p-6 shadow-sm border border-slate-200 flex flex-col justify-between hover:shadow-md transition-shadow min-h-[250px] relative group">
            
            {/* Delete Button (Only for custom decks) */}
            {!deck.isSystem && (
              <button 
                onClick={(e) => handleDeleteDeck(e, deck.id)}
                className="absolute top-4 right-4 text-slate-300 hover:text-red-500 opacity-0 group-hover:opacity-100 transition-opacity p-1"
                title="Delete Deck"
              >
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth={1.5} stroke="currentColor" className="w-5 h-5">
                  <path strokeLinecap="round" strokeLinejoin="round" d="M14.74 9l-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 01-2.244 2.077H8.084a2.25 2.25 0 01-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 00-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 013.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 00-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 00-7.5 0" />
                </svg>
              </button>
            )}

            <div>
              <div className="flex justify-between items-start mb-4">
                <span className={`px-2 py-1 rounded text-xs font-bold uppercase tracking-wide ${deck.isSystem ? 'bg-amber-100 text-amber-700' : 'bg-slate-100 text-slate-600'}`}>
                  {deck.isSystem ? 'System Deck' : 'Custom Deck'}
                </span>
                <span className="text-slate-400 text-xs font-mono">{deck.words.length} words</span>
              </div>
              <h3 className="text-xl font-bold text-slate-800 mb-2 pr-6">{deck.name}</h3>
              <p className="text-sm text-slate-500 line-clamp-2">
                Contains: {deck.words.slice(0, 3).map(w => w.word).join(', ')}...
              </p>
            </div>

            <div className="mt-6 flex flex-col gap-2">
              <button
                onClick={() => startSession(deck.id, AppMode.FLASHCARDS)}
                className="w-full py-2 bg-slate-900 text-white rounded-lg font-medium text-sm hover:bg-slate-800 transition-colors flex items-center justify-center gap-2"
              >
                <Icons.Cards />
                Study Flashcards
              </button>
              <div className="grid grid-cols-2 gap-2">
                <button
                  onClick={() => startSession(deck.id, AppMode.QUIZ)}
                  className="py-2 bg-white border border-slate-200 text-slate-700 rounded-lg font-medium text-sm hover:bg-slate-50 transition-colors flex items-center justify-center gap-2"
                >
                  <Icons.Puzzle /> Quiz
                </button>
                <button
                  onClick={() => startSession(deck.id, AppMode.READING)}
                  className="py-2 bg-indigo-50 border border-indigo-100 text-indigo-700 rounded-lg font-medium text-sm hover:bg-indigo-100 transition-colors flex items-center justify-center gap-2"
                >
                  <Icons.BookOpen /> Reading
                </button>
              </div>
            </div>
          </div>
        ))}
      </div>
    </div>
  );

  return (
    <div className="min-h-screen bg-slate-50 font-sans text-slate-900">
      <main className="py-8">
        {mode === AppMode.DASHBOARD && renderDashboard()}
        
        {mode === AppMode.DECK_BUILDER && (
          <DeckBuilder 
            onDeckCreated={handleCreateDeck} 
            onCancel={() => setMode(AppMode.DASHBOARD)} 
          />
        )}

        {mode === AppMode.FLASHCARDS && activeDeck && (
          <FlashcardMode 
            words={activeDeck.words} 
            onExit={() => setMode(AppMode.DASHBOARD)} 
          />
        )}

        {mode === AppMode.QUIZ && activeDeck && (
          <QuizMode 
            words={activeDeck.words} 
            onExit={() => setMode(AppMode.DASHBOARD)} 
          />
        )}

        {mode === AppMode.READING && activeDeck && (
          <ReadingMode 
            words={activeDeck.words} 
            onExit={() => setMode(AppMode.DASHBOARD)} 
          />
        )}
      </main>
    </div>
  );
};

export default App;