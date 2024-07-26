# ismt_anchor

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

User Manual for Running a Flutter App

1. Introduction

Welcome to the Flutter App User Manual! This guide will help you set up and run your Flutter app smoothly. Whether you're new to Flutter or need a refresher, this manual covers all the essential steps.

2. Prerequisites

Before running the Flutter app, ensure you have the following:

1. Flutter SDK: Download and install from [flutter.dev](https://flutter.dev/docs/get-started/install).
2. Dart SDK: Included with the Flutter SDK.
3. Code Editor: VS Code, Android Studio, or IntelliJ IDEA.
4. Mobile Device or Emulator: Physical device or emulator/simulator.

3. Setting Up Your Development Environment

3.1 Install Flutter SDK

1. Download: Get the latest version of the Flutter SDK from [flutter.dev](https://flutter.dev/docs/get-started/install).
2. Extract: Unzip the downloaded file to your desired location.
3. Add to Path:
   - Windows:
     1. Open Environment Variables.
     2. Add the `flutter/bin` directory to the `PATH`.
   - MacOS/Linux:
     ```bash
     export PATH="$PATH:`pwd`/flutter/bin"
     
3.2 Verify Installation

Open a terminal and run:
bash
flutter doctor
This command checks your environment and displays a report of the status. Follow the recommendations to complete the setup.

3.3 Set Up an Editor

Visual Studio Code

1. Install [Visual Studio Code](https://code.visualstudio.com/).
2. Add Flutter and Dart extensions from the Extensions marketplace.

Android Studio

1. Download and install [Android Studio](https://developer.android.com/studio).
2. Open the IDE, go to `Plugins`, and install Flutter and Dart plugins.

3.4 Set Up a Device

Android Emulator

1. Open Android Studio.
2. Go to `AVD Manager` and create a new virtual device.
3. Choose a device definition and select a system image.
4. Launch the emulator.

iOS Simulator (MacOS only)

1. Open Xcode.
2. Go to `Preferences` > `Components` and install a simulator.
3. Launch the simulator from the `Xcode` > `Open Developer Tool` > `Simulator`.

Physical Device

1. Enable Developer Mode on your device.
2. Connect your device via USB.
3. Authorize the connection if prompted.

4. Running the Flutter App

4.1 Clone the Repository

git clone <repository_url>
cd <repository_directory>
cd Team-2-Project
cd ismt_anchor

4.2 Get Dependencies

Navigate to your app directory and run:

flutter pub get


4.3 Run the App

Using Terminal

1. For Android:
 
   flutter run

2. For iOS:
 
   flutter run


Using an Editor

1. VS Code:
   - Open the project folder.
   - Press `F5` or go to `Run` > `Start Debugging`.
2. Android Studio:
   - Open the project.
   - Click on the `Run` button or press `Shift + F10`.

5. Common Issues and Troubleshooting

5.1 Common Issues

1. SDK Not Found:
   - Ensure Flutter is added to your PATH.
   - Run `flutter doctor` to diagnose issues.

2. Device Not Detected:
   - Ensure the device is connected and authorized.
   - Restart the device or emulator.

3. Dependencies Error:
   - Run `flutter pub get` to fetch dependencies.
   - Ensure the `pubspec.yaml` file is correctly formatted.

5.2 Troubleshooting Commands

1. Check Flutter Environment:
    flutter doctor

2. Clean Project:
  
   flutter clean
   
3. Rebuild Project:

   flutter pub get
   flutter run


6. Additional Resources

1. Flutter Documentation: [flutter.dev/docs](https://flutter.dev/docs)
2. Flutter Community: [flutter.dev/community](https://flutter.dev/community)
3. Stack Overflow: [stackoverflow.com/questions/tagged/flutter](https://stackoverflow.com/questions/tagged/flutter)

This user manual should help you get started with running your Flutter app. If you encounter any issues or need further assistance, refer to the additional resources or seek help from the Flutter community. Happy coding!

