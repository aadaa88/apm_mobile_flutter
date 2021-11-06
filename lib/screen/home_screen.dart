import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() => super.initState();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
            margin: const EdgeInsets.only(top: 50),
            alignment: Alignment.center,
            child: const Text(
              'CRUD - 데이터 처리!',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            )),
        Container(
            margin: const EdgeInsets.only(top: 50, left: 40),
            alignment: Alignment.topLeft,
            child: const Text(
              'C --> Create (데이터 생성)\nR --> Read (데이터 읽기)\nU --> Update (데이터 수정)\nD --> Delete (데이터 삭제)',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.white),
            )),
        Container(
            margin: const EdgeInsets.only(top: 30, left: 10),
            alignment: Alignment.topLeft,
            child: const Text(
              '''
     CRUD는 대부분의 컴퓨터 소프트웨어가 가지는 기본적인 데이터 처리 기능인 Create(생성), Read(읽기), Update(갱신), Delete(삭제)를 묶어서 일컫는 말이다. 사용자 인터페이스가 갖추어야 할 기능(정보의 참조/검색/갱신)을 가리키는 용어로서도 사용된다.''',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                  color: Colors.white),
            )),
        Container(
            margin: const EdgeInsets.only(right: 10),
            alignment: Alignment.topRight,
            child: const Text(
              'https://ko.wikipedia.org/wiki/CRUD',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  color: Colors.blue),
            )),
      ],
    );
  }
}
