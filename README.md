## Name : Karan Verma
## Roll Number : 23EACAD058
## Experiment Title : Simple Gaming Application
## Aim : To design a simple game using Flutter widgets.

## Procedure
- Install Flutter SDK
   - Download and install the Flutter SDK from the official website and set up environment variables.
   - Verify installation using:
     ```bash
     flutter doctor
     ```

- Install Android Studio
   - Install Android Studio and configure it with Flutter and Dart plugins.

- Create a New Flutter Project
   - Open Android Studio
   - Click on New Flutter Project
   - Select Flutter Application
   - Enter project name and location
   - Click Finish

- Write the Source Code
   - Open the `main.dart` file and replace the existing code with the given program.
   - The program uses:
      - Timer class from dart:async
      - State management using StatefulWidget
      - Score tracking system
      - Countdown timer logic

- Connect Device/Emulator
   - Start an Android emulator or connect a physical device with USB debugging enabled.

- Run the Application
   - Click Run button or use:
     ```bash
     flutter run
     ```

- Observe the Output
   - The app starts a 10-second game timer
   - User taps the "TAP ME" button to increase score
   - High score is updated after each game
   - Displays "Game Over" when time finishes

## Output: A Flutter tap speed game where users tap a button to increase score within a 10-second timer.

- <img width="1918" height="1028" alt="image" src="https://github.com/user-attachments/assets/3910ec99-e8eb-4354-8021-ede28dee9357" />


## Conclusion : The experiment was successfully completed by implementing a timer-based interactive game in Flutter using the Dart Timer class.
