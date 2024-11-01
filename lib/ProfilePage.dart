import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Sayfası'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple ,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Saniye Bilgiç',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Flutter & Java Developer',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 20),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('saniye.bilgic@example.com'),
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('Telefon'),
              subtitle: Text('+90 555 123 4567'),
            ),
            const ListTile(
              leading: Icon(Icons.location_city),
              title: Text('Şehir'),
              subtitle: Text('Kayseri, Türkiye'),
            ),
          ],
        ),
      ),
    );
  }
}
