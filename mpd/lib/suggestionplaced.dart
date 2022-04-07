import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mpd/widget/appbar_widget.dart';
class SuggestionPlacedPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      // ),
        appBar: buildAppBar(context),
        backgroundColor: Colors.greenAccent,
        body: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child:
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 20,
              child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("images/highFive.png"),
                      Text("Thanks for your suggestion",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold))
                    ],
                  )
              )

            )
          )
      )
    );
  }
}