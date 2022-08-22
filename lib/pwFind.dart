import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pwFind extends StatefulWidget {
  const pwFind({Key? key}) : super(key: key);

  @override
  State<pwFind> createState() => _pwFindState();
}

class _pwFindState extends State<pwFind> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50.0),
        Container(
          width: 500,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              //filled: true,
              labelText: '아이디',
            ),
          ),

        ),
        SizedBox(height: 20.0),
        Container(
          width: 500,
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                //filled: true,
                labelText: '휴대전화(-없이)',
                suffixIcon: TextButton(
                    onPressed: () => cccc(),
                    child: Text("전송"))
            ),
          ),
        )
      ],
    );
  }
}


class cccc extends StatelessWidget {
  const cccc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
