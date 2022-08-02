import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kocommui/setting1.dart';
import 'package:kocommui/setting2.dart';
import 'package:kocommui/setting3.dart';
import 'package:kocommui/setting4.dart';
import 'package:kocommui/setting5.dart';
import 'package:kocommui/setting6.dart';

//환경 설정 페이지
class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _notifilcationsState();
}

class _notifilcationsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
          children: [
            Row(children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_new)
              )],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () => setting1(),
                      child: Text('계정정보'))
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () => setting2(),
                      child: Text('비밀번호변경'))
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () => setting3(),
                      child: Text('비상연락설정'))
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () => setting4(),
                      child: Text('위치공유설정'))
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () => setting5(),
                      child: Text('대화기록'))
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () => setting6(),
                      child: Text('알림설정'))
                ]),


          ]),





    );
  }
}