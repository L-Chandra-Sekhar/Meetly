# MeetFlow - Video Conferencing App

<div align="center">
  <img src="/videocall.svg" alt="MeetFlow Logo" width="200" height="150">
  
  [![Next.js](https://img.shields.io/badge/Next.js-15-black)](https://nextjs.org/)
  [![TypeScript](https://img.shields.io/badge/TypeScript-5-blue)](https://www.typescriptlang.org/)
  [![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-4-38B2AC)](https://tailwindcss.com/)
  [![MongoDB](https://img.shields.io/badge/MongoDB-8-47A248)](https://www.mongodb.com/)
  [![ZEGOCLOUD](https://img.shields.io/badge/ZEGOCLOUD-SDK-FF6B6B)](https://www.zegocloud.com/)
</div>

A modern, full-stack video conferencing application built with Next.js, TypeScript, and ZEGOCLOUD SDK. MeetFlow provides seamless video calling experience with advanced features like OTP email verification, password reset, and responsive design.

## ✨ Features

### 🎥 **Video Conferencing**
- High-quality video calls powered by ZEGOCLOUD
- Real-time audio and video communication
- Screen sharing capabilities
- Multi-participant support

### 🔐 **Advanced Authentication**
- **OTP Email Verification** - Secure account creation with email verification
- **Password Reset** - Forgot password with OTP verification
- **JWT Authentication** - Secure session management
- **Protected Routes** - Secure meeting access

### 🎨 **Modern UI/UX**
- Beautiful, responsive design with Tailwind CSS
- Mobile-first approach
- Dark theme with gradient backgrounds
- Smooth animations and transitions
- Password visibility toggles

### 📱 **Cross-Platform**
- Responsive design for all devices
- Progressive Web App (PWA) support
- Mobile-optimized interface
- Touch-friendly controls

## 🖼️ Screenshots

### Home Screen
<img src="/screenshots/Screenshot1.png" alt="MeetFlow Home Screen" width="800">

*Beautiful landing page with gradient background and call-to-action buttons*

### Registration with OTP Verification
<img src="/screenshots/Screenshot2.png" alt="Registration Form" width="800">

*Secure registration process with email OTP verification*

### Login & Password Reset
<img src="/screenshots/Screenshot3.png" alt="Login Form" width="800">

*Login form with forgot password functionality and OTP verification*

### Video Meeting Interface
<img src="/screenshots/Screenshot4.png" alt="Video Meeting" width="800">

*Professional video calling interface with ZEGOCLOUD integration*

## 🚀 Quick Start

### Prerequisites
- Node.js 18+ 
- MongoDB (local or Atlas)
- ZEGOCLOUD account
- Gmail account for email service

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/video-calling-app-nextjs.git
   cd video-calling-app-nextjs
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Environment Setup**
   Create a `.env.local` file:
   ```env
   # Database
   MONGODB_URI=mongodb://localhost:27017/videocall
   
   # JWT Authentication
   JWT_SECRET=your-super-secret-jwt-key-change-this-in-production
   
   # Email Service (Gmail)
   EMAIL_USER=your-email@gmail.com
   EMAIL_PASS=your-app-password
   
   # ZEGOCLOUD Video SDK
   NEXT_PUBLIC_ZEGO_APP_ID=your-zego-app-id
   NEXT_PUBLIC_ZEGO_SERVER_SECRET=your-zego-server-secret
   ```

4. **Start the development server**
   ```bash
   npm run dev
   ```

5. **Open your browser**
   Navigate to [http://localhost:3000](http://localhost:3000)

## 🛠️ Tech Stack

### Frontend
- **Next.js 15** - React framework with App Router
- **React 19** - Latest React with concurrent features
- **TypeScript** - Type-safe development
- **Tailwind CSS** - Utility-first CSS framework

### Backend
- **Next.js API Routes** - Serverless API endpoints
- **MongoDB** - NoSQL database with Mongoose ODM
- **JWT** - JSON Web Tokens for authentication
- **Nodemailer** - Email service integration

### Video & Communication
- **ZEGOCLOUD SDK** - Professional video calling infrastructure
- **WebRTC** - Real-time communication protocols

### Deployment
- **Vercel** - Serverless deployment platform
- **MongoDB Atlas** - Cloud database service

## 📁 Project Structure

```
src/
├── app/                    # Next.js App Router
│   ├── api/               # API routes
│   │   └── auth/         # Authentication endpoints
│   │       ├── login/     # Login API
│   │       ├── register/  # Registration API
│   │       ├── send-otp/  # OTP sending API
│   │       ├── verify-otp/# OTP verification API
│   │       ├── reset-password/ # Password reset API
│   │       └── me/        # User profile API
│   ├── login/            # Login page
│   ├── register/         # Registration page
│   ├── meeting/[roomID]/ # Dynamic meeting room
│   ├── globals.css       # Global styles
│   ├── layout.tsx        # Root layout
│   └── page.tsx          # Home page
├── components/           # React components
│   ├── HomeScreen.tsx    # Main landing page
│   ├── Login.tsx         # Login form with forgot password
│   ├── Register.tsx      # Registration with OTP
│   ├── MeetingRoom.tsx   # Video call interface
│   └── ProtectedRoute.tsx # Route protection
├── contexts/             # React contexts
│   └── AuthContext.tsx   # Authentication state management
├── lib/                  # Utility libraries
│   ├── mongodb.ts        # Database connection
│   └── email.ts          # Email service configuration
└── models/               # Database models
    ├── User.ts           # User schema
    └── OTP.ts            # OTP verification schema
```

## 🔧 API Endpoints

### Authentication
- `POST /api/auth/register` - User registration
- `POST /api/auth/login` - User login
- `POST /api/auth/logout` - User logout
- `GET /api/auth/me` - Get current user profile

### OTP & Email Verification
- `POST /api/auth/send-otp` - Send OTP to email
- `POST /api/auth/verify-otp` - Verify OTP code
- `POST /api/auth/reset-password` - Reset password after OTP verification

### Health Check
- `GET /api/health` - Application health status

## 🎯 Key Features Explained

### Email OTP Verification System
- **Registration Flow**: Users must verify their email before account creation
- **Password Reset**: Secure password reset with OTP verification
- **Email Templates**: Beautiful HTML email templates
- **Security**: 10-minute OTP expiration with automatic cleanup

### Responsive Design
- **Mobile-First**: Optimized for mobile devices
- **Progressive Enhancement**: Works on all screen sizes
- **Touch-Friendly**: Large buttons and intuitive navigation
- **Dark Theme**: Modern gradient-based design

### Video Calling Features
- **High Quality**: Up to 720p video quality
- **Low Latency**: Real-time communication
- **Screen Sharing**: Share your screen with participants
- **Multi-User**: Support for multiple participants

## 🚀 Deployment

### Vercel Deployment (Recommended)

1. **Prepare for deployment**
   ```bash
   git add .
   git commit -m "Ready for deployment"
   git push origin main
   ```

2. **Deploy to Vercel**
   - Connect your GitHub repository to Vercel
   - Add environment variables in Vercel dashboard
   - Deploy automatically with zero configuration

3. **Configure MongoDB Atlas**
   - Create a MongoDB Atlas cluster
   - Update `MONGODB_URI` in Vercel environment variables
   - Whitelist Vercel IP addresses

### Environment Variables for Production

| Variable | Description | Required |
|----------|-------------|----------|
| `MONGODB_URI` | MongoDB Atlas connection string | ✅ |
| `JWT_SECRET` | Secret key for JWT tokens | ✅ |
| `EMAIL_USER` | Gmail address for sending emails | ✅ |
| `EMAIL_PASS` | Gmail app password | ✅ |
| `NEXT_PUBLIC_ZEGO_APP_ID` | ZEGOCLOUD App ID | ✅ |
| `NEXT_PUBLIC_ZEGO_SERVER_SECRET` | ZEGOCLOUD Server Secret | ✅ |

## 🔒 Security Features

- **HTTP-Only Cookies** - Secure JWT storage
- **Password Hashing** - bcrypt with salt rounds
- **OTP Expiration** - Time-limited verification codes
- **Email Validation** - Proper email format checking
- **CORS Protection** - Cross-origin request security
- **Input Sanitization** - XSS protection

## 📱 Browser Support

- ✅ Chrome 80+
- ✅ Firefox 75+
- ✅ Safari 13+
- ✅ Edge 80+
- ✅ Mobile browsers (iOS Safari, Chrome Mobile)

## 🐛 Troubleshooting

### Common Issues

**Email not sending**
- Verify Gmail app password is correct
- Check EMAIL_USER and EMAIL_PASS environment variables
- Ensure Gmail 2FA is enabled

**Video not working**
- Allow camera/microphone permissions
- Check ZEGOCLOUD credentials
- Verify browser compatibility

**Database connection failed**
- Check MongoDB Atlas connection string
- Verify network access and IP whitelist
- Ensure database is running

**OTP verification failing**
- Check email delivery
- Verify OTP hasn't expired (10 minutes)
- Clear browser cache and cookies

## 🤝 Contributing

We welcome contributions! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Development Guidelines
- Follow TypeScript best practices
- Write meaningful commit messages
- Test thoroughly before submitting
- Update documentation as needed

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Shiba Prasad**
- LinkedIn: [@theshibaprasad](https://www.linkedin.com/in/theshibaprasad/)
- GitHub: [@theshibaprasad](https://github.com/theshibaprasad)

## 🙏 Acknowledgments

- [ZEGOCLOUD](https://www.zegocloud.com/) for video calling infrastructure
- [Next.js](https://nextjs.org/) team for the amazing framework
- [Tailwind CSS](https://tailwindcss.com/) for the utility-first CSS framework
- [MongoDB](https://www.mongodb.com/) for the database solution

---

<div align="center">
  <p>Made with ❤️ by <a href="https://www.linkedin.com/in/theshibaprasad/">Shiba Prasad</a></p>
  <p>⭐ Star this repository if you found it helpful!</p>
</div>