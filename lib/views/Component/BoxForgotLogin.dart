import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/*--------------- BoxLogin -------------------*/
class BoxForgotLogin extends StatelessWidget {
  BoxForgotLogin({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        /*  gradient: LinearGradient(
          begin: Alignment.topCenter,
          end:Alignment.bottomCenter,
          colors: <Color>[
            Color.fromRGBO(142, 45, 226, 0.7),
            Color.fromRGBO(74, 0, 224, 0.0)
          ],
        ),*/
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
            child: TextFormField(
              cursorColor: Colors.red,
              //initialValue: 'Identifiant',
              maxLength: 20,
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                labelText: 'Identifiant',
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
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              obscureText: true,
              obscuringCharacter: '*',
              cursorColor: Colors.red,
              //initialValue: 'Identifiant',
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
              backgroundColor:  Color.fromRGBO(74, 0, 224, 1),
              shadowColor: Colors.black,
              onSurface: Colors.white,
            ),
            onPressed: null,
            child: Text('SOUMETTRE'),
          ),
        ],
      ),

    );
  }
}

