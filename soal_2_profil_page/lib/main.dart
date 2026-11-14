import 'package:flutter/material.dart';

import 'screens/login_page.dart';
import 'theme_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeModeNotifier,
      builder: (context, currentTheme, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Profil Mahasiswa',

          theme: ThemeData(
            colorSchemeSeed: Colors.deepOrange,
            brightness: Brightness.light,
            useMaterial3: true,
          ),

          darkTheme: ThemeData(
            colorSchemeSeed: Colors.deepOrange,
            brightness: Brightness.dark,
            useMaterial3: true,
          ),

          themeMode: currentTheme,

          home: const LoginPage(),
        );
      },
    );
  }
}
