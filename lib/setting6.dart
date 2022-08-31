import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class setting6 extends StatefulWidget {
  const setting6({Key? key}) : super(key: key);

  @override
  State<setting6> createState() => _setting6State();
}
//알림설정
class _setting6State extends State<setting6> {
  bool stt = false;
  bool comu = false;
  bool withh = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            '위치공유 설정',
            style: TextStyle(color: Colors.black ),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(height: 20.0,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("푸쉬 알림 설정"),
                  CupertinoSwitch(
                    value: stt,
                    onChanged: (value) {
                      setState(() {
                        stt = value;
                      });
                    },
                    activeColor: Colors.green,
                  )
                ],

              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("소통 사운드 알림"),
                  Switch(
                    value: comu,
                    onChanged: (value) {
                      setState(() {
                        comu = value;
                      });
                    },
                    activeColor: Colors.green,
                  )
                ],

              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("소통 진동 알림"),
                  Switch(
                    value: comu,
                    onChanged: (value) {
                      setState(() {
                        comu = value;
                      });
                    },
                    activeColor: Colors.green,
                  )
                ],

              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("동행 사운드 알림"),
                  Switch(
                    value: withh,
                    onChanged: (value) {
                      setState(() {
                        withh = value;
                      });
                    },
                    activeColor: Colors.green,
                  )
                ],

              ),Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("동행 진동 알림"),
                  Switch(
                    value: withh,
                    onChanged: (value) {
                      setState(() {
                        withh = value;
                      });
                    },
                    activeColor: Colors.green,
                  )
                ],

              ),

            ],
          ),
        )
    );
  }
}