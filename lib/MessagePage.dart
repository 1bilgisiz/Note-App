import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final List<String> _notes = [
    'Bu not önemli bir hatırlatma içerir.',
    'Bu not proje detayları ile ilgilidir.',
    'Bu not ilerleme takibi için eklenmiştir.',
    'Bu not diğer önemli bilgiler içindir.'
  ];

  final TextEditingController _controller = TextEditingController();

  void _addNote() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Yeni Not Ekle'),
        content: TextField(
          controller: _controller,
          decoration: const InputDecoration(hintText: 'Notunuzu buraya yazın'),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('İptal'),
          ),
          TextButton(
            onPressed: () {
              if (_controller.text.isNotEmpty) {
                setState(() {
                  _notes.add(_controller.text);
                });
                _controller.clear();
                Navigator.of(context).pop();
              }
            },
            child: const Text('Ekle'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Not Defteri'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: _notes.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            child: ExpansionTile(
              leading: const Icon(Icons.note, color: Colors.deepPurpleAccent),
              title: Text('Not ${index + 1}'),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(_notes[index]),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNote,
        backgroundColor: Colors.deepPurpleAccent,
        child: const Icon(Icons.add),
      ),
    );
  }
}
