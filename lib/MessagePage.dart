import 'package:flutter/material.dart';

class Messagepage extends StatelessWidget {
  const Messagepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Not Defteri'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
           SizedBox(height: 10),
          Card(
            elevation: 2,
            child: ListTile(
              leading: Icon(Icons.note, color: Colors.deepPurpleAccent),
              title: Text('Önemli not 1'),
              subtitle: Text('Bu not önemli bir hatırlatma içerir.'),
            ),
          ),
          Card(
            elevation: 2,
            child: ListTile(
              leading: Icon(Icons.note, color: Colors.deepPurpleAccent),
              title: Text('Önemli not 2'),
              subtitle: Text('Bu not proje detayları ile ilgilidir.'),
            ),
          ),
          Card(
            elevation: 2,
            child: ListTile(
              leading: Icon(Icons.note, color: Colors.deepPurpleAccent),
              title: Text('Önemli not 3'),
              subtitle: Text('Bu not ilerleme takibi için eklenmiştir.'),
            ),
          ),
          Card(
            elevation: 2,
            child: ListTile(
              leading: Icon(Icons.note, color: Colors.deepPurpleAccent),
              title: Text('Yeni not'),
              subtitle: Text('Bu not diğer önemli bilgiler içindir.'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Yeni not eklemek için bir işlem buraya eklenebilir
        },
        backgroundColor: Colors.deepPurpleAccent,
        child: const Icon(Icons.add),
      ),
    );
  }
}
