<div align="center">
<img width="1200" height="475" alt="GHBanner" src="https://github.com/user-attachments/assets/0aa67016-6eaf-458a-adb2-6e31a0763ed6" />
</div>

# LexiFlow AI - English Learning App

> Master English vocabulary with AI-powered context generation

![TypeScript](https://img.shields.io/badge/TypeScript-007ACC?style=flat&logo=typescript&logoColor=white)
![React](https://img.shields.io/badge/React-20232A?style=flat&logo=react&logoColor=61DAFB)
![Vite](https://img.shields.io/badge/Vite-646CFF?style=flat&logo=vite&logoColor=white)
![Supabase](https://img.shields.io/badge/Supabase-3ECF8E?style=flat&logo=supabase&logoColor=white)

## ✨ Features

- 📚 **Flashcard Mode**: Study vocabulary with AI-generated definitions
- 🧩 **Quiz Mode**: Test your knowledge with interactive quizzes
- 📖 **Reading Mode**: Learn words in context with AI-generated stories
- 🤖 **AI-Powered**: Uses Google Gemini to generate definitions and examples
- 💾 **Cloud Database**: Store your decks on Supabase
- 🎨 **Beautiful UI**: Modern, responsive design with Tailwind CSS

## 🚀 Quick Start

### Prerequisites
- Node.js 18+ 
- npm or yarn
- Supabase account (free)
- Google Gemini API key (free)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/english-learning-app-version2.git
   cd english-learning-app-version2
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Setup environment variables**
   
   Copy `.env.example` to `.env`:
   ```bash
   cp .env.example .env
   ```
   
   Then fill in your credentials:
   ```env
   VITE_SUPABASE_URL=your_supabase_url
   VITE_SUPABASE_ANON_KEY=your_supabase_anon_key
   VITE_GEMINI_API_KEY=your_gemini_api_key
   ```

4. **Setup Supabase database**
   
   Run the SQL script in `supabase-schema.sql` in your Supabase SQL Editor

5. **Run the app**
   ```bash
   npm run dev
   ```

   Open http://localhost:3000 in your browser

## 📦 Deployment

See [DEPLOYMENT.md](DEPLOYMENT.md) for detailed deployment instructions for:
- ✅ Vercel (Recommended)
- ✅ Netlify
- ✅ GitHub Pages

## 🏗️ Tech Stack

- **Frontend**: React 19 + TypeScript
- **Build Tool**: Vite 6
- **Styling**: Tailwind CSS (via CDN)
- **Database**: Supabase (PostgreSQL)
- **AI**: Google Gemini API
- **Deployment**: Vercel/Netlify

## 📁 Project Structure

```
english-learning-app-version2/
├── components/          # React components
│   ├── DeckBuilder.tsx
│   ├── FlashcardMode.tsx
│   ├── QuizMode.tsx
│   └── ReadingMode.tsx
├── services/           # API services
│   ├── gemini.ts      # Gemini AI integration
│   └── supabase.ts    # Supabase client & CRUD
├── App.tsx            # Main app component
├── types.ts           # TypeScript definitions
├── constants.ts       # App constants
├── supabase-schema.sql # Database schema
├── DEPLOYMENT.md      # Deployment guide
└── .env.example       # Environment variables template
```

## 🔑 Getting API Keys

### Supabase
1. Go to https://supabase.com
2. Create a new project
3. Go to Settings → API
4. Copy the Project URL and anon/public key

### Google Gemini
1. Go to https://aistudio.google.com/app/apikey
2. Click "Create API Key"
3. Copy the key

## 🛠️ Development

```bash
# Install dependencies
npm install

# Run development server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview
```

## 📝 License

MIT License - feel free to use this project for learning purposes!

## 🤝 Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

## 📧 Contact

Created by [Your Name] - [Your Email]

---

**⭐ If you find this useful, please give it a star!**
