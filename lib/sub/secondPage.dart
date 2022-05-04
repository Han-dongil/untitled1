import 'package:flutter/material.dart';
import '../test.dart';

class SecondApp extends StatelessWidget{
  @override
  State<StatefulWidget> createState() => _SecondApp();
  late final List<Test> list;
  SecondApp({required Key? key, required this.list}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}




class _SecondApp extends State<StatefulWidget>{
  final nameController = TextEditingController();
  int? _radioValue=0;
  bool? eatExist = false;
  late String aa='a';

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body:Container(
          child: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller : nameController,
                  keyboardType : TextInputType.text,
                  maxLines:1,
                ),
                Row(
                    children: <Widget>[
                      Radio(value:0, groupValue : _radioValue, onChanged : _radioChange,),
                      Text('1번'),
                      Radio(value:1, groupValue : _radioValue, onChanged : _radioChange,),
                      Text('2번'),
                      Radio(value:2, groupValue : _radioValue, onChanged : _radioChange,),
                      Text('3번'),

                    ]
                ),
                Row(
                  children : <Widget>[
                    Text("먹기가능?"),
                    Checkbox(
                        value: eatExist,
                        onChanged:(check){
                          setState((){
                            eatExist = check;
                          });

                        }
                    )
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }

  _radioChange(int? value){
    setState(() {
      _radioValue=value;
    });

  }

}
