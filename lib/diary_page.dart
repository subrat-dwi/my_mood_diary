import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DiaryPage extends StatelessWidget {
  String mood;
  DateTime date;
  DiaryPage({super.key, required this.mood, required this.date});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController diaryController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("tell me more..."),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          CollectionReference diary = FirebaseFirestore.instance.collection(mood);
          diary.add({
            'title': titleController.text, // John Doe
            'tea': diaryController.text, // Stokes and Sons
            'date': date // 42
          })
              .then((value) => print("Diary Added"))
              .catchError((error) => print("Failed to add diary: $error"));
        },
        child: Icon(Icons.done),
      ),
    );
  }
}
