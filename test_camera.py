import cv2 as cv

print("Testing camera access...")

# Try to open camera
cap = cv.VideoCapture(0)

if not cap.isOpened():
    print("ERROR: Cannot open camera at device index 0")
    print("Possible solutions:")
    print("1. Make sure your webcam is connected")
    print("2. Check if another application is using the camera")
    print("3. Try a different device index (e.g., 1, 2)")
else:
    print("SUCCESS: Camera opened successfully!")
    
    # Try to read a frame
    ret, frame = cap.read()
    if ret:
        print(f"SUCCESS: Frame captured! Size: {frame.shape}")
        print("\nYour camera is working. The app.py should work.")
    else:
        print("ERROR: Could not read frame from camera")
    
    cap.release()

print("\nTest complete.")
