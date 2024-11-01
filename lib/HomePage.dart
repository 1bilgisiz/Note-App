import 'package:flutter/material.dart';
import 'package:hash_code_app/DrawerMenu.dart';
import 'package:hash_code_app/MessagePage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ana Sayfa",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      drawer: const DrawermenuPage(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  _buildInfoCard(
                    context: context,
                    title: "Eğitim ve Öğrenme Notları",
                    content: "Son eklenen notlara bakınız",
                    icon: Icons.school,
                    color: Colors.purple,
                    detailContent:
                        "Burada eğitim ve öğrenme ile ilgili detaylı notlar var.",
                  ),
                  _buildInfoCard(
                    context: context,
                    title: "Kişisel Gelişim Notları",
                    content: "Son eklenen içeriklere göz atın.",
                    icon: Icons.update,
                    color: Colors.blueAccent,
                    detailContent:
                        "Burada kişisel gelişim ile ilgili detaylı notlar var.",
                  ),
                  _buildInfoCard(
                    context: context,
                    title: "İş ve Kariyer Notları",
                    content: "Okunmamış bildirimleriniz var.",
                    icon: Icons.notifications,
                    color: Colors.orangeAccent,
                    detailContent:
                        "Burada iş ve kariyer ile ilgili detaylı notlar var.",
                  ),
                  _buildInfoCard(
                    context: context,
                    title: "Sağlık ve Yaşam Notları",
                    content: "Tamamlanması gereken görevler.",
                    icon: Icons.task_alt,
                    color: Colors.greenAccent,
                    detailContent:
                        "Burada sağlık ve yaşam ile ilgili detaylı notlar var.",
                  ),
                  _buildInfoCard(
                    context: context,
                    title: "Sosyal Hayat Notları",
                    content: "Kısa vadeli hedeflerinize ulaşın.",
                    icon: Icons.flag,
                    color: Colors.redAccent,
                    detailContent:
                        "Burada sosyal hayat ile ilgili detaylı notlar var.",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required BuildContext context,
    required String title,
    required String content,
    required IconData icon,
    required Color color,
    required String detailContent,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 8,
      shadowColor: color.withOpacity(0.3),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Messagepage(),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: color.withOpacity(0.2),
                child: Icon(icon, size: 32, color: color),
              ),
              const SizedBox(height: 12),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                content,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
