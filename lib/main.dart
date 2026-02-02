import 'package:flutter/material.dart';
import 'rectangle.dart';
import 'percent.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'โปรแกรมคำนวณ21',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: "NotoSansThai",
      ),
      routes: {
        '/': (context) => MyHomePage(),
        '/rectangle' : (context) => Rectangle(),
        '/percent' : (context) => Percent(),
      },
      initialRoute: '/',

    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[10],
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("โปรแกรมคำนวณพื้นที่",style: TextStyle(fontSize: 40,color: Colors.black54)),
              SizedBox(height: 30,),
              TextButton(
                onPressed: () => Navigator.pushNamed(context, '/rectangle'),
                style:  TextButton.styleFrom(
                  backgroundColor:  Colors.blueAccent,
                  foregroundColor:  Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text("คำนวณพื้นที่สี่เหลี่ยม",style: TextStyle(fontSize: 20),),
              ),
              SizedBox(height: 30,),
              TextButton(
                onPressed: () => Navigator.pushNamed(context, '/percent'),
                style:  TextButton.styleFrom(
                  backgroundColor:  Colors.blueGrey,
                  foregroundColor:  Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 110, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text("คำนวณเปอร์เซ็นต์",style: TextStyle(fontSize: 20),),
              ),
            ],
          )
      ),
    );
  }
}