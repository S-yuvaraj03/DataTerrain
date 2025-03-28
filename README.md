# dataterrain

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
#   D a t a T e r r a i n

# DataTerrain Dashboard Application

DataTerrain Dashboard is a Flutter-based application designed to provide a comprehensive overview of program metrics, statuses, and other key insights. The app is responsive and adapts seamlessly to different screen sizes, including mobile, tablet, and web layouts.

---

## Features

- **Planned Programs Overview**: Displays planned programs in a structured layout.
- **Program Status Metrics**: Provides insights into the status of various programs.
- **Top Programs and Mentors**: Highlights the top-performing programs and mentors.
- **Program Type and Mode Metrics**: Visualizes metrics based on program types and modes.
- **Responsive Design**: Automatically adjusts the layout for mobile, tablet, and web screens.

---


### Key Files

- **`lib/features/dashboard/page/dashboard_view.dart`**: The main dashboard screen that organizes the layout and widgets.
- **`lib/features/dashboard/widgets/`**: Contains reusable widgets for displaying program metrics, top programs, and mentors.
- **`lib/widgets/`**: Contains shared components like the app bar (`appbar.dart`) and navigation drawer (`drawer.dart`).

---

## Application Flow

1. **Entry Point**: The `DashboardScreen` class in [`dashboard_view.dart`](lib/features/dashboard/page/dashboard_view.dart) serves as the main screen of the app.
2. **Responsive Layout**: The app uses `LayoutBuilder` to determine the screen width and adjust the layout accordingly:
   - For wide screens (e.g., tablets and web), widgets are arranged in a `Row` layout.
   - For narrow screens (e.g., mobile), widgets are arranged in a `Column` layout.
3. **Widgets**: The dashboard is composed of modular widgets:
   - `PlannedProgramsWidget` and `ProgramStatusMetricsWidget` display program-related data.
   - `TopProgram` and `TopMentors` highlight key performers.
   - `ProgramTypeMetrices` and `ProgramModeMetrices` visualize metrics based on type and mode.

---

## Screenshots

Screenshots of the app's UI have been attached to this repository for reference. These screenshots showcase the app's responsive design and key features.

---

## How to Run the App

1. Ensure you have Flutter installed on your system. If not, follow the [Flutter installation guide](https://flutter.dev/docs/get-started/install).
2. Clone this repository:
   ```bash
   git clone <repository-url>
3. Navigate to the project directory: cd dataterrain
4. Install dependencies: flutter pub get
5. Run the app: flutter run


 
 
 
