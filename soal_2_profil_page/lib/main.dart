import 'package:flutter/material.dart';

import 'screens/login_page.dart';
import 'screens/profile_page.dart';
import 'screens/edit_profile_page.dart';
import 'screens/about_page.dart';

import 'models/profile.dart';
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
            colorSchemeSeed: Colors.green,
            brightness: Brightness.light,
            useMaterial3: true,
          ),

          darkTheme: ThemeData(
            colorSchemeSeed: Colors.green,
            brightness: Brightness.dark,
            useMaterial3: true,
          ),

          themeMode: currentTheme,

          initialRoute: '/',

          routes: {'/': (context) => const LoginPage()},

          onGenerateRoute: (settings) {
            switch (settings.name) {
              case '/profile':
                return MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                );

              case '/edit-profile':
                final profile = settings.arguments as Profile;

                return MaterialPageRoute(
                  builder: (context) => EditProfilePage(profile: profile),
                );

              case '/about':
                final profile = settings.arguments as Profile;

                return MaterialPageRoute(
                  builder: (context) => AboutPage(profile: profile),
                );

              default:
                return null;
            }
          },
        );
      },
    );
  }
}
