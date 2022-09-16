import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kocommui/setting1.dart';
import 'package:kocommui/setting2.dart';
import 'package:kocommui/setting3.dart';
import 'package:kocommui/setting4.dart';
import 'package:kocommui/setting5.dart';
import 'package:kocommui/setting6.dart';




//환경 설정 페이지
class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {

  PickedFile _imageFile; // 카메라/갤러리에서 사진 가져올 때 사용함 (image_picker)
  final ImagePicker _picker = ImagePicker(); // 카메라/갤러리에서 사진 가져올 때 사용함 (image_picker)

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
          children: [
            SizedBox(height: 13.0),
            Row(children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_new)
              )],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Row(

                children: [
                  Column(
                    children: [
                      imageProfile(),
                      ElevatedButton(
                          onPressed: () => dddd(),
                          child: Text("프로필 사진 변경")),

                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("이름:",style: TextStyle(fontSize: 15.0)),
                      Text("나이:",style: TextStyle(fontSize: 15.0)),
                      Text("이메일:",style: TextStyle(fontSize: 15.0)),
                    ],),
                  Column(children: [

                    Text("제임슨",style: TextStyle(fontSize: 15.0)),
                    Text("20대",style: TextStyle(fontSize: 15.0)),
                    Text("제머슨@gmail.com",style: TextStyle(fontSize: 15.0)),
                  ],)

                ],

              )],


                ),
            Container(width: 500,
                child: Divider(color: Colors.grey, thickness: 1.0, height: 30,)),
            SizedBox(height: 10.0),
            // Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       TextButton(
            //           style: TextButton.styleFrom(
            //             primary: Colors.black,
            //             textStyle: TextStyle(fontSize: 30)
            //           ),
            //           onPressed: () {
            //             Navigator.push(
            //                 context,
            //                 MaterialPageRoute(builder: (context) => setting1())
            //             );
            //           },
            //           child: Text('계정정보'))
            //     ]),
            // SizedBox(height: 10.0),
            // Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       TextButton(
            //           style: TextButton.styleFrom(
            //               primary: Colors.black,
            //               textStyle: TextStyle(fontSize: 30)
            //           ),
            //           onPressed: () {
            //             Navigator.push(
            //                 context,
            //                 MaterialPageRoute(builder: (context) => setting2())
            //             );
            //           },
            //           child: Text('비밀번호변경'))
            //     ]),
            SizedBox(height: 10.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle: TextStyle(fontSize: 30)
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => setting3())
                        );
                      },
                      child: Text('비상연락설정'))
                ]),
            SizedBox(height: 10.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle: TextStyle(fontSize: 30)
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => setting4())
                        );
                      },
                      child: Text('위치공유설정'))
                ]),
            SizedBox(height: 10.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle: TextStyle(fontSize: 30)
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => setting5())
                        );
                      },
                      child: Text('대화기록'))
                ]),
            SizedBox(height: 10.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle: TextStyle(fontSize: 30)
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => setting6())
                        );
                      },
                      child: Text('알림설정'))
                ]),


          ]),





    );
  }
  Widget imageProfile() {
    return Center(

      child: Stack(
        children: <Widget>[
          CircleAvatar(
            radius: 80,
            backgroundImage: _imageFile == null
                ? AssetImage('assets/profile.jfif')
                : FileImage(File(_imageFile.path)),
          ),
          Positioned(
              bottom: 20,
              right: 20,
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(context: context, builder: ((builder) => bottomSheet()));
                },
                child: Icon(
                  Icons.camera_alt,
                  color: secondaryTextColor,
                  size: 40,
                ),
              )
          )
        ],
      ),
    );
  }

  Widget nameTextField() {
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: primaryTextColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: secondaryTextColor,
              width: 2,
            ),
          ),
          prefixIcon: Icon(
            Icons.person,
            color: primaryTextColor,
          ),
          labelText: 'Name',
          hintText: 'Input your name'
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20
        ),
        child: Column(
          children: <Widget>[
            Text(
              'Choose Profile photo',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton.icon(
                  icon: Icon(Icons.camera, size: 50,),
                  onPressed: () {
                    takePhoto(ImageSource.camera);
                  },
                  label: Text('Camera', style: TextStyle(fontSize: 20),),
                ),
                FlatButton.icon(
                  icon: Icon(Icons.photo_library, size: 50,),
                  onPressed: () {
                    takePhoto(ImageSource.gallery);
                  },
                  label: Text('Gallery', style: TextStyle(fontSize: 20),),
                )
              ],
            )
          ],
        )
    );
  }

    final pickedFile = await _picker.getImage(source: source);
    setState(() {
      _imageFile = pickedFile;
    });
  }
}




}