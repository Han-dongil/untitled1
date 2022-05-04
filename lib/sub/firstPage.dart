import 'package:flutter/material.dart';
import '../test.dart';

class FirstApp extends StatelessWidget{
  var list;
  FirstApp({required Key? key, required this.list}) : super(key:key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Center(
          child:ListView.builder(itemBuilder: (context,position){
            return GestureDetector(
              child: Card(
                child: Row(
                  children:<Widget>[
                    Image.asset(
                      list[position].imagePath,
                      height: 100,
                      width:100,
                      fit: BoxFit.contain,
                    ),
                    Text(list[position].name)
                  ],
                ),
              ),
              onTap:(){
                AlertDialog dialog =AlertDialog(
                  content : Text(
                    '이 사과는${list[position].num}번 사과입니다',
                    style: TextStyle(fontSize: 30.0),
                  ),
                );
                showDialog(
                    context: context,
                    builder: (BuildContext context) => dialog
                );
              }
            );

          },
          itemCount: list.length),
        )
      )
    );
  }
}