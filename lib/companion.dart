
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class companion extends StatefulWidget {
  const companion({Key? key}) : super(key: key);

  @override
  State<companion> createState() => _companionState();
}

class _companionState extends State<companion> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100.0,),
        Card(
          shape: RoundedRectangleBorder( //모서리 둥글게 하기 위해 사용
              borderRadius : BorderRadius.circular(16.0)
          ),
          elevation: 4.0 ,//그림자 깊이
          child: Container(
            padding: EdgeInsets.fromLTRB(150, 50, 150, 50),
            child: Column(
              children: [
                Text("여행동행"),
                Text("프랑스 칸")


              ],
            ),
          ),
        )
      ],
    );
  }
}
