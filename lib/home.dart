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
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.transparent,
            title: Text(
                '코코뮤',
                style: TextStyle(color: Colors.black)
            ),
            centerTitle: true,
            // 중앙정렬
            elevation: 0.0,
            leading: IconButton(
              icon: Icon(Icons.notifications), // 햄버거버튼 아이콘 생성
              onPressed: () {

                showDialog(
                    context: context,
                    barrierDismissible: true, // 바깥 영역 터치시 닫을지 여부
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: popNotice(),
                        insetPadding: const  EdgeInsets.fromLTRB(0,80,0, 80),
                        actions: [
                          // TextButton(
                          //   child: const Text('확인'),
                          //   onPressed: () {
                          //     Navigator.of(context).pop();
                          //   },
                          // ),
                        ],
                      );
                    }
                );



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



class popNotice extends StatefulWidget {
  const popNotice({Key? key}) : super(key: key);

  @override
  State<popNotice> createState() => _popNoticeState();
}

class _popNoticeState extends State<popNotice> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new),
            color: Colors.black,
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Text(
            '알림',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),

      ),

    );
  }
}
