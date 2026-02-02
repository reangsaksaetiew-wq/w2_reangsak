import 'package:flutter/material.dart';

class Rectangle extends StatefulWidget {
  const Rectangle({super.key});
  @override
  State<Rectangle> createState() => RectangleState();
}

class RectangleState extends State<Rectangle> {

  //พื้นที่สี่เหลี่ยม = กว้าง * ยาว
  //Output = Inout * Input
  //

  int _width = 0;
  int _lenght = 0;
  int _area = 0;

  TextEditingController _widthCtrl = TextEditingController();
  TextEditingController _lengthCtrl = TextEditingController();


  void _calReg(){
    _width = int.tryParse(_widthCtrl.text) ?? 0 ;
    _lenght = int.tryParse(_lengthCtrl.text) ?? 0 ;


    setState(() {
      _area = _width * _lenght;
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
      appBar: AppBar(title: Text("คำนวณพื้นที่สี่เหลี่ยม"), centerTitle: true,),
      body: Column(children: [
        SizedBox(height: 30,),
        Text("กว้าง $_width ม. ยาว $_lenght ม. พื้นที่คือ $_area ตร.ม.", style: TextStyle(fontSize: 22),),
        SizedBox(height: 40,),
        TextField(
          controller: _widthCtrl,
          keyboardType: TextInputType.number,
          decoration: _textFieldStyle.copyWith(label: Text("ความกว้าง")),
        ),
        SizedBox(height: 40,),
        TextField(
          controller: _lengthCtrl,
          keyboardType: TextInputType.number,
          decoration: _textFieldStyle.copyWith(label: Text("ความยาว")),
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