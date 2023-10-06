import 'package:bmi_calc/Result.dart';
import 'package:bmi_calc/model/BMIModel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double Height = 100.0;
  double Width = 40.0;
  double bmi = 0;

  late BMIModel bmiModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(58),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200.0,
                height: 200.0,
                child: Image.asset(
                  "assets/image/transgender.png",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "BMI Calculator",
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 34,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "We care about your health",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "Height (cm)",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24,
                    fontWeight: FontWeight.w400),
              ),
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Slider(
                  min: 80.0,
                  max: 250.0,
                  onChanged: (height) {
                    setState(() {
                      Height = height;
                    });
                  },
                  value: Height,
                  divisions: 100,
                  activeColor: Colors.pink,
                  label: '$Height',
                ),
              ),
              Text(
                "$Height cm",
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 18,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 34,
              ),
              Text(
                "Weight (kg)",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24,
                    fontWeight: FontWeight.w400),
              ),
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Slider(
                  min: 30.0,
                  max: 120.0,
                  value: Width,
                  onChanged: (height) {
                    setState(() {
                      Width = height;
                    });
                  },
                  divisions: 100,
                  activeColor: Colors.pink,
                  label: '$Width',
                ),
              ),
              Text(
                "$Width kg",
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 18,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 36,
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
                    setState(() {
                      bmi = Width / ((Height / 100) * (Height / 100));

                      if (bmi >= 18.5 && bmi <= 24.9) {
                        bmiModel = BMIModel(
                            bmi: bmi,
                            IsNormal: true,
                            com: "You are Totaly Fit");
                      } else if (bmi < 18.5) {
                        bmiModel = BMIModel(
                            bmi: bmi,
                            IsNormal: false,
                            com: "You are Underweighted");
                      } else if (bmi > 25 && bmi <= 29.9) {
                        bmiModel = BMIModel(
                            bmi: bmi,
                            IsNormal: false,
                            com: "You are Overweighted");
                      } else {
                        bmiModel = BMIModel(
                            bmi: bmi, IsNormal: false, com: "You are Obesed");
                      }
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Result(
                                  bmiModel: bmiModel,
                                )));
                  },
                  label: Text("Calculator"),
                ),
                width: double.infinity,
                padding: EdgeInsets.only(left: 16, right: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /*double Height33 = 100.0;
  double Width33 = 40.0;

  double bmi = 0;

  late BMIModel bmiModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 200,
                width: 200,
                child: Image.asset(
                  "assets/image/heart.png",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "BMI Calculator",
                style: TextStyle(
                    color: Colors.red[700],
                    fontSize: 34,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "We care about your health",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "Height (cm)",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24,
                    fontWeight: FontWeight.w400),
              ),
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Slider(
                  min: 80.0,
                  max: 250.0,
                  onChanged: (height) {
                    setState(() {
                      Height33 = height;
                    });
                  },
                  value: Height33,
                  divisions: 100,
                  activeColor: Colors.pink,
                  label: "$Height33",
                ),
              ),
              Text(
                "$Height33 cm",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Weight (kg)",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24,
                    fontWeight: FontWeight.w400),
              ),
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Slider(
                  min: 30.0,
                  max: 120.0,
                  onChanged: (height) {
                    setState(() {
                      Width33 = height;
                    });
                  },
                  value: Width33,
                  divisions: 100,
                  activeColor: Colors.pink,
                  label: "$Width33",
                ),
              ),
              Text(
                "$Width33 kg",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.w900),
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
                    setState(() {
                      bmi = Width33 /
                          ((_heightOfUser / 100) * (_heightOfUser / 100));

                      if (_bmi >= 18.5 && _bmi <= 25) {
                        _bmiModel = BMIModel(
                            bmi: _bmi,
                            isNormal: true,
                            comments: "You are Totaly Fit");
                      } else if (_bmi < 18.5) {
                        _bmiModel = BMIModel(
                            bmi: _bmi,
                            isNormal: false,
                            comments: "You are Underweighted");
                      } else if (_bmi > 25 && _bmi <= 30) {
                        _bmiModel = BMIModel(
                            bmi: _bmi,
                            isNormal: false,
                            comments: "You are Overweighted");
                      } else {
                        _bmiModel = BMIModel(
                            bmi: _bmi,
                            isNormal: false,
                            comments: "You are Obesed");
                      }
                    });

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultScreen(
                                  bmiModel: _bmiModel,
                                )));
                  },
                  label: Text("CALCULATE"),
                ),
                width: double.infinity,
                padding: EdgeInsets.only(left: 16, right: 16),
              )
            ],
          ),
        ),
      ),
    );
  }*/
}
