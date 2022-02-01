import 'package:aplicationbdd/views/Component/AppBar.dart';
import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  _InscriptionState createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: PreferredSize(
  child:appBar(),
  preferredSize: Size.fromHeight(50),),
body: SafeArea(
 child: Container(
     decoration:  BoxDecoration(
       image: DecorationImage(
         image:NetworkImage("https://images.unsplash.com/photo-1567359781514-3b964e2b04d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=536&q=80"),
         colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
         fit: BoxFit.cover,
       ),
     ),
   child: Padding(
     padding: const EdgeInsets.all(30.0),
     child: Column(
       children: [
         Spacer(flex:1),
         Text('INSCRIPTION'),
         TextFormField(
           //obscureText: true,
           //obscuringCharacter: '*',
           cursorColor: Colors.red,
           //initialValue: 'Identifiant',
           // maxLength: 20,
           decoration: const InputDecoration(
             icon: Icon(Icons.person),
             labelText: 'Entrez votre Pseudo:',
             labelStyle: TextStyle(
               color: Colors.white54,
             ),
             enabledBorder: UnderlineInputBorder(
               borderSide: BorderSide(color: Colors.white),
             ),
           ),//onSaved: (password)=> _password,
           //textInputAction: TextInputAction.next,
         ),
         TextFormField(
           //obscureText: true,
           //obscuringCharacter: '*',
           cursorColor: Colors.red,
           //initialValue: 'Identifiant',
           // maxLength: 20,
           decoration: const InputDecoration(
             icon: Icon(Icons.mail),
             labelText: 'Entrez votre email:',
             labelStyle: TextStyle(
               color: Colors.white54,
             ),
             enabledBorder: UnderlineInputBorder(
               borderSide: BorderSide(color: Colors.white),
             ),
           ),
           //onSaved: (password)=> _password,
           //textInputAction: TextInputAction.next,
         ),
         TextFormField(
           obscureText: true,
           obscuringCharacter: '*',
           cursorColor: Colors.red,
           //initialValue: 'Identifiant',
           // maxLength: 20,
           decoration: const InputDecoration(
             icon: Icon(Icons.password),
             labelText: ' Entrez votre Mot de Passe',
             labelStyle: TextStyle(
               color: Colors.white54,
             ),
             enabledBorder: UnderlineInputBorder(
               borderSide: BorderSide(color: Colors.white),
             ),
           ),
           //onSaved: (password)=> _password,
           //textInputAction: TextInputAction.next,
         ),
         TextFormField(
           obscureText: true,
           obscuringCharacter: '*',
           cursorColor: Colors.red,
           //initialValue: 'Identifiant',
           // maxLength: 20,
           decoration: const InputDecoration(
             icon: Icon(Icons.lock),
             labelText: 'Répeter le Mot de Passe',
             labelStyle: TextStyle(
               color: Colors.white54,
             ),
             enabledBorder: UnderlineInputBorder(
               borderSide: BorderSide(color: Colors.white),
             ),
           ),
           //onSaved: (password)=> _password,
           //textInputAction: TextInputAction.next,
         ),
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 20.0),
           child: TextButton(
             style: TextButton.styleFrom(
               backgroundColor:  Color.fromRGBO(74, 0, 224, 1),
               shadowColor: Colors.black,
               onSurface: Colors.white,
             ),
             onPressed: null,
               child: Text('S\'inscrire '),
           ),
         ),
         Spacer(
           flex: 1,
         )
       ],

       ),
   ),
   )
 ),

    );
  }
}
