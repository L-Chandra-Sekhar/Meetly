# MeetFlow - Video Conferencing App (Next.js + TypeScript)

A modern video conferencing application built with Next.js, TypeScript, and ZEGOCLOUD SDK. This application combines frontend and backend into a single Next.js server for easy deployment.

## Features

- 🎥 **Video Conferencing**: High-quality video calls with ZEGOCLOUD
- 🔐 **User Authentication**: Secure login and registration system
- 🎨 **Modern UI**: Beautiful, responsive design with Tailwind CSS
- ⚡ **Real-time**: Low-latency video and audio communication
- 📱 **Responsive**: Works on desktop and mobile devices
- 🛡️ **Protected Routes**: Secure meeting access with authentication
- ⏱️ **Time Limits**: 5-minute meeting limit for development mode

## Tech Stack

- **Frontend**: Next.js 15, React 19, TypeScript
- **Styling**: Tailwind CSS
- **Backend**: Next.js API Routes
- **Database**: MongoDB with Mongoose
- **Authentication**: JWT with HTTP-only cookies
- **Video SDK**: ZEGOCLOUD UIKit Prebuilt
- **Deployment**: Vercel-ready

## Prerequisites

- Node.js 18+ 
- MongoDB (local or cloud)
- ZEGOCLOUD account and credentials

## Installation

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd video-calling-app-nextjs
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Set up environment variables**
   Create a `.env.local` file in the root directory:
   ```env
   # Database
   MONGODB_URI=mongodb://localhost:27017/videocall
   
   # JWT
   JWT_SECRET=your-super-secret-jwt-key-change-this-in-production
   JWT_EXPIRES_IN=7d
   
   # ZEGOCLOUD (Get these from https://console.zegocloud.com/)
   NEXT_PUBLIC_ZEGO_APP_ID=your-zego-app-id
   NEXT_PUBLIC_ZEGO_SERVER_SECRET=your-zego-server-secret
   
   # Environment
   NODE_ENV=development
   ```

4. **Get ZEGOCLOUD credentials**
   - Sign up at [ZEGOCLOUD Console](https://console.zegocloud.com/)
   - Create a new project
   - Copy your App ID and Server Secret
   - Add them to your `.env.local` file

5. **Start the development server**
   ```bash
   npm run dev
   ```

6. **Open your browser**
   Navigate to [http://localhost:3000](http://localhost:3000)

## Project Structure

```
src/
├── app/                    # Next.js App Router
│   ├── api/               # API routes
│   │   └── auth/         # Authentication endpoints
│   ├── login/            # Login page
│   ├── register/         # Registration page
│   ├── meeting/[roomID]/ # Dynamic meeting room
│   ├── globals.css       # Global styles
│   ├── layout.tsx        # Root layout
│   └── page.tsx          # Home page
├── components/           # React components
│   ├── HomeScreen.tsx    # Main landing page
│   ├── Login.tsx         # Login form
│   ├── Register.tsx      # Registration form
│   ├── MeetingRoom.tsx   # Video call interface
│   └── ProtectedRoute.tsx # Route protection
├── contexts/             # React contexts
│   └── AuthContext.tsx   # Authentication state
├── lib/                  # Utility libraries
│   └── mongodb.ts        # Database connection
└── models/               # Database models
    └── User.ts           # User schema
```

## API Endpoints

- `POST /api/auth/register` - User registration
- `POST /api/auth/login` - User login
- `GET /api/auth/me` - Get current user
- `POST /api/auth/logout` - User logout
- `GET /api/health` - Health check

## Usage

1. **Register/Login**: Create an account or sign in
2. **Start Meeting**: Click "Start New Meeting" to create a room
3. **Join Meeting**: Click "Join Meeting" and enter a room ID
4. **Video Call**: Use the ZEGOCLOUD interface for video calls
5. **Share**: Copy the meeting link to invite others

## Deployment

### Vercel (Recommended)

1. **Push to GitHub**
   ```bash
   git add .
   git commit -m "Initial commit"
   git push origin main
   ```

2. **Deploy to Vercel**
   - Connect your GitHub repository to Vercel
   - Add environment variables in Vercel dashboard
   - Deploy automatically

3. **Set up MongoDB**
   - Use MongoDB Atlas for cloud database
   - Update `MONGODB_URI` in environment variables

### Other Platforms

The app can be deployed to any platform that supports Next.js:
- Netlify
- Railway
- DigitalOcean App Platform
- AWS Amplify

## Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `MONGODB_URI` | MongoDB connection string | Yes |
| `JWT_SECRET` | Secret key for JWT tokens | Yes |
| `JWT_EXPIRES_IN` | JWT token expiration time | No |
| `NEXT_PUBLIC_ZEGO_APP_ID` | ZEGOCLOUD App ID | Yes |
| `NEXT_PUBLIC_ZEGO_SERVER_SECRET` | ZEGOCLOUD Server Secret | Yes |
| `NODE_ENV` | Environment (development/production) | No |

## Development Notes

- **Meeting Time Limit**: 5 minutes for development mode
- **Max Users**: 3 users per meeting
- **Video Quality**: Default 360p, supports up to 720p
- **Authentication**: HTTP-only cookies for security
- **CORS**: Configured for production deployment

## Troubleshooting

### Common Issues

1. **ZEGOCLOUD credentials error**
   - Verify your App ID and Server Secret
   - Check environment variables are loaded correctly

2. **Database connection failed**
   - Ensure MongoDB is running
   - Check `MONGODB_URI` is correct

3. **Authentication issues**
   - Clear browser cookies
   - Check JWT_SECRET is set

4. **Video not working**
   - Allow camera/microphone permissions
   - Check browser compatibility

### Browser Support

- Chrome 80+
- Firefox 75+
- Safari 13+
- Edge 80+

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is licensed under the MIT License.

## Support

For support and questions:
- Create an issue on GitHub
- Contact: [Shiba Prasad](https://www.linkedin.com/in/theshibaprasad/)

---

Made with ❤️ by [Shiba Prasad](https://www.linkedin.com/in/theshibaprasad/)