# 🚀 DEPLOYMENT GUIDE - LexiFlow AI

## ✅ BƯỚC 1: SETUP SUPABASE DATABASE

### 1.1. Chạy SQL Script
1. Mở Supabase Dashboard: https://supabase.com/dashboard
2. Chọn project **qajkpwcxrnahlplgjbjk**
3. Vào **SQL Editor** (biểu tượng database bên trái)
4. Click **"New Query"**
5. Copy toàn bộ nội dung file `supabase-schema.sql`
6. Paste vào editor và click **"Run"**
7. ✅ Kiểm tra: Vào **Table Editor** → Bạn sẽ thấy 2 tables: `decks` và `words`

---

## ✅ BƯỚC 2: THÊM GEMINI API KEY (TÙY CHỌN)

Nếu bạn muốn sử dụng tính năng AI để generate định nghĩa từ:

1. Tạo Gemini API key tại: https://aistudio.google.com/app/apikey
2. Mở file `.env` trong project
3. Thêm API key vào dòng:
   ```
   VITE_GEMINI_API_KEY=your_api_key_here
   ```

> **Lưu ý**: Nếu không có Gemini API key, app vẫn chạy được nhưng tính năng tạo deck từ AI sẽ không hoạt động.

---

## ✅ BƯỚC 3: TEST LOCAL

Trước khi deploy, test xem mọi thứ hoạt động:

```bash
npm run dev
```

1. Mở browser tại http://localhost:5173
2. Kiểm tra xem có thấy "Essential Academic Words" deck không (từ database)
3. Thử tạo deck mới (nếu đã có Gemini API key)
4. Thử xóa deck
5. ✅ Nếu mọi thứ OK → Tiếp tục deploy

---

## ✅ BƯỚC 4: DEPLOY LÊN VERCEL (RECOMMENDED)

### 4.1. Chuẩn bị
```bash
# Commit code lên GitHub
git add .
git commit -m "Migrate to Supabase"
git push origin main
```

### 4.2. Deploy trên Vercel
1. Truy cập: https://vercel.com
2. Login bằng GitHub
3. Click **"Add New Project"**
4. Chọn repository: `english-learning-app-version2`
5. **Environment Variables** - Thêm 3 biến:
   ```
   VITE_SUPABASE_URL = https://qajkpwcxrnahlplgjbjk.supabase.co
   VITE_SUPABASE_ANON_KEY = eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFhamtwd2N4cm5haGxwbGdqYmprIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjY4MzI4MjQsImV4cCI6MjA4MjQwODgyNH0.f90BXhEZ0GghEyl_gey3jQmBuBKMwVQscMNNSiRoq3Q
   VITE_GEMINI_API_KEY = your_gemini_api_key_here
   ```
6. Click **"Deploy"**
7. ⏳ Chờ 2-3 phút...
8. ✅ Done! Vercel sẽ cho bạn URL: `https://your-app.vercel.app`

---

## ✅ BƯỚC 5: DEPLOY LÊN NETLIFY (ALTERNATIVE)

### 5.1. Chuẩn bị
```bash
# Build project
npm run build
```

### 5.2. Deploy manual
1. Truy cập: https://app.netlify.com
2. Kéo thả folder `dist` vào Netlify
3. Sau khi deploy, vào **Site settings** → **Environment variables**
4. Thêm 3 biến như Vercel
5. **Redeploy site**

### 5.3. Deploy tự động từ GitHub (Recommended)
1. Trên Netlify, click **"Add new site"** → **"Import from Git"**
2. Chọn repository GitHub
3. Build settings:
   - Build command: `npm run build`
   - Publish directory: `dist`
4. Thêm Environment Variables (như trên)
5. Deploy!

---

## ✅ BƯỚC 6: DEPLOY LÊN GITHUB PAGES (FREE, ĐƠN GIẢN NHẤT)

### 6.1. Cài đặt gh-pages
```bash
npm install --save-dev gh-pages
```

