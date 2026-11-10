import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profile Daffa Dermawan",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.deepOrange),
      darkTheme: ThemeData(brightness: Brightness.dark, useMaterial3: ),
      themeMode: ThemeMode.system,
      home: ProfilePage(),
      // belum di buat widget STL profilPage()
    );
  }
}
