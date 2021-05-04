import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './Submitreport.dart';
import './Signup.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => rbs(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => signUp(),
        '/third': (context) => subRep(),
      },
    ),
  );
}

class rbs extends StatefulWidget {
  State<StatefulWidget> createState() {
    return login();
  }
}

class login extends State<rbs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF171717),
          shadowColor: Color(0xFFFFFF),
          toolbarHeight: 0,
        ),
        body: Column(
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
                    child: Column(children: <Widget>[
                      Container(
                        height: 45,
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Enter your email address',
                                labelStyle: new TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                )),
                          ),
                        ),
                      ),
                    ]),
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
                    child: Column(children: <Widget>[
                      Container(
                        height: 45,
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Enter Password',
                                labelStyle: new TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                )),
                          ),
                        ),
                      ),
                    ]),
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
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => subRep()));
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
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(20)),
                //
                // //color: Colors.green,
                // child: Text(
                //   'Submit',
                //   style: TextStyle(color: Colors.white),
                // ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(110, 0, 0, 0),
              child: Row(
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => signUp()));
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
        backgroundColor: Color(0xFF171717),
      ),
    );
  }
}
