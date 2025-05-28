import 'package:flutter/material.dart';

class DiaryPage extends StatelessWidget {
  const DiaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController diaryController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("tell me more..."),
      ),
      body: Column(
        children: [
          TextField(
            maxLines: null,
            controller: titleController,
            onChanged: (enter) {
              titleController.text == enter;
            },
            decoration: const InputDecoration(
                hintStyle: TextStyle(color: Colors.black),
                hintText: "About ?",
                label: Text(
                  "About ?",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          TextField(
            maxLines: null,
            controller: diaryController,
            onChanged: (enter) {
              diaryController.text == enter;
            },
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintStyle: TextStyle(color: Colors.black),
              hintText: "How are you feeling....",
            ),
          ),
        ],
      ),
    );
  }
}
