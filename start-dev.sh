#!/bin/bash
# Load environment variables from .env file
export $(grep -v '^#' .env | xargs)

# Start Next.js with the PORT from .env
next dev --turbopack --port $PORT
