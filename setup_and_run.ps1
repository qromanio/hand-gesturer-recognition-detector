# Complete Setup Script for Hand Gesture Recognition
# Run this AFTER enabling long paths and restarting

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Hand Gesture Recognition - Setup Script" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Install TensorFlow
Write-Host "[1/3] Installing TensorFlow 2.16.1..." -ForegroundColor Yellow
pip install tensorflow==2.16.1 --user

if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ TensorFlow installed successfully!" -ForegroundColor Green
} else {
    Write-Host "✗ TensorFlow installation failed!" -ForegroundColor Red
    Write-Host "Make sure you enabled Long Path Support and restarted your computer." -ForegroundColor Yellow
    exit 1
}

Write-Host ""

# Step 2: Install other requirements
Write-Host "[2/3] Installing other dependencies..." -ForegroundColor Yellow
pip install opencv-python mediapipe numpy scikit-learn --user

if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Dependencies installed successfully!" -ForegroundColor Green
} else {
    Write-Host "✗ Dependency installation failed!" -ForegroundColor Red
    exit 1
}

Write-Host ""

# Step 3: Run the application
Write-Host "[3/3] Starting Hand Gesture Recognition..." -ForegroundColor Yellow
Write-Host ""
Write-Host "Controls:" -ForegroundColor Cyan
Write-Host "  - ESC: Exit the application" -ForegroundColor White
Write-Host "  - The app will show your hand gestures in real-time" -ForegroundColor White
Write-Host ""
Write-Host "Starting in 3 seconds..." -ForegroundColor Yellow
Start-Sleep -Seconds 3

python app.py
