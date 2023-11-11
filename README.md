# Flutter Counter App

This is a basic Flutter application that demonstrates the use of stateful and stateless widgets, basic layout and styling, and user interaction.

## Structure

The application consists of a main file and a separate Dart file for a custom widget.

### main.dart

The `main.dart` file is the entry point of the application. It calls the `runApp()` function with an instance of the `MyApp` class.

The `MyApp` class is a `StatelessWidget` that returns a `MaterialApp` widget. This widget is the root of your application and includes several properties such as theme data and home page.

The home page of the app is a `Scaffold` widget, which provides a framework that includes an `AppBar` and a `Body`. The `AppBar` has a title and a black background color.

The body of the `Scaffold` is a `Center` widget that centers its child, a `Container` widget. The `Container` has a `BoxDecoration` with a `color` of `Colors.blueGrey`.

Inside the `Container`, there's a `Column` widget that arranges its children (a `GreetingMessage` widget and a `CounterWidget`) vertically and centers them in the main axis.

### CounterWidget

The `CounterWidget` is a `StatefulWidget`. This means it can maintain state that can change over time.

The `CounterWidget` has a corresponding `State` class, `_CounterWidgetState`. This class maintains the state for `CounterWidget`. It declares two variables: `_counter` and `_incrementMessage`.

The `_incrementCounter` method increments the `_counter` variable and updates `_incrementMessage` to indicate that the counter has been incremented. The `_resetCounter` method resets `_counter` to 0 and updates `_incrementMessage` to indicate that the counter has been reset.

The `build` method of `_CounterWidgetState` returns a `Column` widget that displays the current counter, a message, and two buttons. The 'Increment' button calls `_incrementCounter` when pressed, and the 'Reset' button calls `_resetCounter` when pressed.

### greeting_message.dart

The `greeting_message.dart` file defines a `StatelessWidget` that displays a greeting message. This widget is used in `main.dart`.

## Student 
Asilebek Boboyev JSE2 2110068
