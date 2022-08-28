import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class setting4 extends StatefulWidget {
  const setting4({Key? key}) : super(key: key);

  @override
  State<setting4> createState() => _setting4State();
}
//위치공유설정
class _setting4State extends State<setting4> {
  bool stt = false;

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
                children: [Text("나의 위치 공유"),
                  Switch(
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
              SizedBox(width: 958.0,height: 20.0),
              Container(
                width: 300,

                child:  Switch(
                  value: stt,
                  onChanged: (value) {
                    setState(() {
                      stt = value;
                    });
                  },
                  activeColor: Colors.green,
                ),
                    
              
              ),
              SizedBox(height: 20.0),
              Container(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //filled: true,
                      labelText: '휴대전화(-없이)',
                      suffixIcon: TextButton(
                          onPressed: () => wewe(),
                          child: Text("전송"))
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}


class wewe extends StatefulWidget {
  const wewe({Key? key}) : super(key: key);

  @override
  State<wewe> createState() => _weweState();
}

class _weweState extends State<wewe> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
