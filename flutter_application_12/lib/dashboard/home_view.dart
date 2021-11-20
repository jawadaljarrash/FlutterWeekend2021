import 'package:flutter/material.dart';
import 'package:flutter_application_12/appointment/appointment_home.dart';
import 'package:flutter_application_12/constants/pic_consts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'NavDrawer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // int currentIndex = 0;
  String dropdown;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        //title: Text('E Health'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SvgPicture.asset(kLogoSvgAsset),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              //TextField(),
              //burger(),
              //Text('data'),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(kMan),
              ),
            ],
          ),
          Container(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                gBox1(context),
                gBox2(context),
                gBox3(context),
                gBox4(context),
              ],
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(20),
            child: DropdownButtonHideUnderline(
              child: GFDropdown(
                padding: const EdgeInsets.all(15),
                borderRadius: BorderRadius.circular(10),
                border: const BorderSide(color: Colors.black12, width: 1),
                dropdownButtonColor: Colors.grey[300],
                // value: dropdownValue,
                onChanged: (newValue) {
                  setState(() {
                    // dropdownValue = newValue;
                  });
                },
                items: ['UI', 'Devops', 'API', 'Apps']
                    // return DropdownMenuItem

                    .map((value) => DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row burger() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: SvgPicture.asset(kBurger),
        ),
      ],
    );
  }
}

Widget gBox1(context) => Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Container(
        // height: 50.0,

        child: RaisedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => daig(context)));
          },
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
                  SizedBox(
                    height: 50,
                  ),
                  SvgPicture.asset(kDaig),
                  Text(
                    "Diagnose yourself!",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
Widget gBox2(context) => Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Container(
        // height: 50.0,

        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AppointmentHome()),
            );
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
          padding: EdgeInsets.symmetric(vertical: 0),
          child: Ink(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff22c1c3),
                    Color(0xff8653b8),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(30.0)),
            child: Container(
              constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  SvgPicture.asset(kappoinemnt),
                  Text(
                    "Book an Appoinment.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
Widget gBox3(context) => Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Container(
        // height: 50.0,

        child: RaisedButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
          padding: EdgeInsets.symmetric(vertical: 0),
          child: Ink(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffa9f3ff), Color(0xff4647c1)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(30.0)),
            child: Container(
              constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  SvgPicture.asset(kResult),
                  Text(
                    "Check your Lab results",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
Widget gBox4(context) => Padding(
    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
    child: Container(
      // height: 50.0,

      child: RaisedButton(
        onPressed: () {},
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.symmetric(vertical: 0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffaee2ee), Color(0xffd2aeee)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                SvgPicture.asset(kMed),
                Text(
                  "Check Your Medicine",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
Widget menu() => Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/svgs/burger.svg'),
                )),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {},
          ),
        ],
      ),
    );
@override
Widget daig(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Daignoses'),
      centerTitle: true,
    ),
    body: const WebView(
      initialUrl:
          'https://www.moh.gov.sa/HealthAwareness/MedicalTools/Pages/default.aspx',
      javascriptMode: JavascriptMode.unrestricted,
    ), // This trailing comma makes auto-formatting nicer for build methods.
  );
}
