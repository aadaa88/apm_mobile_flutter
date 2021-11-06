import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[300],
      child: const SizedBox(
        height: 70,
        child: TabBar(
          labelColor: Colors.blueAccent,
          unselectedLabelColor: Colors.blueGrey,
          indicatorColor: Colors.redAccent,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                size: 20,
              ),
              child: Text(
                '홈',
                style: TextStyle(fontSize: 10),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.star,
                size: 20,
              ),
              child: Text(
                '샘플',
                style: TextStyle(fontSize: 10),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.add,
                size: 20,
              ),
              child: Text(
                '생성',
                style: TextStyle(fontSize: 10),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.read_more,
                size: 20,
              ),
              child: Text(
                '읽기',
                style: TextStyle(fontSize: 10),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.edit,
                size: 20,
              ),
              child: Text(
                '수정',
                style: TextStyle(fontSize: 10),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.delete,
                size: 20,
              ),
              child: Text(
                '삭제',
                style: TextStyle(fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
