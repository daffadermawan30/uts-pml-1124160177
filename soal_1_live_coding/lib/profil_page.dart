import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
        title: const Text("Profil Mahasiswa"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              CircleAvatar(
                radius: 55,
                child: Text(
                  "DD",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Daffa Dermawan",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 12),
              Text(
                "NIM: 11241560177",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 12),
              Text(
                "Software Engineering",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 24),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Kontak",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              const SizedBox(height: 16),
              Card(
                child: Column(
                  children: [
                    InfoTile(
                      icon: Icons.email,
                      label: "Email",
                      value: "daffa181002@gmail.com",
                    ),
                    const SizedBox(height: 12),
                    InfoTile(
                      icon: Icons.phone,
                      label: "No. HP",
                      value: "08123456789",
                    ),
                    const SizedBox(height: 12),
                    InfoTile(
                      icon: Icons.school,
                      label: "Perguruan Tinggi",
                      value: "Global Institute",
                    ),
                    const SizedBox(height: 12),
                    InfoTile(
                      icon: Icons.code,
                      label: "Github",
                      value: "github.com/daffadermawan30",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}
