import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/text.dart';
// import 'package:flutter/src/widgets/basic.dart';

void main() => (runApp(const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //상단의 debug라는 빨간띠를 제거할 때 사용한다.
      title: 'Charactor card', //타이틀 지정을 해준다.
      // theme: ThemeData(primarySwatch: Colors.blue), // 기본적인 디자인 테마지정
      home: Mycard(), //앱이 실행되면 가장먼저 보이는 경로
    );
  }
}

class Mycard extends StatelessWidget {
  //동적인 부분이 하나라도 구현이 되지 않았기 때문에 StatelessWidget
  const Mycard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800], //앱의 전체적인 배경색을 지정한다.
      appBar: AppBar(
        //앱의 상단부분에 바를 만든다.
        title: Text('BBANTO'),
        centerTitle: true, //앱의 상단 부분의 바의 정렬을 센터로 해준다.
        backgroundColor: Colors.amber[700],
        // backgroundColor: Colors.redAccent, // 배경색을 지정하는 역할을 수행한다.
        elevation: 0.0, // 엘러그레이션 높이라는 뜻으로 앱이 븡 떠있는 느낌의 효과를 나타낸다.
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            30.0, 40.0, 0.0, 0.0), //위, 아래, 왼쪽, 오른쪽의 여백에 대한 너비를 설정한다(padding)
        //Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, // 가로축 정렬
            children: <Widget>[
              //[]안에 정렬된 widget을 나열한다.
              Center(
                child: CircleAvatar(// 이미지를 원형으로 만들어 넣고자 할때 사용
                  backgroundImage: AssetImage('assets/images/tamamo.jpg'),
                  radius: 60.0,
                ),
              ),
              Divider(//기복적으로 가로 구분선을 넣는다.
                height: 60.0,
                color: Colors.grey[850],
                thickness: 0.5,
                endIndent: 30.0,
              ),
              Text(
                'Name',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0 //철자 간의 간격을 지정하는 부분이다.
                    ),
              ),
              SizedBox(
                // 보이지 않는 박스를 넣어 문자간의 간격을 주고자 할 때사용한다.(height, weidth)
                height: 10.0,
              ),
              Text(
                'BBANTO',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'BBANTO POWER LEVEL',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0 //철자 간의 간격을 지정하는 부분이다.
                    ),
              ),
              SizedBox(
                // 보이지 않는 박스를 넣어 문자간의 간격을 주고자 할 때사용한다.(height, weidth)
                height: 10.0,
              ),
              Text(
                '14',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                // 복수의 widget을 가로로 나열하고자 할때 사용한다.
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'using lightsaber',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                  )
                ],
              ),
              Row(
                // 복수의 widget을 가로로 나열하고자 할때 사용한다.
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'face hero tattoo',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                  )
                ],
              ),
              Row(
                // 복수의 widget을 가로로 나열하고자 할때 사용한다.
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'fire flames',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                  )
                ],
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/umamusme.gif'),
                  radius: 40.0,
                  backgroundColor: Colors.amber[800],
                ),
              )
            ]
            // mainAxisAlignment: MainAxisAlignment.center,
            // children: <Widget>[Text('Hello'), Text('Hello'), Text('Hello')],
            ),
      ),
    ); //  앱화면에 다양한 것들을 표현할 수있도록 해준다(빈도화지 역할이라고 보면된다.)
  }
}
