import 'package:aplicationbdd/views/Component/AppBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class  PageHome extends StatelessWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:PreferredSize(
    preferredSize: Size.fromHeight(50),
child: appBar(),
    ),
body: SafeArea(
  child: Column(
    children: [
      Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30),
      child: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan( text:'Bonjour ',
                style: GoogleFonts.outfit(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                    ),
                ),
            ),
            TextSpan(text: 'Monsieur X,',style: GoogleFonts.outfit(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                fontSize: 15,
              ),
            ),)
          ],
        ),
      ),),
    ],
  ),

),
);
  }
}


