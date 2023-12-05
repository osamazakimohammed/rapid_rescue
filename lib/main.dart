import 'package:flutter/material.dart';
import 'package:rapid_rescue/src/colors/color_schemes.dart';
import 'package:rapid_rescue/src/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        appBarTheme: AppBarTheme(
            scrolledUnderElevation: 0,
            elevation: 0,
            backgroundColor: lightColorScheme.background),
        navigationBarTheme: NavigationBarThemeData(
            elevation: 0, backgroundColor: lightColorScheme.background),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        appBarTheme: AppBarTheme(
            scrolledUnderElevation: 0,
            elevation: 0,
            backgroundColor: darkColorScheme.background),
        navigationBarTheme: NavigationBarThemeData(
            elevation: 0, backgroundColor: darkColorScheme.background),
      ),
      home: const HomeScreen(),
    );
  }
}
