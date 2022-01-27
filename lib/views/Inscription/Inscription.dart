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
   child: Column(

     ),
   )
 ),

    );
  }
}
