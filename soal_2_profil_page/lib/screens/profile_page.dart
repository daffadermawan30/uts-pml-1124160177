import 'package:flutter/material.dart';

import '../models/profile.dart';
import '../widgets/info_tile.dart';
import '../screens/edit_profile_page.dart';

import '../widgets/app_drawer.dart';
import '../screens/about_page.dart';
import '../screens/login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Profile mahasiswa = const Profile(
    name: 'Daffa Dermawan',
    nim: '1124160177',
    prodi: 'Teknik Informatika',
    kelas: 'TI24SE2',
    bio: 'Saya suka teknologi.',
    email: 'daffa@gmail.com',
    phone: '081234567890',
    github: 'github.com/daffadermawan30',
  );

  Future<void> _editProfile() async {
    final updatedProfile = await Navigator.push<Profile>(
      context,
      MaterialPageRoute(
        builder: (context) => EditProfilePage(profile: mahasiswa),
      ),
    );

    if (updatedProfile != null) {
      setState(() {
        mahasiswa = updatedProfile;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: _editProfile,
            icon: const Icon(Icons.edit),
            tooltip: 'Edit Profil',
          ),
        ],
      ),

      drawer: AppDrawer(
        profile: mahasiswa,
        selectedPage: 'profile',

        onProfileTap: () {
          Navigator.pop(context);
        },

        onAboutTap: () {
          Navigator.pop(context);

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AboutPage(profile: mahasiswa),
            ),
          );
        },

        onLogoutTap: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
            (route) => false,
          );
        },
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),

            const SizedBox(height: 16),

            Text(
              mahasiswa.name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),

            const SizedBox(height: 5),

            Text(mahasiswa.nim),

            const SizedBox(height: 24),

            Card(
              child: Column(
                children: [
                  InfoTile(
                    icon: Icons.school,
                    title: 'Program Studi',
                    subtitle: mahasiswa.prodi,
                  ),
                  const Divider(height: 1),
                  InfoTile(
                    icon: Icons.class_,
                    title: 'Kelas',
                    subtitle: mahasiswa.kelas,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            Card(
              child: InfoTile(
                icon: Icons.person_outline,
                title: 'Tentang Saya',
                subtitle: mahasiswa.bio,
              ),
            ),

            const SizedBox(height: 16),

            Card(
              child: Column(
                children: [
                  InfoTile(
                    icon: Icons.email,
                    title: 'Email',
                    subtitle: mahasiswa.email,
                  ),
                  const Divider(height: 1),
                  InfoTile(
                    icon: Icons.phone,
                    title: 'Nomor Telepon',
                    subtitle: mahasiswa.phone,
                  ),
                  const Divider(height: 1),
                  InfoTile(
                    icon: Icons.code,
                    title: 'GitHub',
                    subtitle: mahasiswa.github,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
