import 'package:flutter/material.dart';
import 'package:kocommui/settings.dart';




class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}



class _HomeState extends State<Home> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('코코뮤'),
            centerTitle: true,
            // 중앙정렬
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
                icon: Icon(Icons.settings), // 설정 버튼
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
