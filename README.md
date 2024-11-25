
# Bus Ticket Booking App

This is a simple Flutter app that allows users to book bus tickets online by entering the departure and destination locations, as well as the number of seats. It calculates the total fare based on user input and displays the result in a clean and attractive UI.

## Features

- User inputs for **departure** and **destination** locations.
- Input for **number of seats** to book.
- Fare is calculated based on the number of seats.
- Responsive and visually appealing design with modern UI elements.
- Error handling and feedback for invalid input.
- Simple, intuitive user experience.

## Screenshots

![App Screenshot](assets/screenshot.png)  
*Add a screenshot here, if available.*

---

## Installation

Follow these steps to set up the project on your local machine:

### 1. Clone the repository

```bash
git clone https://github.com/as4dmin/bus-ticket-booking.git
cd bus-ticket-booking
```

### 2. Install Flutter

Make sure you have Flutter installed on your machine. If you haven't installed Flutter, follow the instructions from the official Flutter website:  
[Flutter installation guide](https://flutter.dev/docs/get-started/install)

### 3. Install Dependencies

In the project directory, run the following command to install the necessary dependencies:

```bash
flutter pub get
```

### 4. Run the Application

Once everything is set up, run the app using the following command:

```bash
flutter run
```

This will start the app in the connected device or simulator.

---

## Usage

1. **Launch the app**: Upon opening the app, you will be presented with fields to input the **departure** location, **destination** location, and the **number of seats** to book.
2. **Enter details**: Type in the departure and destination locations, then specify how many seats you wish to book.
3. **Calculate Fare**: Press the "Calculate Fare" button to see the total fare. The fare is calculated as the number of seats multiplied by a fixed price of \$50 per seat.
4. **See Results**: The app will show the total fare, and if any fields are left empty or incorrectly filled, it will display an error message.

---

## File Structure

```bash
bus-ticket-booking/
├── lib/
│   └── main.dart               # Main app code for the UI and logic
├── assets/
│   └── screenshot.png          # Add a screenshot of the app (optional)
├── pubspec.yaml                # Flutter dependencies and assets
├── README.md                   # This file
└── .gitignore                  # Files/folders to ignore for git
```

---

## Dependencies

This project uses the following Flutter packages:

- **flutter**: The core Flutter SDK.
- **provider** (optional): Can be used for state management in more complex applications (not needed for this basic app).
  
You can add more dependencies if you plan to extend the functionality (e.g., adding network requests for dynamic pricing, or using a database for saved locations).

---

## Contributions

Feel free to fork the repository and submit a pull request. We welcome contributions to improve the app, whether it's bug fixes, UI improvements, or adding new features.

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

### Notes

- The fare calculation is currently fixed at \$50 per seat. You can modify the fare logic or introduce a pricing algorithm based on distance or other factors if required.
- This app is designed to run on mobile devices (iOS/Android). If you want to deploy it on the web, some additional adjustments may be necessary.

---

This `README.md` file provides the necessary instructions for setting up and using the bus ticket booking app, as well as details about the app’s functionality.
