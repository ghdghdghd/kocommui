import 'package:flutter/material.dart';
import 'package:kocommui/home.dart';
import 'package:kocommui/memberFind.dart';


void main() {
  runApp(
      MaterialApp(
        home: MyApp()
      )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset(
                    'assets/images/TG.png',
                    width: 100,
                    height: 100,
                ),
                SizedBox(height: 16.0),
                Text('코코뮤'),
              ],
            ),
            SizedBox(height: 120.0),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 10.0,),
            RaisedButton(
              child: Text('로그인'),
              onPressed: () {
                _usernameController.clear();
                _passwordController.clear();
              },
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text('아이디 찾기'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => memberFind())
                    );
                  },
                ),

                Text("|"),
                FlatButton(
                  child: Text('비밀번호 찾기'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => memberFind())
                    );
                  },
                ),
              ],
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
             Navigator.pushReplacement(
                 context,
                 MaterialPageRoute(builder: (context) => Home()),
             );
          },

      ),
    );
  }
}



//
// //환경 설정 페이지
// class settings extends StatefulWidget {
//   const settings({Key? key}) : super(key: key);
//
//   @override
//   State<settings> createState() => _notifilcationsState();
// }
//
// class _notifilcationsState extends State<settings> {
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Column(
//           children: [
//             Row(children: [
//               IconButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   icon: Icon(Icons.arrow_back_ios_new)
//               )],
//             ),
//             Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                 TextButton(
//                   onPressed: () => setting1(),
//                   child: Text('계정정보'))
//             ]),
//             Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   TextButton(
//                       onPressed: () => setting2(),
//                       child: Text('계정정보'))
//                 ]),
//
//
//           ]),
//
//
//
//
//
//     );
//   }
// }


