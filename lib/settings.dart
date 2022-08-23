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
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
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
            SizedBox(height: 10.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        textStyle: TextStyle(fontSize: 30)
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => setting1())
                        );
                      },
                      child: Text('계정정보'))
                ]),
            SizedBox(height: 10.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle: TextStyle(fontSize: 30)
                      ),
                      onPressed: () => setting2(),
                      child: Text('비밀번호변경'))
                ]),
            SizedBox(height: 10.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle: TextStyle(fontSize: 30)
                      ),
                      onPressed: () => setting3(),
                      child: Text('비상연락설정'))
                ]),
            SizedBox(height: 10.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle: TextStyle(fontSize: 30)
                      ),
                      onPressed: () => setting4(),
                      child: Text('위치공유설정'))
                ]),
            SizedBox(height: 10.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle: TextStyle(fontSize: 30)
                      ),
                      onPressed: () => setting5(),
                      child: Text('대화기록'))
                ]),
            SizedBox(height: 10.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle: TextStyle(fontSize: 30)
                      ),
                      onPressed: () => setting6(),
                      child: Text('알림설정'))
                ]),


          ]),





    );
  }
}