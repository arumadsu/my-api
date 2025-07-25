#!/bin/bash

echo "📥 Pulling latest code..."
git pull origin main

echo "🧹 Stopping and removing old containers..."
docker compose down

echo "🐳 Building and starting Docker containers..."
docker compose up --build -d

echo "✅ Deployment finished!"
