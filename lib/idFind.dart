import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class idFind extends StatefulWidget {
  const idFind({Key? key}) : super(key: key);

  @override
  State<idFind> createState() => _idFindState();
}

class _idFindState extends State<idFind> {

  static const String _title = 'Flutter Code Sample';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title : _title,
      home: Scaffold(

        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),

    );
  }
}

enum SingingCharacter { phone, email }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {


  SingingCharacter? _character = SingingCharacter.phone;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('휴대전화'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.phone,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        SizedBox(height: 20.0,),
        _character == SingingCharacter.phone
            ? phoneIdFind()
            : Container(),
        ListTile(
          title: const Text('이메일'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.email,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),

        _character == SingingCharacter.email
            ? emailIdFind()
            : Container(),


      ],
    );
  }
}



class phoneIdFind extends StatefulWidget {
  const phoneIdFind({Key? key}) : super(key: key);

  @override
  State<phoneIdFind> createState() => _phoneIdFindState();
}

class _phoneIdFindState extends State<phoneIdFind> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 500,
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
          width: 500,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              //filled: true,
              labelText: '휴대전화(-없이)',
              suffixIcon: TextButton(
                  onPressed: () => ddddd(),
                  child: Text("전송"))
            ),
          ),
        )
      ],
    );
  }
}




class emailIdFind extends StatefulWidget {
  const emailIdFind({Key? key}) : super(key: key);

  @override
  State<emailIdFind> createState() => _emailIdFindState();
}

class _emailIdFindState extends State<emailIdFind> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 500,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              //filled: true,
              labelText: '이메일',
              suffixIcon: TextButton(
                  onPressed: ()=>ddddd(),
                  child: Text("전송"))
            ),
          ),

        ),

      ],
    );
  }
}


class ddddd extends StatelessWidget {
  const ddddd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
