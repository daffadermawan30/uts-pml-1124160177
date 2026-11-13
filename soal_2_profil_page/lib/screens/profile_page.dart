import 'package:flutter/material.dart';
import 'package:soal_2_profil_page/models/profile.dart';

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
    kelas: 'TI-24-SE-2',
    bio: 'Saya suka teknologi.',
    email: 'daffa@gmail.com',
    phone: '081234567890',
    github: 'github.com/daffadermawan30',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Mahasiswa'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(radius: 55, child: Icon(Icons.person, size: 60)),

            const SizedBox(height: 16),

            Text(
              mahasiswa.name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),

            const SizedBox(height: 5),

            Text(mahasiswa.nim, style: Theme.of(context).textTheme.bodyMedium),

            const SizedBox(height: 20),

            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.school),
                    title: const Text('Program Studi'),
                    subtitle: Text(mahasiswa.prodi),
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: const Icon(Icons.class_),
                    title: const Text('Kelas'),
                    subtitle: Text(mahasiswa.kelas),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            Card(
              child: ListTile(
                leading: const Icon(Icons.person_outline),
                title: const Text('Tentang Saya'),
                subtitle: Text(mahasiswa.bio),
              ),
            ),

            const SizedBox(height: 16),

            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.email),
                    title: const Text('Email'),
                    subtitle: Text(mahasiswa.email),
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: const Icon(Icons.phone),
                    title: const Text('Nomor Telepon'),
                    subtitle: Text(mahasiswa.phone),
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: const Icon(Icons.code),
                    title: const Text('GitHub'),
                    subtitle: Text(mahasiswa.github),
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
