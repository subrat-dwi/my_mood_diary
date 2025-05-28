import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart' as picker;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'diary_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("introspee"),

      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Text("How are you feeling?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, ),),
              ElevatedButton(

                onPressed: (){
                  picker.DatePicker.showDatePicker(
                      context,
                      currentTime: DateTime.now(),
                      onChanged: (dateTime){
                        setState(() {
                          date = dateTime;
                        });
                        print(dateTime);
                        print(date);
                      }
                  );
                },
                child: Text("${date.day}, ${DateFormat('MMMM').format(date)} ${date.year}"),
              ),
              Wrap(
                  children: [
                    InkWell(
                      onTap: (){;
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DiaryPage(mood:"Suffering :)", date: date),));
                      },

                      child: Card(

                        child: Container(
                          color: Colors.grey,
                          height: 100,
                          width: 100,
                          child: Center(child: Text("Suffering :)", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DiaryPage(mood:"baddd", date: date),));
                      },

                      child: Card(
                        child: Container(
                          color: Colors.orange,
                          height: 100,
                          width: 100,
                          child: Center(child: Text("baddd", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DiaryPage(mood:"meh -_-", date: date),));
                      },
                      child: Card(
                        child: Container(
                          color: Colors.blueGrey,
                          height: 100,
                          width: 100,
                          child: Center(child: Text("meh -_-", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DiaryPage(mood:"good", date: date),));
                      },
                      child: Card(
                        child: Container(
                          color: Colors.lightGreenAccent,
                          height: 100,
                          width: 100,
                          child: Center(child: Text("good", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DiaryPage(mood:"happy happy happy", date: date),));
                      },
                      child: Card(
                        child: Container(
                          color: Colors.green,
                          height: 100,
                          width: 100,
                          child: Center(child: Text("happy happy happy", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ),
                  ]


              ),





            ],       ),

        ),
      ),



    );
  }
}