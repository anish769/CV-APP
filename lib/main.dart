import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Me App',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("My Profile App"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  children: const <Widget>[
                    CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/profile.jpeg")),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Anish Tiwari",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Software Devloper",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w600),
                    ),
                    Text(
                        "I am B.Sc CS& SE  student from University of Bedfordshire with proven research and devlopment skills. I am seeking a junior banker position to expand my Knowledge and Skills.",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "GoldleafBoldPersonalUseBold-eZ4dO"),
                        textAlign: TextAlign.justify)
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0, top: 3, bottom: 4.0),
              child: Text(
                "Social Links",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Card(
              elevation: 5.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      launch("https://www.facebook.com/anish.tiwari.10690203");
                    },
                    icon: const Icon(FontAwesomeIcons.facebook),
                    color: Colors.blue,
                  ),
                  IconButton(
                    onPressed: () {
                      launch("https://twitter.com/i/flow/login");
                    },
                    icon: const Icon(FontAwesomeIcons.twitter),
                    color: Colors.lightBlue
                  ),
                  IconButton(
                    onPressed: () {
                      launch("https://www.linkedin.com/in/anish-tiwari-331898201");
                    },
                    icon: const Icon(FontAwesomeIcons.linkedin),
                    color: Colors. blueGrey
                  ),
                  IconButton(
                    onPressed: () {
                      launch("https://www.instagram.com/anishtiwari769");
                    },
                    icon: const Icon(FontAwesomeIcons.instagram),
                    color: Colors.redAccent,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0, top: 5, bottom: 4.0),
              child: Text(
                "Skills",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const Card(
              elevation: 3.0,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/web.png"),
                  radius: 40.0,
                ),
                title: Text ("Web Development",style: TextStyle(fontSize: 17),),
                subtitle: Text (" HTML,CSS, JS, .Net, PHP")
              ),
            ),
            const Card(
              elevation: 3.0,
              child:  ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/mobile.jpg"),
                  radius: 40.0,
                ),
                title: Text ("Mobile Application Development",style: TextStyle(fontSize: 17),),
                subtitle: Text ("Dart,Flutter")
              ),
            ),
             const Card(
              elevation: 3.0,
              child:  ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/desktop.jpg"),
                  radius: 40.0,
                ),
                title: Text ("Desktop Application Developmnet",style: TextStyle(fontSize: 17),),
                subtitle: Text (".Net, C#, and Java")
              ),
            ),
             const Card(
              elevation: 3.0,
              child:  ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/R.jfif"),
                  radius: 40.0,
                ),
                title: Text ("Database Management",style: TextStyle(fontSize: 17),),
                subtitle: Text ("MySQL,Microsoft SQL Server")
              ),
            ),
          ],
        ),
      ),
    );
  }
}
