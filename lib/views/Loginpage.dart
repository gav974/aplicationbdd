import 'package:aplicationbdd/views/Inscription/Inscription.dart';
import 'package:aplicationbdd/views/PageForgotPassword/BoxForgotLogin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Component/BannerMessaging.dart';
import 'Component/BoxLogin.dart';







/*---------------- Start App --------------------*/
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
  //  final sizeWidth = MediaQuery.of(context).size.height;
  //  final sizeHeight =MediaQuery.of(context).size.width;
    return Scaffold(

/*------------- start Skeleton ----------------------*/
       body: Container(
         decoration: BoxDecoration(
           image: DecorationImage(
             image:NetworkImage("https://images.unsplash.com/photo-1567359781514-3b964e2b04d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=536&q=80"),
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
             fit: BoxFit.cover,
           ),
         ),
          child: Column(
           children: [
             Row(
               children: [
                 BannerMessaging(),     //widget message banner
               ],
             ),
             Spacer(
               flex: 1,
             ),
             Row(
               //crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 BoxLogin(),
             ],
             ),
           Divider(
             color: Colors.white,
             height: 1,
             indent: MediaQuery.of(context).size.width *0.9,
             endIndent:MediaQuery.of(context).size.width *0.9 ,
           ),
           ForgotPasswordHomepage(),
          Expanded(
              child:
              TextButton(
                onPressed: ()=> { Navigator.push(context, MaterialPageRoute(builder: (context)=> const Inscription()  )) },
                child: Text('S\'INSCRIRE',style: GoogleFonts.outfit(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                )
                ,
          ),
          ),
           Spacer(flex: 1)
           ],
         ),
       ),
    );
  }
}   /*------------- end Skeleton ----------------------*/


/* ------------------------ForgotPassword ------------------------*/

class ForgotPasswordHomepage extends StatelessWidget {
  const ForgotPasswordHomepage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0 ),
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(text: "J'ai oublié mes codes: ",
                  style:GoogleFonts.outfit(
                      textStyle:
                      TextStyle(
                        color: Colors.white
                      )
                  ) ),
              TextSpan(text: 'Renvoyer', style: GoogleFonts.outfit(
                textStyle: TextStyle(
                  color: Colors.yellow,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(3, 2) ,
                      blurRadius: 2,
                    ),

                  ],
                ),
              ),
                  recognizer: TapGestureRecognizer()..onTap = ()  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BoxForgotLogin(),
                      ),
                    );
                  },
              ),
            ],
          ),
         ),
      ),
    );
  }
}



