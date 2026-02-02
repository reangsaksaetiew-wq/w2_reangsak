import 'package:flutter/material.dart';

class Triangle extends StatefulWidget {
  const Triangle({super.key});
  @override
  State<Triangle> createState() => TriangleState();
}

class TriangleState extends State<Triangle> {

  //สูตร = ด้าน + ด้าน + ฐาน

  int _side = 0;
  int _base = 0;
  int _area = 0;

  TextEditingController _sideCtrl = TextEditingController();
  TextEditingController _baseCtrl = TextEditingController();


  void _calReg(){
    _side = int.tryParse(_sideCtrl.text) ?? 0 ;
    _base = int.tryParse(_baseCtrl.text) ?? 0 ;


    setState(() {
      _area = _side + _side + _base;
    });
  }

  final InputDecoration _textFieldStyle = InputDecoration(
    filled: true,
    fillColor: Colors.blue[50],
    border:  OutlineInputBorder(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("คำนวณเส้นรอบรูปสามเหลี่ยมหน้าจั่ว"), centerTitle: true,),
      body: Column(children: [
        SizedBox(height: 30,),
        Text("ด้าน $_side ซม. ยาว $_base ซม. พื้นที่คือ $_area ซม.", style: TextStyle(fontSize: 22),),
        SizedBox(height: 40,),
        TextField(
          controller: _sideCtrl,
          keyboardType: TextInputType.number,
          decoration: _textFieldStyle.copyWith(label: Text("ด้าน")),
        ),
        SizedBox(height: 40,),
        TextField(
          controller: _baseCtrl,
          keyboardType: TextInputType.number,
          decoration: _textFieldStyle.copyWith(label: Text("ฐาน")),
        ),
        SizedBox(height: 40,),
        ElevatedButton(onPressed: () => _calReg(),style: TextButton.styleFrom(
          backgroundColor:  Colors.blueAccent,
          foregroundColor:  Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 150, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ), child: Text('คำนวณ',style: TextStyle(fontSize: 20),),)
      ],),
    );
  }
}