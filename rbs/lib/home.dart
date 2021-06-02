import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rbs/Submitreport.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            color: Color(0xFF171717),
            width: double.infinity,
            height: 700,
          ),
          SingleChildScrollView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            child: Container(
              color: Color(0xFF171717),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 60, 20, 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello!',
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
                                  fontFamily: 'Lato',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'suppp!bitch',
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
                                  fontFamily: 'Lato',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          CupertinoIcons.profile_circled,
                          color: Colors.white,
                          size: 36,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  Container(
                    // margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                    child: Lottie.network(
                      'https://assets4.lottiefiles.com/packages/lf20_r71cen62.json',
                      // width: 350, //MediaQuery.of(context).size.width,
                      // fit: BoxFit.fill,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 40, 10, 20),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13)),
                                color: Color(0xFF242424),
                                child: InkWell(
                                  splashColor: Color(0xFF383838),
                                  borderRadius: BorderRadius.circular(13),
                                  onTap: () {
                                    Navigator.pushNamed(context, subRep.id);
                                  },
                                  child: Stack(
                                    children: [
                                      SizedBox(
                                        height: 200,
                                      ),
                                      Center(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image(
                                                image: AssetImage(
                                                    'images/document.png'),
                                                height: 80,
                                                width: 80,
                                              ),
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 45, 0, 20),
                                            ),
                                            Container(
                                              alignment:
                                                  AlignmentDirectional.center,
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 10),
                                              child: Text(
                                                'Submit a Report',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17,
                                                  fontFamily: 'Lato',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 40, 10, 20),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13)),
                                color: Color(0xFF242424),
                                child: InkWell(
                                  splashColor: Color(0xFF383838),
                                  borderRadius: BorderRadius.circular(13),
                                  onTap: () {},
                                  child: Stack(
                                    children: [
                                      SizedBox(
                                        height: 200,
                                      ),
                                      Center(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Image(
                                                image: AssetImage(
                                                    'images/donation (1).png'),
                                                height: 80,
                                                width: 80,
                                              ),
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 45, 0, 20),
                                            ),
                                            Container(
                                              alignment:
                                                  AlignmentDirectional.center,
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 10),
                                              child: Text(
                                                'Donate',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17,
                                                  fontFamily: 'Lato',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
