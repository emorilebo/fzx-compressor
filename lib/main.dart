import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

void main() => runApp(MyApp());

//final Uri _url = Uri.parse('https://compressnow.com/');

const String _url = 'https://compressnow.com/';

class MyApp extends StatelessWidget {
  void _launchURL() async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text("FZX Compressor", style: TextStyle(color: Colors.amber),),
            ),
            backgroundColor: Colors.white,
          ),
          body: SafeArea(
            child: Container(

              child: Center(
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [

                        TextSpan(
                            text: "Compreess Here",
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.amber,
                              //decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                _launchURL();
                              }),
                      ]))),
            ),
          )),
    );
  }
}
