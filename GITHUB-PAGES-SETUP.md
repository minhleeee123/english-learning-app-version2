# 🚀 GITHUB PAGES DEPLOYMENT GUIDE

## 📋 SETUP TRONG 5 PHÚT

### ✅ Bước 1: Đã hoàn thành
- ✅ GitHub Actions workflow đã được tạo (`.github/workflows/deploy.yml`)
- ✅ Vite config đã được update với base path
- ✅ Sẵn sàng deploy!

---

## 🔑 Bước 2: Setup GitHub Secrets (QUAN TRỌNG!)

### 2.1. Vào Repository Settings
```
1. Mở repo: https://github.com/YOUR-USERNAME/english-learning-app-version2
2. Click "Settings" (tab trên cùng)
3. Sidebar trái → "Secrets and variables" → "Actions"
4. Click "New repository secret"
```

### 2.2. Thêm 3 Secrets sau:

#### Secret 1: VITE_SUPABASE_URL
```
Name: VITE_SUPABASE_URL
Value: https://qajkpwcxrnahlplgjbjk.supabase.co
```

#### Secret 2: VITE_SUPABASE_ANON_KEY
```
Name: VITE_SUPABASE_ANON_KEY
Value: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFhamtwd2N4cm5haGxwbGdqYmprIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjY4MzI4MjQsImV4cCI6MjA4MjQwODgyNH0.f90BXhEZ0GghEyl_gey3jQmBuBKMwVQscMNNSiRoq3Q
```

#### Secret 3: VITE_GEMINI_API_KEY (Nếu có)
```
Name: VITE_GEMINI_API_KEY
Value: your_gemini_api_key_here
```

---

## 🔧 Bước 3: Enable GitHub Pages

```
1. Vẫn trong Settings
2. Sidebar trái → "Pages"
3. Source → Chọn "GitHub Actions"
4. Save (nếu có nút)
```

---

## 📦 Bước 4: Push Code & Deploy

```bash
# Kiểm tra xem có thay đổi gì không
git status

# Add tất cả files mới
git add .

# Commit với message rõ ràng
git commit -m "Setup GitHub Pages deployment with Actions"

# Push lên GitHub
git push origin main
```

### ✨ **Điều kỳ diệu xảy ra:**
1. GitHub Actions tự động chạy
2. Build project với environment variables từ Secrets
3. Deploy lên GitHub Pages
4. ⏳ Chờ 2-3 phút...

---

## 🌐 Bước 5: Truy cập Website

URL của bạn sẽ là:
```
https://YOUR-USERNAME.github.io/english-learning-app-version2/
```

**Ví dụ:**
- Nếu username GitHub của bạn là `johndoe`
- URL sẽ là: `https://johndoe.github.io/english-learning-app-version2/`

---

## 📊 Theo dõi Deployment

### Cách 1: GitHub Actions Tab
```
1. Vào repo GitHub
2. Click tab "Actions" (trên cùng)
3. Xem workflow "Deploy to GitHub Pages"
4. Màu xanh = Success ✅
5. Màu đỏ = Failed ❌
```

### Cách 2: Commit History
- Mỗi commit sẽ có dấu ✅ hoặc ❌ bên cạnh

---

## 🔄 Auto Deploy

**Từ giờ, mỗi khi bạn push code:**
```bash
git add .
git commit -m "Update feature"
git push
```

→ GitHub Actions **TỰ ĐỘNG** build và deploy! 🎉

---

## ⚠️ TROUBLESHOOTING

### Lỗi: Build Failed (404 Error)
**Nguyên nhân:** Chưa thêm Secrets

**Giải pháp:**
1. Kiểm tra lại Secrets trong Settings
2. Đảm bảo tên secrets **CHÍNH XÁC** (viết hoa đúng)
3. Re-run workflow trong Actions tab

### Lỗi: Page Not Found (404) khi vào URL
**Nguyên nhân:** Base path sai

**Giải pháp:**
Kiểm tra `vite.config.ts`:
```typescript
base: '/english-learning-app-version2/', // Phải khớp với tên repo
```

### Lỗi: Assets không load (CSS/JS)
**Nguyên nhân:** Base path không đúng

**Giải pháp:** Xem console (F12) và sửa base path

### Lỗi: "Missing Supabase configuration"
**Nguyên nhân:** Secrets chưa được thêm hoặc sai tên

**Giải pháp:**
- Kiểm tra tên secrets: `VITE_SUPABASE_URL`, `VITE_SUPABASE_ANON_KEY`
- Đảm bảo có prefix `VITE_`

---

## 🎯 CHECKLIST HOÀN CHỈNH

- [ ] File `.github/workflows/deploy.yml` đã có
- [ ] Vite config có `base: '/english-learning-app-version2/'`
- [ ] Đã thêm 3 Secrets trong GitHub Settings
- [ ] GitHub Pages đã enable với source "GitHub Actions"
- [ ] Đã push code lên GitHub
- [ ] Workflow chạy thành công (màu xanh trong Actions)
- [ ] Website hoạt động tại URL GitHub Pages

---

## 🔥 ƯU ĐIỂM GITHUB PAGES + ACTIONS

### ✅ So với deployment thủ công:
- 🤖 **Tự động hoàn toàn**: Push là deploy
- 🚀 **Nhanh**: ~2-3 phút mỗi deploy
- 🔒 **Bảo mật**: Secrets được mã hóa
- 📝 **History**: Xem được tất cả deployments
- 🔄 **Rollback dễ dàng**: Revert commit = rollback
- 💰 **Miễn phí 100%**: GitHub Actions có 2000 phút/tháng free

### ✅ So với gh-pages package:
- ⚡ **Hiện đại hơn**: Dùng GitHub Actions native
- 🛠️ **Linh hoạt hơn**: Customize workflow dễ dàng
- 🔐 **An toàn hơn**: Environment variables được bảo vệ

---

## 🎨 CUSTOM DOMAIN (BONUS)

Nếu muốn dùng domain riêng (ví dụ: `lexiflow.com`):

1. **Mua domain** (Namecheap, GoDaddy, etc.)
2. **Settings → Pages → Custom domain**
3. Nhập domain của bạn
4. **Update DNS records** theo hướng dẫn GitHub
5. ✅ Done!

---

## 📞 SUPPORT

Nếu gặp lỗi:
1. Check **Actions tab** → Xem log chi tiết
2. Check **Browser Console** (F12) → Xem client errors
3. Đảm bảo Secrets đã thêm đúng
4. Thử re-run workflow

---

## 🚀 NEXT STEPS

Sau khi deploy thành công:

1. **Share link** với bạn bè
2. **Custom domain** (nếu muốn)
3. **Add Google Analytics** (track visitors)
4. **Setup PWA** (Progressive Web App)
5. **Add more features!**

---

**🎉 CHÚC MỪNG! Bạn đã có website production-ready trên GitHub Pages!**

Website của bạn: `https://YOUR-USERNAME.github.io/english-learning-app-version2/`
