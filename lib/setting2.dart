import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class setting2 extends StatefulWidget {
  const setting2({Key? key}) : super(key: key);

  @override
  State<setting2> createState() => _setting2State();
}
//비밀번호 변경
class _setting2State extends State<setting2> {
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
          '비밀번호 변경',
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
                labelText: '이름',
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
                  labelText: '휴대전화(-없이)',
                  suffixIcon: TextButton(
                      onPressed: () => asdf(),
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


class asdf extends StatefulWidget {
  const asdf({Key? key}) : super(key: key);

  @override
  State<asdf> createState() => _asdfState();
}

class _asdfState extends State<asdf> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
