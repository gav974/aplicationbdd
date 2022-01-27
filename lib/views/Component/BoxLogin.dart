import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/*--------------- BoxLogin -------------------*/
class BoxLogin extends StatelessWidget {
   BoxLogin({Key? key,}) : super(key: key);

   String _username ="",
          _password="";
 //  final _formKey = GlobalKey<FormState>();

@override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),

      ),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.width * 0.61,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('CONNEXION',
                  style:GoogleFonts.oswald(textStyle: TextStyle(fontSize: 25,letterSpacing: 1.5))),
            ),
          ),
          Expanded(
            child: TextFormField(
              cursorColor: Colors.red,
              //initialValue: 'Identifiant',
             // maxLength: 20,
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
              onSaved: (userName)=> _username,
              textInputAction: TextInputAction.next,
            ),
          ),
          Expanded(
            child: TextFormField(
              obscureText: true,
              obscuringCharacter: '*',
              cursorColor: Colors.red,
              //initialValue: 'Identifiant',
             // maxLength: 20,
              decoration: const InputDecoration(
                icon: Icon(Icons.lock),
                labelText: 'Mot de Passe',
                labelStyle: TextStyle(
                  color: Colors.white54,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),onSaved: (password)=> _password,
              textInputAction: TextInputAction.next,
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor:  Color.fromRGBO(74, 0, 224, 1),
              shadowColor: Colors.black,
              onSurface: Colors.white,
            ),
              onPressed: null,
              child: Text('SOUMETTRE ',
                  style:GoogleFonts.outfit(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )
              )),
          ),
        ],
      ),

    );
  }
}

