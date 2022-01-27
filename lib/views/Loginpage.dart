import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    final sizeWidth = MediaQuery.of(context).size.height;
    final sizeHeight =MediaQuery.of(context).size.width;
    return Scaffold(
/*------------- start Skeleton ----------------------*/
       body: Container(
         decoration: BoxDecoration(
           image: DecorationImage(
             image:NetworkImage("https://images.unsplash.com/photo-1567359781514-3b964e2b04d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=536&q=80"),

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
           Spacer(flex: 1)
           ],
         ),
       ),
    );
  }
}
/*------------- end Skeleton ----------------------*/


