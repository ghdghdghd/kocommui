import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class setting1 extends StatefulWidget {
  const setting1({Key? key}) : super(key: key);

  @override
  State<setting1> createState() => _setting1State();
}
//계정 정보
class _setting1State extends State<setting1> {
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
            '계정 정보',
            style: TextStyle(color: Colors.black ),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
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



          ),
        )



    );

  }
}



class dddd extends StatelessWidget {
  const dddd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
