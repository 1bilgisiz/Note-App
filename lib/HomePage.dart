import 'package:flutter/material.dart';
import 'package:hash_code_app/MessagePage.dart';
import 'package:hash_code_app/ProfilePage.dart';
import 'package:hash_code_app/Settings.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ana Sayfa",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome banner
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Hoş Geldiniz!",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Button Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildIconButton(
                  icon: Icons.person,
                  label: "Profil",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profilepage()));
                  },
                ),
                _buildIconButton(
                  icon: Icons.message,
                  label: "Mesajlar",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MessagePage()));
                  },
                ),
                _buildIconButton(
                  icon: Icons.settings,
                  label: "Ayarlar",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingsPage()));
                  },
                ),
              ],
            ),

            const SizedBox(height: 40),

            // Info Cards Section using Flexible
            Expanded(
              child: ListView(
                children: [
                  _buildInfoCard(
                    title: "Yeni Güncellemeler",
                    content: "Son eklenen içeriklere göz atın.",
                    icon: Icons.update,
                    color: Colors.blueAccent,
                  ),
                  _buildInfoCard(
                    title: "Bildirimler",
                    content: "Okunmamış bildirimleriniz var.",
                    icon: Icons.notifications,
                    color: Colors.orangeAccent,
                  ),
                  _buildInfoCard(
                    title: "Görevler",
                    content: "Tamamlanması gereken görevler.",
                    icon: Icons.task_alt,
                    color: Colors.greenAccent,
                  ),
                  _buildInfoCard(
                    title: "Hedefler",
                    content: "Kısa vadeli hedeflerinize ulaşın.",
                    icon: Icons.flag,
                    color: Colors.redAccent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Custom Icon Button
  Widget _buildIconButton(
      {required IconData icon,
      required String label,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.deepPurpleAccent,
            child: Icon(
              icon,
              size: 30,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  // Custom Info Card with Flexible height
  Widget _buildInfoCard(
      {required String title,
      required String content,
      required IconData icon,
      required Color color}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: color.withOpacity(0.1),
              child: Icon(icon, size: 30, color: color),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              content,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
