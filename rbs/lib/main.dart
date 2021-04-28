import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(rbs());
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
          title: Text('Check'),
          toolbarHeight: 20,
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 40),
              child: Text(
                'Login Page',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
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
              alignment: Alignment(-0.678, 0),
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
                  padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: RaisedButton(
                      onPressed: () {},
                      color: Colors.transparent,
                      child: Text('Forgot password?',
                          style: TextStyle(color: Colors.white))),
                ),
              ],
            ),
            SizedBox(
              width: 200,
              child: RaisedButton(
                onPressed: () {},
                color: Colors.green,
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
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
                  RaisedButton(
                      onPressed: () {},
                      color: Colors.transparent,
                      child: Text('sign up',
                          style: TextStyle(color: Colors.white))),
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
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 40),
              child: Text(
                'Log in with',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: Card(
                    color: Colors.transparent,
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
                    color: Colors.transparent,
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
                    color: Colors.transparent,
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
        backgroundColor: Colors.black,
      ),
    );
  }
}

class forgotPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
