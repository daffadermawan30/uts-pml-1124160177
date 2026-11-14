import 'package:flutter/material.dart';

import '../models/profile.dart';

class AppDrawer extends StatelessWidget {
  final Profile profile;
  final String selectedPage;
  final VoidCallback onProfileTap;
  final VoidCallback onAboutTap;
  final VoidCallback onLogoutTap;

  const AppDrawer({
    super.key,
    required this.profile,
    required this.selectedPage,
    required this.onProfileTap,
    required this.onAboutTap,
    required this.onLogoutTap,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(profile.name),
            accountEmail: Text(profile.email),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),

          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            selected: selectedPage == 'profile',
            selectedTileColor: Theme.of(context).colorScheme.secondaryContainer,
            selectedColor: Theme.of(context).colorScheme.onSecondaryContainer,
            onTap: onProfileTap,
          ),

          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About Me'),
            selected: selectedPage == 'about',
            selectedTileColor: Theme.of(context).colorScheme.secondaryContainer,
            selectedColor: Theme.of(context).colorScheme.onSecondaryContainer,
            onTap: onAboutTap,
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            iconColor: Theme.of(context).colorScheme.error,
            textColor: Theme.of(context).colorScheme.error,
            onTap: onLogoutTap,
          ),
        ],
      ),
    );
  }
}
