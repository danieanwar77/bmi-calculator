import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BmiCalDetail extends StatefulWidget {
  const BmiCalDetail({Key? key}) : super(key: key);

  @override
  State<BmiCalDetail> createState() => _BmiCalDetailState();
}

class _BmiCalDetailState extends State<BmiCalDetail> {
  @override
  Widget build(BuildContext context) {
    final routes =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    String gender = routes['gender'];
    int age = routes['age'];
    int weight = routes['weight'];
    int height = routes['height'];

    double calculateBmi() {
      double heightInMeter = height / 100;

      final h = heightInMeter * heightInMeter;
      final bmi = (weight / h);

      return bmi;
    }

    var calculate = double.parse((calculateBmi()).toStringAsFixed(2));

    var result = "";

    if (calculate < 16) {
      result = "Too thin! You should eat more";
    } else if (calculate >= 16 && calculate < 17) {
      result = "Thin! don't make your belly wait too long";
    } else if (calculate >= 17 && calculate < 18.50) {
      result = "Just Thin! More rendang is worthy";
    } else if (calculate >= 18.50 && calculate < 25) {
      result = "Good! Keep it up";
    } else if (calculate >= 25 && calculate < 30) {
      result = "Heavy! Wrestlers are heavy";
    } else if (calculate >= 30 && calculate < 35) {
      result = "Too Heavy! Move your body";
    } else if (calculate >= 35 && calculate < 40) {
      result = "Obesse! You better go to gym now!";
    } else if (calculate >= 40) {
      result = "More Obesse! Ade Rai is waiting";
    }

    return Scaffold(
        body: Stack(children: <Widget>[
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Text("Measure Result",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w600)),
          ),
          leading: InkWell(
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Center(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      gender = 'male';
                    });
                  },
                  child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                offset: Offset(4, 8))
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text("Your body mass index is :",
                              style: TextStyle(fontSize: 18)),
                          SizedBox(
                            height: 80,
                          ),
                          Text('$calculate',
                              style: TextStyle(
                                  fontSize: 52, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 80,
                          ),
                          Text(result),
                          SizedBox(
                            height: 12,
                          ),
                        ],
                      )),
                )),
              ],
            ),
          ),
        ),
      ),
    ]));
  }
}
