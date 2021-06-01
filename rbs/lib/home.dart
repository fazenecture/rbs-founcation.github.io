import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rbs/Submitreport.dart';


class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF171717),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.network(
                'https://images.unsplash.com/photo-1573288881762-6ec87577a176?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
                width: double.infinity,
              ),
              Image.network(
                'https://images.unsplash.com/photo-1573288881762-6ec87577a176?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
                width: double.infinity,
                color: Colors.black.withOpacity(0.5),
              ),
              Container(
                alignment: AlignmentDirectional.center,
                margin: EdgeInsets.fromLTRB(0, 90, 0, 0),
                child: Text(
                  'RBS\nFOUNDATION',
                  textAlign: TextAlign.center,
                  style: TextStyle(decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 30,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 40, 10, 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13)
                  ),
                  color: Color(0xFF474747),

                  child: InkWell(
                    splashColor: Color(0xFF383838),
                    borderRadius: BorderRadius.circular(13),
                    onTap: (){
                      Navigator.pushNamed(context, subRep.id);
                    },
                    child: Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 160,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Image(
                                image: AssetImage('images/file.png'),
                                height: 50,
                                width: 50,
                              ),
                              margin: EdgeInsets.fromLTRB(30, 50, 0, 0),
                            ),
                            Container(
                              alignment: AlignmentDirectional.center,
                              margin: EdgeInsets.fromLTRB(30, 60, 0, 0),
                              child: Text(
                                'Submit a Report',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontFamily: 'Lato',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13)
                  ),
                  color: Color(0xFF474747),

                  child: InkWell(
                    splashColor: Color(0xFF383838),
                    borderRadius: BorderRadius.circular(13),
                    onTap: (){
                      // Navigator.pushNamed(context, subRep.id);
                    },
                    child: Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 160,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Image(
                                image: AssetImage('images/donation.png'),
                                height: 50,
                                width: 50,
                              ),
                              margin: EdgeInsets.fromLTRB(30, 50, 0, 0),
                            ),
                            Container(
                              alignment: AlignmentDirectional.center,
                              margin: EdgeInsets.fromLTRB(30, 60, 0, 0),
                              child: Text(
                                'Donate',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontFamily: 'Lato',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
