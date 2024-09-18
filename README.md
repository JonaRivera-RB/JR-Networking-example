# JR-Networking-example

## Overview

JR-Networking-example is a sample iOS application demonstrating the use of JR-Networking Library (SPM) and VIPER architecture pattern. The app fetches user data from an API and displays it in a view controller. This project showcases how to set up VIPER components including the Router, Presenter, Interactor, and View.

## Features

- Uses VIPER architecture for modular and maintainable code.
- Fetches user data from a JSON placeholder API.
- Uses my SPM JR-Networking
- Handles basic error reporting and UI updates.

## Installation

To get started with this project, follow these steps:

1. **Clone the Repository**
git clone [https://github.com/yourusername/exampleSPM2.git](https://github.com/JonaRivera-RB/JR-Networking-example/edit/main/README.md) cd exampleJRNetworking

2. **Open the Project**
Open the `.xcodeproj` file with Xcode:


3. **Build and Run**

Select the desired simulator or device, then build and run the project using Xcode.

## Project Structure

- **AppDelegate.swift**: Initializes the main window and sets up VIPER components.
- **UserPresenter.swift**: Handles user-related business logic and communicates with the interactor.
- **UserInteractor.swift**: Fetches user data and handles business logic.
- **UserClient.swift**: Provides network requests for user data.
- **UserResources.swift**: Defines API endpoints for user-related resources.
- **UserViewController.swift**: Displays user data and handles user interface.
- **UserRouter.swift**: Manages navigation between view controllers.
- **User.swift**: Data model representing a user.
- **APIError.swift**: Defines error responses from the API.

## Testing the Library

To ensure that the library functions correctly, you can follow these steps:

1. **Run the Application**

Launch the application in Xcode by selecting a simulator or connected device and pressing the Run button.

2. **Verify Functionality**

- Upon launching, the main view controller should display user data fetched from the API.
- If there is an error in fetching data, an appropriate error message should be displayed in the console.

3. **Check Console Output**

- Open the debug console in Xcode to check for any error messages or logs.
- Verify that the expected messages for successful data retrieval or errors are displayed.

## Usage

- **Fetching Users**: The `UserPresenter` requests user data through the `UserInteractor` when `didLoadUsers()` is called.
- **Displaying Data**: The `UserViewController` updates the UI with user data or displays an error message based on the response from the presenter.

## Contributing

Feel free to fork the repository and submit pull requests with improvements or bug fixes. Please make sure to follow the coding style and add tests for new features or bug fixes.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

## Contact

For any questions or issues, please contact Jonathan Rivera at `jonathanrivmb@gmail.com`.

Created with ❤️ by Jonathan Rivera.

