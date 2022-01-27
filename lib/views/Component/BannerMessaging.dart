import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
/*---------------------- Banner Messaging ----------------------------*/
class BannerMessaging extends StatelessWidget {
  BannerMessaging({Key? key,}) : super(key: key);

/*----------------  string bannerMessaging --------------*/
  String messageUn = 'Bonjour,';
  String messageDeux = ' Connectez-vous';

  @override
  Widget build(BuildContext context) {
    return Container(
      height:MediaQuery.of(context).size.height *0.3,
      width: MediaQuery.of(context).size.width * 1,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: RichText(
          textDirection: TextDirection.ltr,

          text:TextSpan(
            children: <TextSpan>[
              TextSpan(text: messageUn,
                  style: GoogleFonts.outfit(
                      textStyle:
                      TextStyle(color:Colors.white.withOpacity(0.8),
                        fontSize: 80,
                        fontWeight: FontWeight.w600,)
                  )
              ),
              TextSpan(text:messageDeux,
                  style: GoogleFonts.josefinSans(
                      textStyle: TextStyle(color:Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.w600,
                          shadows: [
                            Shadow(
                              color: Colors.black,
                              offset: Offset(1,1),
                              blurRadius: 15,
                            ),

                          ]

                      )
                  )),
            ],
          ),
        ),
      ),
    );
  }
}