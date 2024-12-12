# Zhakir

**Zhakir** is a comprehensive religious application that allows users to recite the Qur’an and hadith, 
watch and listen to religious sermons, and read religious books. 
It is built using Flutter with the MVVM architecture pattern, 
leveraging Cubit for state management.

## Table of Contents
- [Features](#features)
- [Folder Structure](#folder-structure)
- [Technologies Used](#technologies-used)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Contact](#contact)

---
![IMG-20241211-WA0005](https://github.com/user-attachments/assets/57cc589b-2f15-4fc8-b5c6-60d03a76448c)

## Features
- **Qur’an Recitation**: Read and recite the Holy Qur’an.
- **Hadith Access**: Explore collections of hadiths.
- **Religious Sermons**: Watch and listen to inspiring sermons.
- **Religious Books**: Access a library of religious books.

---

## Folder Structure
The project follows a modular structure with separation of concerns:

```
lib/
├── core
│   ├── helpers
│   ├── utils
│   ├── widgets
├── features
│   ├── splash
│   ├── on_bording
│   ├── auth
│   ├── home
│       ├── data
│       │   ├── models
│       │   ├── repository
│       ├── presentation
│           ├── manager
│           ├── views
```

### Core
- **Helpers**: Contains utility classes and functions used across the app.
- **Utils**: Provides constants, enums, and reusable configurations.
- **Widgets**: Houses common reusable widgets.

### Features
Each feature is divided into submodules:
- **Splash**: Handles the app's splash screen.
- **Onboarding**: Manages the onboarding flow for new users.
- **Auth**: Authentication-related functionality (e.g., login, registration).
- **Home**: Core features of the application.
  - **Data**: Includes models and repositories for handling data.
  - **Presentation**: Manages state (via Cubit) and views (UI).

---

## Technologies Used
- **Flutter**: Cross-platform mobile app framework.
- **Cubit**: Lightweight state management solution.
- **MVVM**: Model-View-ViewModel architecture.

---

## Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Dart 3.0+
- A code editor such as [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio).

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/mohammed266/owli_aleazm.git
   ```

2. Navigate to the project directory:
   ```bash
   cd owli_aleazm
   ```

3. Install dependencies:
   ```bash
   flutter pub get
   ```

4. Run the app:
   ```bash
   flutter run
   ```

---

## Contact
For questions, feedback, or collaboration, feel free to reach out:
- **Email**: mohammed.abduu2020@gmail.com

