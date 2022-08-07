import 'package:flutter/material.dart';
import 'package:kocommui/home.dart';


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
                Image.asset('assets/diamond.png'),
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
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text('로그인'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                ),
                RaisedButton(
                  child: Text('계정찾기'),
                  onPressed: () {
                    Navigator.pop(context);
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


