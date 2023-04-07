import 'package:flutter/material.dart'; //플러터를 사용하여 앱을 만들 때 제일 먼저 작성하게 되는 코드
import 'package:flutter_application_test/main.dart';

void main() => runApp(MyApp()); // 가장 먼저 참조되는 main() 함수.

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //flutter material 라이브러리를 사용할 수 있는 기능을 가진 위젯
      title: 'Appbar', //앱을 총칭하는 기본 타이틀
      theme: ThemeData(primarySwatch: Colors.red), //앱의 기본적인 디자인 테마를 지정하는 속성
      home: MyPage(), //앱이 정상적으로 실행되었을때 가장 먼저 화면에 보여주는 경로
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          // 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할 때
          icon: Icon(Icons.menu),
          onPressed: () {
            // 함수의 형태로 일반 버튼이나 아이콘 버튼을 터치했을 때 일어나는 이벤트를 정의 하는 곳
            print('menu boutton is clicked');
          },
        ),
        actions: <Widget>[
          //복수의 아이콘 버튼 등을 오론쪽에 배치할 때
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print('Shopping cart boutton is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print('Search boutton is clicked');
            },
          ),
        ],
      ),
    );
  }
}
