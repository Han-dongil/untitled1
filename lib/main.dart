import 'package:flutter/material.dart';
import 'package:untitled1/sub/firstPage.dart';
import 'package:untitled1/sub/secondPage.dart';
import './test.dart';

import 'untitled1/sub/test.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  var controller;
  List<Test> apples=[];

  @override
    void initState(){
      super.initState();
      controller = TabController(length: 2, vsync: this);

      apples.add(Test(name :"사과1" , num:"1", imagePath:"repo/images/apple_000006_2.jpg", eatExist: true));
      apples.add(Test(name :"사과2" , num:"2", imagePath:"repo/images/apple_000006_4.jpg", eatExist: true));
      apples.add(Test(name :"사과3" , num:"3", imagePath:"repo/images/apple_000006_5.jpg", eatExist: true));

    }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('TabBar Example'),
      ),
      body: TabBarView(
        children: [FirstApp(list: apples, key: null,),SecondApp(list: apples, key: null,)],
        controller: controller,
      ),
      bottomNavigationBar:TabBar(
        tabs:[
        Tab(icon: Icon(Icons.looks_one, color: Colors.blue),text:"첫번째화면"),
        Tab(icon: Icon(Icons.looks_two, color: Colors.blue),text:"두번째화면")
        ],controller:controller,
      )
    );
  }
}


