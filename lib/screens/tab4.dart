import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'dart:async';

import 'package:url_launcher/url_launcher.dart';

class Tab4 extends StatefulWidget {
  @override
  _Tab4State createState() => _Tab4State();
}

class _Tab4State extends State<Tab4> {

  @override
  void initState() {
    super.initState();
    print('Tab4 instantiated');
  }
  @override


  Widget build(BuildContext context) {
    print('Tab4 built');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Më shumë'),

      ),
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              karta(),
              tekst(),
              tekst2(),
            ],

          )

        ],
      )

    );
  }}

Widget karta() {
  return Container(
    height: 350,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Image.asset(
          "assets/images/splash.png",
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        elevation: 15,
        margin: EdgeInsets.all(10),
      ));

}

Widget tekst(){
  return Text(
    'QytetarIN nga Qendresa Qytetare',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
  );
}

Widget tekst2(){
  return Linkify(
          onOpen: _onOpen,
    style: TextStyle(fontSize: 18),
    text: "\n\nPër më shumë kliko: https://qq.com.al\n\nE-Mail: qendresaqytetare@gmail.com \n\n\n Swipe up për të dalë nga appi!",
        );
  
}

Future<void> _onOpen(LinkableElement link) async {
  if (await canLaunch(link.url)) {
    await launch(link.url);
  } else {
    throw 'Could not launch $link';
  }
}



//
//    return Scaffold(
////      appBar: AppBar(
////        title: const Text('App EXIT Test'),
//
////      ),
////      body: Center(
////        child: const Text('Shtyp buttonin e kuq per te dale nga appi!'),
////      ),
//      body: dil(),
//      floatingActionButton: FloatingActionButton.extended(
////        onPressed: () {
////          // Add your onPressed code here!
////          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
////        },
//        label: Text('Swipe up për të mbyllur aplikacionin'),
//        tooltip: 'Mbylle pra',
//        icon: new Icon(Icons.exit_to_app),
//        backgroundColor: Colors.white,
//        foregroundColor: Colors.black,
//        focusColor: Colors.red,
//        hoverColor: Colors.red,
//        splashColor: Colors.red,
//      ),
//    );
//  }
//
//  Widget dil(){
//    return Container(
//      decoration: new BoxDecoration(
//        image: new DecorationImage(
//          image: new AssetImage("assets/images/splash.png"),
//          fit: BoxFit.fill,
//        ),
//      ),
//    );
//  }
//}