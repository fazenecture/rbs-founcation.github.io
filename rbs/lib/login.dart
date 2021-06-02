import 'package:flutter/material.dart';
import 'package:rbs/Signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rbs/home.dart';
import 'package:toast/toast.dart';

class Login extends StatefulWidget {
  static String id = 'login_screen';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: Color(0xFF171717),
          shadowColor: Color(0xFFFFFF),
          toolbarHeight: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(53, 70, 0, 40),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-0.678, 0),
                child: Container(
                  child: Text(
                    "Email address",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 45,
                            width: 250,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: 'Enter your email address',
                                  labelStyle: new TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                  ),
                                ),
                                onChanged: (value) {
                                  email = value;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      color: Colors.white12,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment(-0.688, 0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Text(
                      "Password",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 45,
                            width: 250,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                              child: TextField(
                                obscureText: true,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: 'Enter Password',
                                  labelStyle: new TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                  ),
                                ),
                                onChanged: (value) {
                                  password = value;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      color: Colors.white12,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(53, 0, 0, 0),
                    child: TextButton(
                      onPressed: () {
                        print('I got pressed on');
                      },
                      child: Text(
                        'Forgot password',
                        style: TextStyle(
                            color: Color(0xFFF2F5FC),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    // RaisedButton(
                    //     onPressed: () {},
                    //     color: Color(0xFF171717),
                    //     child: Text('Forgot password?',
                    //         style: TextStyle(color: Colors.white))),
                  ),
                ],
              ),
              SizedBox(
                width: 200,
                child: MaterialButton(
                  splashColor: Colors.red,
                  onPressed: () async {
                    try {
                      final user = await _auth.signInWithEmailAndPassword(
                          email: email, password: password);
                      if (user != null) {
                        Navigator.pushNamed(context, HomeScreen.id);
                        Toast.show(
                          'Logged in',
                          context,
                          duration: 4,
                          backgroundColor: Colors.white10.withOpacity(0.15),
                          textColor: Colors.white,
                        );
                      }
                    } catch (e) {
                      print(e);
                      Toast.show(
                        e.toString(),
                        context,
                        duration: 4,
                        backgroundColor: Colors.white10.withOpacity(0.15),
                        textColor: Colors.white.withOpacity(0.6),
                      );
                    }
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF339214),
                          Color(0xFF58E428),
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(80.0)),
                    ),
                    child: Container(
                      constraints: const BoxConstraints(
                          minWidth: 88.0,
                          minHeight: 36.0), // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                            color: Color(0xFFF2F5FC),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, signUp.id);
                    },
                    child: Text(
                      'Signup',
                      style: TextStyle(
                          color: Color(0xFFF2F5FC),
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  // ElevatedButton(
                  //     onPressed: () {},
                  //     style: ButtonStyle(
                  //         backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF171717)),
                  //         shadowColor: MaterialStateProperty.all<Color>(Colors.transparent)),
                  //     child: Text(' Sign up',style: TextStyle(color: Color(0xFFF2F5FC),fontWeight: FontWeight.bold),)),
                ],
              ),
              Text(
                'OR',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 25),
                child: Text(
                  'Log in with',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                    child: Card(
                      shadowColor: Colors.transparent,
                      color: Color(0xFF171717),
                      child: FlatButton(
                        onPressed: () {
                          print('I got pressed on');
                        },
                        child: Image.asset(
                          'images/f_logo_RGB-White_512.png',
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child: Card(
                      shadowColor: Colors.transparent,
                      color: Color(0xFF171717),
                      child: FlatButton(
                        onPressed: () {
                          print('I got pressed on');
                        },
                        child: Image.asset(
                          'images/1200px-Apple_logo_white.svg.png',
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child: Card(
                      shadowColor: Colors.transparent,
                      color: Color(0xFF171717),
                      child: FlatButton(
                        onPressed: () {
                          print('I got pressed on');
                        },
                        child: Image.asset(
                          'images/white-google-logo.png',
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xFF171717),
      ),
    );
    ;
  }
}
