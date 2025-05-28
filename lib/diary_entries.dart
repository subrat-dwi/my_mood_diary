import 'package:flutter/material.dart';

class DiaryEntries extends StatefulWidget {
  const DiaryEntries({super.key});

  @override
  State<DiaryEntries> createState() => _DiaryEntriesState();
}

class _DiaryEntriesState extends State<DiaryEntries> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your mood diary"),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
