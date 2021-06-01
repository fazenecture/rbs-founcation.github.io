import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rbs/login.dart';
import './Submitreport.dart';
import './Signup.dart';
import 'thankyou.dart';
import 'package:firebase_core/firebase_core.dart';
import 'home.dart';

// void main() => runApp(rbs());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(rbs());
}


class rbs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      initialRoute: Login.id,
      routes: {
        Login.id: (context) => Login(),
        signUp.id: (context) => signUp(),
        subRep.id: (context) => subRep(),
        Thankyou.id: (context) => Thankyou(),
        HomeScreen.id: (context) => HomeScreen(),
      },
      home: Login(),
    );
  }
}
