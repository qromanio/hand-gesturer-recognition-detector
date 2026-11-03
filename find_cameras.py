import cv2 as cv

print("Searching for available cameras...\n")

available_cameras = []

# Test camera indices 0-10
for i in range(10):
    cap = cv.VideoCapture(i)
    if cap.isOpened():
        ret, frame = cap.read()
        if ret:
            print(f"✓ Camera {i}: WORKING (can read frames)")
            available_cameras.append(i)
        else:
            print(f"⚠ Camera {i}: Opens but cannot read frames")
        cap.release()

print(f"\n{len(available_cameras)} working camera(s) found: {available_cameras}")

if available_cameras:
    print(f"\nTo use a different camera, run:")
    print(f"python app.py --device {available_cameras[0]}")
else:
    print("\nNo working cameras found. Please:")
    print("1. Check camera connections")
    print("2. Close other apps using the camera")
    print("3. Check Windows camera permissions")
