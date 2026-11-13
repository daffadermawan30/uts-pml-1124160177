import 'package:flutter/material.dart';

import '../models/profile.dart';
import '../widgets/info_tile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Profile mahasiswa = const Profile(
    name: 'Daffa',
    nim: '123456789',
    prodi: 'Software Engineering',
    kelas: 'TI-5A',
    bio: 'Saya tertarik dengan pengembangan aplikasi dan teknologi.',
    email: 'daffa@gmail.com',
    phone: '081234567890',
    github: 'github.com/daffa',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Mahasiswa'), centerTitle: true),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Foto profil
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),

            const SizedBox(height: 16),

            // Nama dan NIM
            Text(
              mahasiswa.name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),

            const SizedBox(height: 5),

            Text(mahasiswa.nim),

            const SizedBox(height: 24),

            // Informasi akademik
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

            // Bio
            Card(
              child: InfoTile(
                icon: Icons.person_outline,
                title: 'Tentang Saya',
                subtitle: mahasiswa.bio,
              ),
            ),

            const SizedBox(height: 16),

            // Kontak
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
