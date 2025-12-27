# 🚀 GITHUB PAGES - QUICK COMMANDS

## 📌 TÓM TẮT 3 BƯỚC

### 1️⃣ THÊM SECRETS (1 lần duy nhất)
```
Vào: https://github.com/YOUR-USERNAME/english-learning-app-version2/settings/secrets/actions

Thêm 3 secrets:
✅ VITE_SUPABASE_URL
✅ VITE_SUPABASE_ANON_KEY  
✅ VITE_GEMINI_API_KEY
```

### 2️⃣ ENABLE GITHUB PAGES (1 lần duy nhất)
```
Vào: https://github.com/YOUR-USERNAME/english-learning-app-version2/settings/pages

Source → Chọn: "GitHub Actions"
```

### 3️⃣ PUSH CODE
```bash
git add .
git commit -m "Setup GitHub Pages with Actions"
git push origin main
```

---

## ⚡ MỖI LẦN UPDATE CODE

```bash
# Quick deploy
git add .
git commit -m "Your update message"
git push

# GitHub Actions tự động build & deploy! 🎉
```

---

## 🌐 URL WEBSITE CỦA BẠN

```
https://YOUR-USERNAME.github.io/english-learning-app-version2/
```

**Thay YOUR-USERNAME bằng username GitHub của bạn!**

---

## 📊 CHECK STATUS

```
Vào: https://github.com/YOUR-USERNAME/english-learning-app-version2/actions

✅ Màu xanh = Success
❌ Màu đỏ = Failed (click vào xem log)
⏳ Vàng = Building...
```

---

## 🆘 LỖI THƯỜNG GẶP

### "Missing Supabase configuration"
→ Chưa thêm Secrets hoặc tên sai

### 404 Not Found
→ Sai base path trong vite.config.ts

### Assets không load
→ Check base path và F12 Console

---

## 📖 CHI TIẾT

Xem file: [GITHUB-PAGES-SETUP.md](GITHUB-PAGES-SETUP.md)

---

**Done! Push code là tự động deploy! 🚀**
