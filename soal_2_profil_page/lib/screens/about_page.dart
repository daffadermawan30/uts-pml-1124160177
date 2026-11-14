import 'package:flutter/material.dart';

import '../models/profile.dart';
import '../widgets/app_drawer.dart';
import 'login_page.dart';

class AboutPage extends StatelessWidget {
  final Profile profile;
  const AboutPage({super.key, required this.profile});

  final List<Map<String, dynamic>> skills = const [
    {
      'name': 'Flutter Development',
      'description': 'Mempelajari pengembangan aplikasi mobile.',
      'icon': Icons.phone_android,
    },
    {
      'name': 'Programming',
      'description': 'Mempelajari Dart, Java, dan bahasa pemrograman lainnya.',
      'icon': Icons.code,
    },
    {
      'name': 'UI/UX Design',
      'description': 'Tertarik mempelajari desain antarmuka aplikasi.',
      'icon': Icons.design_services,
    },
    {
      'name': 'Problem Solving',
      'description': 'Senang mempelajari algoritma dan pemecahan masalah.',
      'icon': Icons.psychology,
    },
  ];

  final List<Map<String, String>> education = const [
    {
      'level': 'Perguruan Tinggi',
      'institution': 'Global Institute',
      'year': '2024 - Sekarang',
    },
    {
      'level': 'Sekolah Menengah Atas',
      'institution': 'SMAN 11 Kab. Tangerang',
      'year': '2018 - 2021',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Me'), centerTitle: true),

      drawer: AppDrawer(
        profile: profile,
        selectedPage: 'about',

        onProfileTap: () {
          Navigator.pop(context);

          Navigator.pop(context);
        },

        onAboutTap: () {
          Navigator.pop(context);
        },

        onLogoutTap: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
            (route) => false,
          );
        },
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const CircleAvatar(radius: 50, child: Icon(Icons.person, size: 55)),

          const SizedBox(height: 16),

          Text(
            'Tentang Saya',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),

          const SizedBox(height: 8),

          const Text(
            'Saya adalah mahasiswa yang tertarik dengan '
            'teknologi, pemrograman, dan pengembangan aplikasi.',
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 30),

          Text('Skill & Hobi', style: Theme.of(context).textTheme.titleLarge),

          const SizedBox(height: 12),

          ...skills.map((skill) {
            return Card(
              child: ListTile(
                leading: Icon(skill['icon'] as IconData),
                title: Text(skill['name'] as String),
                subtitle: Text(skill['description'] as String),
              ),
            );
          }),

          const SizedBox(height: 24),

          Text(
            'Riwayat Pendidikan',
            style: Theme.of(context).textTheme.titleLarge,
          ),

          const SizedBox(height: 12),

          ...education.map((item) {
            return Card(
              child: ListTile(
                leading: const Icon(Icons.school),
                title: Text(item['level']!),
                subtitle: Text(item['institution']!),
                trailing: Text(
                  item['year']!,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
