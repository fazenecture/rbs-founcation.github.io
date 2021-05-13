import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class subRep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: CupertinoColors.systemGroupedBackground,
        shadowColor: Color(0xFFFFFF),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment(1, -1),
            child: Container(
                height: 28,
                // color: Colors.red,
                child: FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Logout',
                      style: TextStyle(
                          color: Color(0xFF171717),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ))),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Text('Submit a \n Report',
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
          // Image.asset(
          //   'assests/images/chotu.jpg',
          //   width: 5,
          //   height: 5,
          // ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 14.5, 0, 0),
            child: Container(
              width: double.infinity,
              height: 665.9,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: Color(0xFF171717),
                shadowColor: Color(0xFFFFFF),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(50, 40, 0, 0),
                        child: Text(
                          'Enter the Problem Description',
                          style: TextStyle(color: Colors.white, fontSize: 21),
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      height: 280,
                      width: 335,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(15.0),
                                borderSide: new BorderSide(),
                              ),
                              labelText: null,
                              fillColor: Colors.white,
                              filled: true),
                          maxLines: 10,
                        ),
                      ),
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
                          style: TextStyle(color: CupertinoColors.black),
                          decoration: InputDecoration(
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(15.0),
                                borderSide: new BorderSide(),
                              ),
                              labelText: null,
                              fillColor: Colors.white,
                              filled: true),
                          // maxLines: 10,
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 15, 15, 0),
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
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(290, 30, 10, 0),
                          child: Container(
                            child: Text(
                              'Next',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                          child: Icon(
                            CupertinoIcons.arrow_right_circle_fill,
                            color: Colors.white,
                            size: 50,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
