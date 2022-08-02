import 'package:flutter/material.dart';
import 'package:kocommui/settings.dart';


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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('코코뮤'),
            centerTitle: true, // 중앙정렬
            elevation: 0.0,
            leading: IconButton(
            icon: Icon(Icons.notifications), // 햄버거버튼 아이콘 생성
            onPressed: () {
            // 아이콘 버튼 실행
            print('menu button is clicked');
            },
          ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.settings), // 장바구니 아이콘 생성
                onPressed: () {
                  Navigator.push(
                    context,
                   MaterialPageRoute(builder: (context) => settings()),
                  );
                },
              ),
              // IconButton(
              //   icon: Icon(Icons.search), // 검색 아이콘 생성
              //   onPressed: () {
              //     // 아이콘 버튼 실행
              //     print('Search button is clicked');
              //   },
              // ),
            ],
          ),

          body: TabBarView(
            children: [
              Center(
                child: Text("chat"),
              ),
              Center(
                child: Text("map"),
              ),

            ],
          ),
          extendBodyBehindAppBar: true, // add this line

          bottomNavigationBar: Container(
            color: Colors.white, //색상
            child: Container(
              height: 70,
              padding: EdgeInsets.only(bottom: 10, top: 5),
              child: const TabBar(
                //tab 하단 indicator size -> .label = label의 길이
                //tab 하단 indicator size -> .tab = tab의 길이
                indicatorSize: TabBarIndicatorSize.label,
                //tab 하단 indicator color
                indicatorColor: Colors.red,
                //tab 하단 indicator weight
                indicatorWeight: 2,
                //label color
                labelColor: Colors.red,
                //unselected label color
                unselectedLabelColor: Colors.black38,
                labelStyle: TextStyle(
                  fontSize: 13,
                ),
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.chat_outlined,
                    ),
                    text: 'chat',
                  ),
                  Tab(
                    icon: Icon(Icons.map_outlined),
                    text: 'map',
                  ),
                ],


              ),
            ),
          ),
        ),
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


