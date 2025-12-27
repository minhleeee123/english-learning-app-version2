-- =====================================================
-- LexiFlow AI - Supabase Database Schema
-- =====================================================
-- Run this in Supabase SQL Editor to create tables
-- =====================================================

-- 1. Create decks table
CREATE TABLE IF NOT EXISTS decks (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL,
  is_system BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 2. Create words table
CREATE TABLE IF NOT EXISTS words (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  deck_id UUID NOT NULL REFERENCES decks(id) ON DELETE CASCADE,
  word TEXT NOT NULL,
  ipa TEXT NOT NULL,
  pos TEXT NOT NULL, -- Part of Speech
  definition TEXT NOT NULL,
  example TEXT NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 3. Create indexes for better query performance
CREATE INDEX IF NOT EXISTS idx_words_deck_id ON words(deck_id);
CREATE INDEX IF NOT EXISTS idx_words_word ON words(word);
CREATE INDEX IF NOT EXISTS idx_decks_is_system ON decks(is_system);

-- 4. Enable Row Level Security (RLS)
ALTER TABLE decks ENABLE ROW LEVEL SECURITY;
ALTER TABLE words ENABLE ROW LEVEL SECURITY;

-- 5. Create policies for public access (since we're not using auth yet)
-- Allow everyone to read all decks
CREATE POLICY "Allow public read access to decks"
  ON decks FOR SELECT
  USING (true);

-- Allow everyone to insert, update, delete decks
CREATE POLICY "Allow public insert access to decks"
  ON decks FOR INSERT
  WITH CHECK (true);

CREATE POLICY "Allow public update access to decks"
  ON decks FOR UPDATE
  USING (true);

CREATE POLICY "Allow public delete access to decks"
  ON decks FOR DELETE
  USING (true);

-- Allow everyone to read all words
CREATE POLICY "Allow public read access to words"
  ON words FOR SELECT
  USING (true);

-- Allow everyone to insert, update, delete words
CREATE POLICY "Allow public insert access to words"
  ON words FOR INSERT
  WITH CHECK (true);

CREATE POLICY "Allow public update access to words"
  ON words FOR UPDATE
  USING (true);

CREATE POLICY "Allow public delete access to words"
  ON words FOR DELETE
  USING (true);

-- 6. Insert default system deck (Essential Academic Words)
INSERT INTO decks (id, name, is_system)
VALUES ('00000000-0000-0000-0000-000000000001', 'Essential Academic Words', true)
ON CONFLICT (id) DO NOTHING;

-- 7. Insert default system words
INSERT INTO words (deck_id, word, ipa, pos, definition, example) VALUES
('00000000-0000-0000-0000-000000000001', 'analyze', '/ˈæn.ə.laɪz/', 'verb', 'Phân tích, xem xét chi tiết', 'Scientists analyze data to find patterns.'),
('00000000-0000-0000-0000-000000000001', 'approach', '/əˈproʊtʃ/', 'noun/verb', 'Phương pháp tiếp cận; đến gần', 'We need a different approach to solve this problem.'),
('00000000-0000-0000-0000-000000000001', 'concept', '/ˈkɑːn.sept/', 'noun', 'Khái niệm, ý tưởng', 'The concept of time is difficult to explain.'),
('00000000-0000-0000-0000-000000000001', 'constitute', '/ˈkɑːn.stə.tuːt/', 'verb', 'Tạo nên, cấu thành', 'Women constitute 40% of the workforce.'),
('00000000-0000-0000-0000-000000000001', 'context', '/ˈkɑːn.tekst/', 'noun', 'Bối cảnh, ngữ cảnh', 'To understand the meaning, you need to know the context.'),
('00000000-0000-0000-0000-000000000001', 'derive', '/dɪˈraɪv/', 'verb', 'Bắt nguồn từ, suy ra', 'The word "television" derives from Greek and Latin.'),
('00000000-0000-0000-0000-000000000001', 'establish', '/ɪˈstæb.lɪʃ/', 'verb', 'Thiết lập, thành lập', 'The company was established in 1995.'),
('00000000-0000-0000-0000-000000000001', 'evidence', '/ˈev.ɪ.dəns/', 'noun', 'Bằng chứng, chứng cứ', 'There is no evidence to support that theory.'),
('00000000-0000-0000-0000-000000000001', 'function', '/ˈfʌŋk.ʃən/', 'noun/verb', 'Chức năng; hoạt động', 'The function of the heart is to pump blood.'),
('00000000-0000-0000-0000-000000000001', 'identify', '/aɪˈden.t̬ə.faɪ/', 'verb', 'Xác định, nhận dạng', 'Can you identify the person in this photo?')
ON CONFLICT DO NOTHING;

-- =====================================================
-- DONE! Your database is ready.
-- Copy this entire script and run it in:
-- Supabase Dashboard > SQL Editor > New Query
-- =====================================================
