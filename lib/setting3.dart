import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class setting3 extends StatefulWidget {
  const setting3({Key? key}) : super(key: key);

  @override
  State<setting3> createState() => _setting3State();
}
//비상연락설정
class _setting3State extends State<setting3> {
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
            '비상 연락 설정',
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
              SizedBox(width: 958.0,height: 20.0),
              Container(

                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    //filled: true,
                    labelText: '이메일',
                  ),
                ),

              ),
              SizedBox(height: 20.0),
              Container(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //filled: true,
                      labelText: '비상 휴대 전화',
                      suffixIcon: TextButton(
                          onPressed: () => qwerqwettqr(),
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

class qwerqwettqr extends StatelessWidget {
  const qwerqwettqr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

