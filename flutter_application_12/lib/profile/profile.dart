import 'package:flutter/material.dart';

import 'user.dart';
import 'user_preferences.dart';
import 'widget/appbar_widget.dart';
import 'widget/button_widget.dart';
import 'widget/numbers_widget.dart';
import 'widget/profile_widget.dart';

class profile extends StatefulWidget {
  const profile({ Key key }) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {

final user = UserPreferences.myUser;



return Scaffold(
backgroundColor: Colors.white,
         appBar: buildAppBar(context),
      body: Column(
        
        children: [
          Container(
            height: 380,
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                
                ProfileWidget(
                  imagePath: user.imagePath,
                  onClicked: () async {},
                ),
                const SizedBox(height: 24),
                buildName(user),
                const SizedBox(height: 24),
                Center(child: buildUpgradeButton()),
                const SizedBox(height: 24),
                NumbersWidget(),
                const SizedBox(height: 48),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(width: 70,),
              gBox1(),
            ],
          ),
        Row(
          children: [
            SizedBox(width: 70,),
            gBox2()
          ],
        ),
        
        Row(
          children: [
            SizedBox(width: 70,),
            gBox3()
          ],
        )
        
        ],
      ),
      

    );
  }
  Widget gBox1() => Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Container(
        // height: 50.0,
        width: 200,

        child: RaisedButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
          padding: EdgeInsets.symmetric(vertical: 0),
          child: Ink(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff090979), Color(0xff64B6FF)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(30.0)),
            child: Container(
              constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "Phone Number",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );



Widget gBox2() => Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Container(
        // height: 50.0,
        width: 200,

        child: RaisedButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
          padding: EdgeInsets.symmetric(vertical: 0),
          child: Ink(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff090979), Color(0xff64B6FF)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(30.0)),
            child: Container(
              constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "Social Status",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );



Widget gBox3() => Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Container(
        // height: 50.0,
        width: 200,

        child: RaisedButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
          padding: EdgeInsets.symmetric(vertical: 0),
          child: Ink(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff090979), Color(0xff64B6FF)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(30.0)),
            child: Container(
              constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "Email Address",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

















Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );
    
Widget buildUpgradeButton() => ButtonWidget(
        text: 'Edit Profile',
        onClicked: () {},
      );


 









}