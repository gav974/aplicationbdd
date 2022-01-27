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
    return Container(
      decoration:const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('CONNEXION',
                style:GoogleFonts.oswald(textStyle: TextStyle(fontSize: 25,letterSpacing: 1.5))),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            /*  *****************  Form 1 *********************** */

            child: TextFormField(
              cursorColor: Colors.red,
              maxLength: 20,
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                labelText: 'Identifiant',
                labelStyle: TextStyle(
                  color: Colors.white54,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),

            /* ****************** Form 2 ******************* */

            child: TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              obscuringCharacter: '*',
              cursorColor: Colors.red,
              initialValue: '',
              maxLength: 20,
              decoration: const InputDecoration(
                icon: Icon(Icons.lock),
                labelText: 'Mot de Passe',
                labelStyle: TextStyle(
                  color: Colors.white54,
                ),
                /*helperText: 'Helper text',
                //suffixIcon: Icon(
                  //Icons.check_circle,
                ),*/
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
            child: Text('SOUMETTRE',
                style:GoogleFonts.oswald(
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 50,
          )
                  )
                )
          ),

        ],
      ),

    );
  }
}

