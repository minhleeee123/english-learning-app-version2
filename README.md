<div align="center">
<img width="1200" height="475" alt="GHBanner" src="https://github.com/user-attachments/assets/0aa67016-6eaf-458a-adb2-6e31a0763ed6" />

# 🎓 LexiFlow AI

> Master English vocabulary with AI-powered flashcards, quizzes, and contextual reading

[![TypeScript](https://img.shields.io/badge/TypeScript-007ACC?style=flat&logo=typescript&logoColor=white)](https://www.typescriptlang.org/)
[![React](https://img.shields.io/badge/React-20232A?style=flat&logo=react&logoColor=61DAFB)](https://reactjs.org/)
[![Supabase](https://img.shields.io/badge/Supabase-3ECF8E?style=flat&logo=supabase&logoColor=white)](https://supabase.com/)
[![Vite](https://img.shields.io/badge/Vite-646CFF?style=flat&logo=vite&logoColor=white)](https://vitejs.dev/)

[🚀 Live Demo](https://minhleeee123.github.io/english-learning-app-version2/) | [📖 Documentation](DEPLOYMENT.md)

</div>

---

## ✨ Features

| Feature | Description |
|---------|-------------|
| 📚 **Flashcard Mode** | Study vocabulary with AI-generated definitions in Vietnamese |
| 🧩 **Quiz Mode** | Test your knowledge with multiple-choice questions |
| 📖 **Reading Mode** | Learn words in context with AI-generated stories |
| 🤖 **AI-Powered** | Google Gemini generates definitions, examples, and reading content |
| 💾 **Cloud Storage** | Decks saved on Supabase PostgreSQL |
| 📱 **Responsive** | Works on desktop, tablet, and mobile |

---

## 🚀 Quick Start (5 minutes)

### 1️⃣ **Clone & Install**
```bash
git clone https://github.com/minhleeee123/english-learning-app-version2.git
cd english-learning-app-version2
npm install
```

### 2️⃣ **Setup Supabase Database**
1. Create account at [Supabase](https://supabase.com)
2. Create new project
3. Go to **SQL Editor** → Run `supabase-schema.sql`
4. Copy **Project URL** and **anon key** from Settings → API

### 3️⃣ **Configure Environment**
```bash
cp .env.example .env
```

Edit `.env`:
```env
VITE_SUPABASE_URL=your_project_url
VITE_SUPABASE_ANON_KEY=your_anon_key
VITE_GEMINI_API_KEY=your_gemini_key  # Optional
```

### 4️⃣ **Run**
```bash
npm run dev
```
Open http://localhost:3000

---

## 🌐 Live Demo

🔗 **Website:** https://minhleeee123.github.io/english-learning-app-version2/

---

## 📦 Deployment

### ✅ Vercel (Already deployed)
Your app is live on Vercel!

### ✅ GitHub Pages (Auto-deploy enabled)
Push to main branch → Auto deploy:
```bash
git push origin main
```

URL: `https://minhleeee123.github.io/english-learning-app-version2/`

---

## 📁 Project Structure

```
english-learning-app-version2/
├── src/                    # Source code
│   ├── components/         # React components
│   ├── services/           # API services  
│   ├── App.tsx            # Main app
│   ├── types.ts           # TypeScript types
│   └── constants.ts       # Constants
├── database/              # SQL schemas
├── .github/workflows/     # GitHub Actions
├── index.html             # Entry HTML
└── vite.config.ts         # Vite config
```

---

## 🏗️ Tech Stack

- **Frontend:** React 19 + TypeScript + Vite
- **Styling:** Tailwind CSS (CDN)
- **Database:** Supabase (PostgreSQL)
- **AI:** Google Gemini API
- **CI/CD:** GitHub Actions

---

## 📁 Project Structure

```
├── components/          # React components
│   ├── DeckBuilder.tsx
│   ├── FlashcardMode.tsx
│   ├── QuizMode.tsx
│   └── ReadingMode.tsx
├── services/           # API integrations
│   ├── gemini.ts       # Gemini AI
│   └── supabase.ts     # Supabase CRUD
├── App.tsx             # Main app
├── supabase-schema.sql # Database setup
└── .env.example        # Config template
```

---

## 🔑 Get API Keys

| Service | URL | Free Tier |
|---------|-----|-----------|
| **Supabase** | https://supabase.com | 500MB DB |
| **Gemini** | https://aistudio.google.com/app/apikey | 60 requests/min |

---

## 🛠️ Development

```bash
npm run dev      # Dev server
npm run build    # Production build
npm run preview  # Preview build
```

---

## 📝 License

MIT License - Free for personal and commercial use

---

<div align="center">

**Made with ❤️ by minhleeee123**

⭐ **Star this repo if you find it helpful!** ⭐

</div>
