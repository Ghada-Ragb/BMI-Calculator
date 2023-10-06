import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final bmiModel;
  Result({this.bmiModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(32),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 90),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              width: 250,
              child: bmiModel.IsNormal
                  ? Image.asset(
                      "assets/image/happy.png",
                      fit: BoxFit.contain,
                    )
                  : Image.asset(
                      "assets/image/hurt.png",
                      fit: BoxFit.contain,
                    ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Your BMI is ${bmiModel.bmi.round()}",
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 34,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "${bmiModel.com}",
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 26,
            ),
            bmiModel.IsNormal
                ? Text(
                    "Hurray! Your BMI is Normal.",
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  )
                : Text(
                    "Sadly! Your BMI is not Normal.",
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 30.0,
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(50, 50),
                  backgroundColor: Colors.pink,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },

                label: Text("LET CALCULATE AGAIN"),
                //textColor: Colors.white,
                //color: Colors.pink,
              ),
              width: double.infinity,
              padding: EdgeInsets.only(left: 16, right: 16),
            )
          ],
        ),
      ),
    ));
  }
}
