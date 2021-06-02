import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/rendering.dart';
import 'package:rbs/login.dart';
import 'package:rbs/thankyou.dart';

class subRep extends StatefulWidget {
  static String id = 'report_screen';

  @override
  _subRepState createState() => _subRepState();
}

class _subRepState extends State<subRep> {
  final _auth = FirebaseAuth.instance;
  User loggedInUser;
  final _firestore = FirebaseFirestore.instance;
  String report;
  String location;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    getCurrentuser();
  }

  void getCurrentuser() {
    final user = _auth.currentUser;
    if (user != null) {
      loggedInUser = user;
      print(loggedInUser.email);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: <Widget>[
            // Text(naam),
            Column(children: [
              Row(
                children: <Widget>[],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text('Submit a \nReport',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Color(0xFF171717))),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Image(
                      image: AssetImage('images/rep.png'),
                      height: 170,
                      width: 170,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 250, 0, 0),
                  color: Color(0xFF171717),
                  width: double.infinity,
                ),
              ),
            ]),
            SingleChildScrollView(
              // physics: ClampingScrollPhysics(),
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),

              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 220, 0, 0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.79,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    ),
                    color: Color(0xFF171717),
                    boxShadow: [
                      //background color of box
                      // BoxShadow(
                      //   color: Colors.grey.withOpacity(0.4),
                      //   blurRadius: 35.0,
                      //   spreadRadius: 2.0,
                      //   offset: Offset(0.0, -6.0),
                      // )
                    ],
                  ),

                  // shadowColor: Color(0xFFFFFF),
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.fromLTRB(170, 10, 170, 0),
                          child: Card(
                            color: Colors.white,
                            child: Text(
                              '                                                                ',
                              style: TextStyle(fontSize: 4),
                            ),
                          )),
                      Center(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Enter the Problem Description',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 21),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // color: Colors.red,
                        height: 150,
                        width: 335,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(15.0),
                                  borderSide: new BorderSide(),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                    color: Color(0xFF474747),
                                  ),
                                ),
                                labelText: null,
                                fillColor: Color(0xFF2A2A2A),
                                filled: true),
                            maxLines: 10,
                            onChanged: (value) {
                              report = value;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                          child: Text(
                            'Enter Area /Region /Landmark',
                            style: TextStyle(color: Colors.white, fontSize: 21),
                          ),
                        ),
                      ),
                      Container(
                        // color: Colors.red,
                        height: 75,
                        width: 335,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
                          child: TextFormField(
                            onChanged: (value) {
                              location = value;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(15.0),
                                  borderSide: new BorderSide(),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                    color: Color(0xFF474747),
                                  ),
                                ),
                                labelText: null,
                                fillColor: Color(0xFF2A2A2A),
                                filled: true),

                            // maxLines: 10,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 15, 0),
                            child: Icon(
                              CupertinoIcons.camera_circle_fill,
                              color: Colors.white,
                              size: 50,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Text(
                              'Upload an image',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      // New Material Button Because
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 40, 10, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Center(
                              child: Hero(
                                tag: 'button',
                                child: MaterialButton(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(80.0)),
                                    child: Text(
                                      'SUBMIT',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    // minWidth: 170,
                                    onPressed: () {
                                      if (_formKey.currentState.validate()) {
                                        Navigator.pushNamed(
                                            context, Thankyou.id);

                                        _firestore.collection('reports').add({
                                          'report': report,
                                          'location': location,
                                        });
                                      }
                                    }),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 2,
              top: 16,
              child: Container(
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Login.id);
                    _auth.signOut();
                  },
                  child: Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
