import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rbs/Submitreport.dart';

class Thankyou extends StatefulWidget {
  static String id = 'thankyou_page';

  @override
  _ThankyouState createState() => _ThankyouState();
}

class _ThankyouState extends State<Thankyou> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF171717),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10, 80, 10, 10),
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.network(
                  'https://assets3.lottiefiles.com/packages/lf20_pqdnvhfb.json',
                  width: 140,
                  fit: BoxFit.fill,
                ),
                Text(
                  'THANKYOU',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 33,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 10,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 40, 10, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children:<Widget>[
                Hero(
                  tag: 'button',
                  child: Material(
                    child: MaterialButton(
                      child: Text(
                        'Done',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      minWidth: 130,
                      onPressed: () {
                        Navigator.pushNamed(context,subRep.id);
                      },
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(23),
                  ),
                ),
              ]
            ),
          ),
        ],
      ),
    );
  }
}
