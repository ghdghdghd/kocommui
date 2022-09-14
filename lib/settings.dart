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
            SizedBox(height: 13.0),
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
              children: [Row(

                children: [
                  Column(
                    children: [
                      Icon(Icons.account_circle,
                        size: 60,),
                      ElevatedButton(
                          onPressed: () => dddd(),
                          child: Text("프로필 사진 변경")),

                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("이름:",style: TextStyle(fontSize: 15.0)),
                      Text("닉네임:",style: TextStyle(fontSize: 15.0)),
                      Text("이메일:",style: TextStyle(fontSize: 15.0)),
                    ],),
                  Column(children: [

                    Text("제임슨",style: TextStyle(fontSize: 15.0)),
                    Text("제머슨",style: TextStyle(fontSize: 15.0)),
                    Text("제머슨@gmail.com",style: TextStyle(fontSize: 15.0)),
                  ],)

                ],

              )],


                ),
            Container(width: 500,
                child: Divider(color: Colors.grey, thickness: 1.0, height: 30,)),
            SizedBox(height: 10.0),
            // Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       TextButton(
            //           style: TextButton.styleFrom(
            //             primary: Colors.black,
            //             textStyle: TextStyle(fontSize: 30)
            //           ),
            //           onPressed: () {
            //             Navigator.push(
            //                 context,
            //                 MaterialPageRoute(builder: (context) => setting1())
            //             );
            //           },
            //           child: Text('계정정보'))
            //     ]),
            // SizedBox(height: 10.0),
            // Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       TextButton(
            //           style: TextButton.styleFrom(
            //               primary: Colors.black,
            //               textStyle: TextStyle(fontSize: 30)
            //           ),
            //           onPressed: () {
            //             Navigator.push(
            //                 context,
            //                 MaterialPageRoute(builder: (context) => setting2())
            //             );
            //           },
            //           child: Text('비밀번호변경'))
            //     ]),
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
                            MaterialPageRoute(builder: (context) => setting3())
                        );
                      },
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => setting4())
                        );
                      },
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => setting5())
                        );
                      },
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => setting6())
                        );
                      },
                      child: Text('알림설정'))
                ]),


          ]),





    );
  }
}