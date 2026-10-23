# Unit Converter App

A modern, clean, and responsive **Unit Converter Application** built with **Flutter** and **Provider** state management. This application allows users to convert various units seamlessly in real-time across multiple categories like Length, Weight, and Temperature.

---

## 🚀 Features

- **Multi-Category Conversion:** Supports conversion across Length, Weight, and Temperature.
  - **Length:** Meter $\leftrightarrow$ Kilometer
  - **Weight:** Gram $\leftrightarrow$ Kilogram
  - **Temperature:** Celsius $\leftrightarrow$ Fahrenheit
- **Real-Time Calculation:** Automatically calculates and updates the result as you type or change units.
- **Unit Swapping:** Quick swap feature to interchange "From" and "To" units instantly with a single tap.
- **State Management:** Built using the `provider` package for clean separation of UI and business logic.
- **Clean & Modern UI:** Designed following Material 3 guidelines for an intuitive user experience.

---

## 🛠️ Project Structure

The project follows a well-organized folder structure:

```text
lib/
├── models/
│   └── unit_model.dart          # Unit and Category data models
├── providers/
│   └── converter_provider.dart  # Business logic & state management
├── views/
│   └── screens/
│       └── converter_screen.dart # Main screen UI layout
├── widgets/                     # Reusable UI widgets
│   ├── custom_dropdown.dart
│   └── swap_button.dart
├── utils/                       # Constants and styling configurations
│   └── app_constants.dart
└── main.dart                    # Application entry point & Provider setup


💻 Tech Stack & Packages
​Framework: Flutter
​Language: Dart
​State Management: Provider
​🏃 Getting Started
​Prerequisites
​Make sure you have Flutter installed on your machine.
​Flutter Installation Guide
​Installation
1. Clone the repository:
git clone [https://github.com/your-username/unit-converter-app.git](https://github.com/your-username/unit-converter-app.git)
2. Navigate to the project directory:
cd unit-converter-app
3. Install the dependencies:
flutter pub get
4. Run the application:
flutter run



📷 Usage Example
​Select a category (Length, Weight, or Temp).
​Enter the value in the input field.
​Choose your desired units in the From and To dropdown menus.
​Use the Swap Button to instantly swap units.
​View the converted result instantly in real-time!
