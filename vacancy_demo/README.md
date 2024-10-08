<p align="center">
<img src="vacancy_demo/ScreenShoots/1.png" width="200">
<img src="vacancy_demo/ScreenShoots/2.png" width="200">


</p>

# Vacancy Demo App


# Main Features

1. Job Vacancy List Screen
    Display the following fields for each vacancy:
   View details button to navigate to the Vacancy Details Screen when a vacancy is selected.

2. Job Vacancy Details Screen
    Display all data of the selected vacancy


API used - https://www.unhcrjo.org/jobs/api


Packages used -

- [http 1.2.2](https://pub.dev/packages/http)
- [flutter_bloc: ^8.1.6](https://pub.dev/packages/flutter_bloc)
- [cupertino_icons: ^1.0.8](https://pub.dev/packages/cupertino_icons)
- [image_network: ^2.5.6](https://pub.dev/packages/image_network)
- [font_awesome_flutter: ^10.7.0](https://pub.dev/packages/font_awesome_flutter)
- [gap: ^3.0.1](https://pub.dev/packages/gap)


**The state management and the pattern design:**
-why bloc ??
Separation of Concerns: By separating the business logic from the UI, the code becomes more organized and easier to manage.
Reusability: BLoC components can be reused across different parts of the application.
Testability: Since the business logic is separated, it can be easily tested without depending on the UI.
-why bloc pattern ??
The BLoC pattern is a powerful approach to managing state in Flutter applications. Separating business logic from the UI promotes a cleaner and more maintainable codebase. Implementing the BLoC pattern involves creating streams and sinks to handle data flow, making the application more responsive and easy to test. Adopting the BLoC pattern can significantly improve your code's structure and maintainability as you build more complex applications.


**Pre-build the app :**
Set Up Your Development Environment
1.1 Install Flutter SDK
Go to the Flutter website.
Follow the instructions for your operating system (Windows, macOS, or Linux).
1.2 Set Up the PATH
Extract the Flutter SDK to your desired location.
Add the Flutter bin directory to your system's PATH environment variable.
1.3 Install an Editor
Install an IDE that supports Flutter, such as Visual Studio Code or Android Studio.
1.4 Install Flutter and Dart Plugins
For Visual Studio Code:
Go to Extensions and install the Flutter and Dart plugins.
For Android Studio:
Go to Preferences > Plugins and install the Flutter and Dart plugins.

after the you are ready to open the app and run.
