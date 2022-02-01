import 'package:aplicationbdd/views/Home/Pagehome.dart';
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
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('CONNEXION',
                  style:GoogleFonts.oswald(textStyle: TextStyle(fontSize: 25,letterSpacing: 1.5))),
            ),
            TextFormField(
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
            TextFormField(
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor:  Color.fromRGBO(74, 0, 224, 1),
                  shadowColor: Colors.black,
                  onSurface: Colors.white,
                ),
                  onPressed: ()=>{ Navigator.push(context, MaterialPageRoute(builder: (context)=> PageHome()))} ,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('SOUMETTRE ',
                        style:GoogleFonts.outfit(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        )
                    )),
                  ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}