### 6.2. Update package.json
Thêm vào `package.json`:
```json
{
  "homepage": "https://your-github-username.github.io/english-learning-app-version2",
  "scripts": {
    "predeploy": "npm run build",
    "deploy": "gh-pages -d dist"
  }
}
```

### 6.3. Update vite.config.ts
Thêm `base`:
```typescript
export default defineConfig({
  base: '/english-learning-app-version2/',
  plugins: [react()],
})
```

### 6.4. Deploy
```bash
npm run deploy
```

### ⚠️ QUAN TRỌNG: Environment Variables trên GitHub Pages
GitHub Pages không hỗ trợ environment variables. Bạn có 2 lựa chọn:

**Option A: Hardcode (Not recommended)**
Thay thế trong `services/supabase.ts` và `services/gemini.ts`:
```typescript
const supabaseUrl = 'https://qajkpwcxrnahlplgjbjk.supabase.co';
const supabaseAnonKey = 'eyJhbGci...';
```

**Option B: Dùng Vercel hoặc Netlify** (Recommended)

---

## 📊 SO SÁNH CÁC NỀN TẢNG

| Feature | Vercel | Netlify | GitHub Pages |
|---------|--------|---------|--------------|
| **Env Variables** | ✅ Có | ✅ Có | ❌ Không |
| **Custom Domain** | ✅ Free | ✅ Free | ✅ Free |
| **Auto Deploy** | ✅ Có | ✅ Có | ✅ Có (với gh-pages) |
| **Build Time** | ⚡ Nhanh | ⚡ Nhanh | 🐌 Chậm |
| **CDN** | ✅ Global | ✅ Global | ✅ GitHub CDN |
| **Recommended** | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ |

---

## 🎯 KHUYẾN NGHỊ

**Tốt nhất: VERCEL**
- Hỗ trợ environment variables
- Auto deploy từ GitHub
- CDN toàn cầu
- Free tier hào phóng

**Lệnh deploy nhanh:**
```bash
# 1. Push code
git add .
git commit -m "Deploy to production"
git push

# 2. Deploy trên Vercel (lần đầu)
npx vercel

# 3. Các lần sau
npx vercel --prod
```

---

## 🔒 BẢO MẬT API KEY

**⚠️ CẢNH BÁO**: Với Option A hiện tại, Gemini API key sẽ **BỊ LỘ** trong browser.

**Để bảo mật 100%**, bạn cần:
1. Tạo Vercel/Netlify Serverless Functions
2. Gọi Gemini từ server-side
3. Hoặc dùng Supabase Edge Functions

> Nếu cần, tôi có thể giúp bạn implement bảo mật API key sau!

---

## ✅ CHECKLIST TRƯỚC KHI DEPLOY

- [ ] Đã chạy SQL script trên Supabase
- [ ] Đã test local (`npm run dev`)
- [ ] Đã commit code lên GitHub
- [ ] Đã thêm environment variables
- [ ] Đã kiểm tra file `.gitignore` (không commit `.env`)

---

## 🆘 TROUBLESHOOTING

### Lỗi: "Missing Supabase configuration"
→ Kiểm tra environment variables trên Vercel/Netlify

### Lỗi: "Failed to fetch decks"
→ Kiểm tra xem đã chạy SQL script chưa

### Lỗi: "Gemini API key not configured"
→ Thêm `VITE_GEMINI_API_KEY` vào `.env` hoặc bỏ qua nếu không dùng AI

### App không load được
→ Kiểm tra Console (F12) trong browser để xem lỗi chi tiết

---

## 📞 HỖ TRỢ

Nếu gặp lỗi, hãy cung cấp:
1. Screenshot lỗi
2. Console log (F12 → Console)
3. Platform đang deploy (Vercel/Netlify/GitHub Pages)

---

**🎉 CHÚC MỪNG! Bạn đã sẵn sàng deploy app của mình!**
