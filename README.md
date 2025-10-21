# MeetFlow — Video Calling App (Next.js + TypeScript + MongoDB)

MeetFlow is a modern video conferencing app powered by ZegoCloud with OTP email verification, password reset, and a clean, responsive UI built with Next.js and TypeScript.

## Preview Screenshots

Screenshots are located in `public/screenshots/` and embedded below:

<div>

<img src="/screenshots/Screenshot1.png" alt="Home Screen" width="800" />
<img src="/screenshots/Screenshot2.png" alt="Registration with OTP" width="800" />

<img src="/screenshots/Screenshot3.png" alt="Login & Password Reset" width="800" />
<img src="/screenshots/Screenshot4.png" alt="Video Meeting Interface" width="800" />

</div>

---

## Features

- 🔐 **Authentication** (JWT + httpOnly cookies)
- 📧 **OTP Email Verification** for secure registration
- 🔄 **Password Reset** with OTP verification
- 📹 **Video meetings** via ZegoCloud UIKit Prebuilt
- 🧭 **Protected meeting routes**; create/join by ID or link
- 🧼 **Auto-cleanup** on leave/back to avoid ghost sessions
- 🧪 **Client-side validation** on register (name, email, password)
- 👁️ **Password visibility toggles** for better UX
- 📱 **Responsive design** for mobile and desktop
- 🎨 **Modern UI** with Tailwind CSS and gradients

## Tech Stack

- **Frontend**: Next.js 15, React 19, TypeScript, Tailwind CSS
- **Backend**: Next.js API Routes, Node.js
- **Auth**: JWT (httpOnly cookies), bcrypt, OTP verification
- **Email**: Nodemailer with Gmail SMTP
- **DB**: MongoDB with Mongoose ODM
- **Video**: ZegoCloud UIKit Prebuilt
- **Deployment**: Vercel-ready

---

## Project Structure

```bash
video-calling-app-nextjs/
├─ public/
│  ├─ screenshots/
│  │  ├─ Screenshot1.png
│  │  ├─ Screenshot2.png
│  │  ├─ Screenshot3.png
│  │  └─ Screenshot4.png
│  ├─ favicon/
│  │  ├─ favicon.ico
│  │  ├─ favicon-16x16.png
│  │  ├─ favicon-32x32.png
│  │  ├─ apple-touch-icon.png
│  │  ├─ android-chrome-192x192.png
│  │  ├─ android-chrome-512x512.png
│  │  └─ site.webmanifest
│  └─ videocall.svg
├─ src/
│  ├─ app/
│  │  ├─ api/
│  │  │  └─ auth/
│  │  │     ├─ login/route.ts
│  │  │     ├─ register/route.ts
│  │  │     ├─ send-otp/route.ts
│  │  │     ├─ verify-otp/route.ts
│  │  │     ├─ reset-password/route.ts
│  │  │     ├─ logout/route.ts
│  │  │     └─ me/route.ts
│  │  ├─ login/page.tsx
│  │  ├─ register/page.tsx
│  │  ├─ meeting/[roomID]/page.tsx
│  │  ├─ globals.css
│  │  ├─ layout.tsx
│  │  └─ page.tsx
│  ├─ components/
│  │  ├─ HomeScreen.tsx
│  │  ├─ Login.tsx
│  │  ├─ Register.tsx
│  │  ├─ MeetingRoom.tsx
│  │  └─ ProtectedRoute.tsx
│  ├─ contexts/
│  │  └─ AuthContext.tsx
│  ├─ lib/
│  │  ├─ mongodb.ts
│  │  └─ email.ts
│  └─ models/
│     ├─ User.ts
│     └─ OTP.ts
├─ package.json
├─ next.config.ts
├─ tailwind.config.js
├─ tsconfig.json
└─ README.md
```

---

## Setup (Development)

1) Install dependencies
```bash
npm install
```

2) Create `.env.local` in project root
```env
# Database
MONGODB_URI=mongodb://localhost:27017/videocall

# JWT Authentication
JWT_SECRET=your-super-secret-jwt-key-change-this-in-production

# Email Service (Gmail)
EMAIL_USER=your-email@gmail.com
EMAIL_PASS=your-gmail-app-password

# ZegoCloud Video SDK
NEXT_PUBLIC_ZEGO_APP_ID=your-zego-app-id
NEXT_PUBLIC_ZEGO_SERVER_SECRET=your-zego-server-secret
```

3) Start development server
```bash
npm run dev
```

Open http://localhost:3000

---

## Deployment (Vercel Recommended)

Environment variables for production:
```env
MONGODB_URI=your-mongodb-atlas-connection-string
JWT_SECRET=your-production-jwt-secret
EMAIL_USER=your-production-email@gmail.com
EMAIL_PASS=your-production-gmail-app-password
NEXT_PUBLIC_ZEGO_APP_ID=your-zego-app-id
NEXT_PUBLIC_ZEGO_SERVER_SECRET=your-zego-server-secret
```

Deploy to Vercel:
```bash
npm run build
# Push to GitHub and connect to Vercel
```

---

## API Endpoints

- `POST /api/auth/register` - User registration
- `POST /api/auth/login` - User login
- `POST /api/auth/logout` - User logout
- `GET /api/auth/me` - Get current user
- `POST /api/auth/send-otp` - Send OTP to email
- `POST /api/auth/verify-otp` - Verify OTP code
- `POST /api/auth/reset-password` - Reset password
- `GET /api/health` - Health check

---

## Notes

- **OTP Expiration**: Verification codes expire in 10 minutes
- **Email Service**: Configure Gmail app password for email sending
- **Meeting Cleanup**: Automatic session cleanup on page leave
- **Password Security**: bcrypt hashing with salt rounds
- **Mobile Responsive**: Optimized for all screen sizes
- **PWA Support**: Progressive Web App capabilities

---

## Scripts

```bash
npm run dev          # Start development server
npm run build        # Build for production
npm run start        # Start production server
npm run lint         # Run ESLint
npm run type-check   # Run TypeScript type checking
```

---

## Credits

Made with ❤️ by [Shiba Prasad](https://www.linkedin.com/in/theshibaprasad/)