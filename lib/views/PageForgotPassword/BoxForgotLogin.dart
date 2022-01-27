import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/*--------------- BoxLogin -------------------*/
class BoxForgotLogin extends StatefulWidget {
  BoxForgotLogin({Key? key,}) : super(key: key);

  @override
  State<BoxForgotLogin> createState() => _BoxForgotLoginState();
}

class _BoxForgotLoginState extends State<BoxForgotLogin> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () { Navigator.pop(context); },),
        title: Text('myApp'),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image:NetworkImage("https://images.unsplash.com/photo-1567359781514-3b964e2b04d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=536&q=80"),

              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Spacer(flex:2),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('REINITIALISATION',
                    style:GoogleFonts.oswald(textStyle: TextStyle(fontSize: 25,letterSpacing: 1.5))),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                /*  *****************  Form 1 *********************** */

                child: TextFormField(
                  cursorColor: Colors.red,
                  maxLength: 20,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.mail_outline_outlined),
                    labelText: 'Votre Email ',
                    labelStyle: TextStyle(
                      color: Colors.white54,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),

                ),
              ),

              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor:  const Color.fromRGBO(74, 0, 224, 1),
                  ),
                onPressed: null,
                child: Text('Envoyer ',
                    style:GoogleFonts.oswald(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              )
                      )
                    )
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}

