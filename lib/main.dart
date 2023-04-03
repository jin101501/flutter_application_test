import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/text.dart';
// import 'package:flutter/src/widgets/basic.dart';

void main() => (runApp(const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charactor card', //타이틀 지정을 해준다.
      // theme: ThemeData(primarySwatch: Colors.blue), // 기본적인 디자인 테마지정
      home: Mycard(),
    );
  }
}

class Mycard extends StatelessWidget {
  const Mycard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //앱의 상단부분에 바를 만든다.
        title: Text('BBANTO'),
        centerTitle: true, //앱의 상단 부분의 바의 정렬을 센터로 해준다.
        backgroundColor: Colors.redAccent, // 배경색을 지정하는 역할을 수행한다.
        elevation: 0.0, // 엘러그레이션 높이라는 뜻으로 앱이 븡 떠있는 느낌의 효과를 나타낸다.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text('Hello'), Text('Hello'), Text('Hello')],
        ),
      ),
    ); //  앱화면에 다양한 것들을 표현할 수있도록 해준다(빈도화지 역할이라고 보면된다.)
  }
}
