import 'package:flutter/material.dart';

class DiaryPage extends StatelessWidget {
  const DiaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tell me more..."),
      ),
      body: Column(
        children: [
          TextFormField(),
          TextFormField()
        ],
      ),
    );
  }
}
