# 🔥 QUICK SETUP - 5 PHÚT

## BƯỚC 1: SETUP SUPABASE DATABASE (2 phút)

1. **Mở Supabase SQL Editor**
   - Truy cập: https://supabase.com/dashboard/project/qajkpwcxrnahlplgjbjk/sql
   
2. **Chạy SQL Script**
   - Click **"New Query"**
   - Copy toàn bộ code trong file `supabase-schema.sql`
   - Paste vào editor
   - Click **"Run"** (hoặc Ctrl+Enter)
   - ✅ Thành công khi thấy "Success. No rows returned"

3. **Kiểm tra**
   - Vào **Table Editor** (icon bảng bên trái)
   - Bạn sẽ thấy 2 tables: **decks** và **words**
   - Table **decks** đã có 1 row: "Essential Academic Words"
   - Table **words** đã có 10 rows (vocabulary)

---

## BƯỚC 2: THÊM GEMINI API KEY (1 phút) - TÙY CHỌN

> **Chú ý**: Bạn có thể bỏ qua bước này và thêm sau. App vẫn chạy được!

1. Tạo API key tại: https://aistudio.google.com/app/apikey
2. Mở file `.env` trong project
3. Thêm key vào:
   ```
   VITE_GEMINI_API_KEY=your_key_here
   ```

---

## BƯỚC 3: TEST LOCAL (2 phút)

```bash
# 1. Cài dependencies (nếu chưa cài)
npm install

# 2. Chạy app
npm run dev
```

Mở http://localhost:3000

**Kiểm tra:**
- ✅ Thấy deck "Essential Academic Words" với 10 từ
- ✅ Click vào deck và chọn "Study Flashcards"
- ✅ Thử tạo deck mới (nếu đã có Gemini API key)

---

## BƯỚC 4: DEPLOY (CHỌN 1 TRONG 3)

### ⚡ Option A: VERCEL (Khuyến nghị - Nhanh nhất)

```bash
# 1. Push lên GitHub
git add .
git commit -m "Deploy to Vercel"
git push

# 2. Deploy
npx vercel
```

Hoặc:
1. Vào https://vercel.com
2. Click "Add New Project"
3. Chọn repo GitHub
4. Thêm Environment Variables:
   - `VITE_SUPABASE_URL`
   - `VITE_SUPABASE_ANON_KEY`
   - `VITE_GEMINI_API_KEY`
5. Deploy!

### 🚀 Option B: NETLIFY

1. Build: `npm run build`
2. Vào https://app.netlify.com
3. Kéo thả folder `dist`
4. Thêm Environment Variables trong Settings

### 📦 Option C: GITHUB PAGES

```bash
# 1. Cài gh-pages
npm install --save-dev gh-pages

# 2. Thêm vào package.json
{
  "homepage": "https://your-username.github.io/english-learning-app-version2",
  "scripts": {
    "deploy": "gh-pages -d dist"
  }
}

# 3. Deploy
npm run build
npm run deploy
```

---

## ⚠️ GẶP LỖI?

### Lỗi: "Missing Supabase configuration"
→ Kiểm tra file `.env` hoặc Environment Variables trên Vercel/Netlify

### Lỗi: "Failed to fetch decks"
→ Kiểm tra xem đã chạy SQL script trên Supabase chưa

### App hiển thị trống
→ Mở F12 Console để xem lỗi chi tiết

---

## 📚 TÀI LIỆU CHI TIẾT

Xem [DEPLOYMENT.md](DEPLOYMENT.md) để biết thêm chi tiết về:
- Cấu hình nâng cao
- Bảo mật API key
- Troubleshooting
- So sánh các nền tảng deploy

---

**🎉 DONE! App của bạn đã sẵn sàng!**
