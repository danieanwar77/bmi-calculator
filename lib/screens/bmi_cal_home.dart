import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'screen_arguments.dart';

class BmiCalHome extends StatefulWidget {
  const BmiCalHome({Key? key}) : super(key: key);

  @override
  State<BmiCalHome> createState() => _BmiCalHomeState();
}

class _BmiCalHomeState extends State<BmiCalHome> {
  var gender = '';
  var height = 0;
  var age = 0;
  var weight = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
                child: Container(
                    padding: EdgeInsets.only(top: 20),
                    height: 60,
                    child: Text(
                      "BMI Calculator",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ))),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.only(
                              right: 20, left: 20, top: 8, bottom: 20),
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
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text("Gender"),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                      child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        gender = 'male';
                                      });
                                    },
                                    child: Container(
                                        margin: EdgeInsets.all(4),
                                        padding: EdgeInsets.all(16),
                                        decoration: BoxDecoration(
                                            color: gender == 'male'
                                                ? Colors.blue
                                                : Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(18),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black12,
                                                  blurRadius: 4,
                                                  offset: Offset(4, 8))
                                            ]),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset('assets/male.png',
                                                color: gender == 'male'
                                                    ? Colors.white
                                                    : Colors.black),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Text("Male",
                                                style: TextStyle(
                                                    color: gender == 'male'
                                                        ? Colors.white
                                                        : Colors.black)),
                                          ],
                                        )),
                                  )),
                                  Expanded(
                                      child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        gender = 'female';
                                      });
                                    },
                                    child: Container(
                                        margin: EdgeInsets.all(4),
                                        padding: EdgeInsets.all(16),
                                        decoration: BoxDecoration(
                                            color: gender == 'female'
                                                ? Colors.blue
                                                : Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(18),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black12,
                                                  blurRadius: 4,
                                                  offset: Offset(4, 8))
                                            ]),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset('assets/female.png',
                                                color: gender == 'female'
                                                    ? Colors.white
                                                    : Colors.black),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Text("Female",
                                                style: TextStyle(
                                                    color: gender == 'female'
                                                        ? Colors.white
                                                        : Colors.black)),
                                          ],
                                        )),
                                  )),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.only(
                              right: 20, left: 20, top: 8, bottom: 6),
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
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text("Age"),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: [
                                        Container(
                                            margin: EdgeInsets.all(2),
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.black12,
                                                      blurRadius: 4,
                                                      offset: Offset(4, 8))
                                                ]),
                                            child: Image(
                                              image:
                                                  AssetImage('assets/age.png'),
                                              fit: BoxFit.fill,
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                      flex: 3,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      if (age > 0) {
                                                        age = age - 1;
                                                      }
                                                    });
                                                  },
                                                  child: Container(
                                                    margin: EdgeInsets.all(2),
                                                    padding: EdgeInsets.all(4),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        boxShadow: [
                                                          BoxShadow(
                                                              color: Colors
                                                                  .black12,
                                                              blurRadius: 4,
                                                              offset:
                                                                  Offset(4, 8))
                                                        ]),
                                                    child: Icon(
                                                      Icons.remove,
                                                      color: Colors.green,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 40,
                                                  width: 60,
                                                  margin: EdgeInsets.all(2),
                                                  padding: EdgeInsets.all(4),
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      boxShadow: [
                                                        BoxShadow(
                                                            color:
                                                                Colors.black12,
                                                            blurRadius: 4,
                                                            offset:
                                                                Offset(4, 8))
                                                      ]),
                                                  child: Center(
                                                    child: Text("$age"),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      age = age + 1;
                                                    });
                                                  },
                                                  child: Container(
                                                    margin: EdgeInsets.all(2),
                                                    padding: EdgeInsets.all(4),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        boxShadow: [
                                                          BoxShadow(
                                                              color: Colors
                                                                  .black12,
                                                              blurRadius: 4,
                                                              offset:
                                                                  Offset(4, 8))
                                                        ]),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.green,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: Slider(
                                              value: age.toDouble(),
                                              min: 0.0,
                                              max: 100.0,
                                              label: '$age',
                                              onChanged: (double newValue) {
                                                setState(() {
                                                  age = newValue.round();
                                                });
                                              },
                                            ),
                                          )
                                        ],
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.only(
                              right: 20, left: 20, top: 8, bottom: 6),
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
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text("Weight (Kg)"),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: [
                                        Container(
                                            margin: EdgeInsets.all(2),
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.black12,
                                                      blurRadius: 4,
                                                      offset: Offset(4, 8))
                                                ]),
                                            child: Image(
                                              image: AssetImage(
                                                  'assets/weight.png'),
                                              fit: BoxFit.fill,
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                      flex: 3,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      if (weight > 0) {
                                                        weight = weight - 1;
                                                      }
                                                    });
                                                  },
                                                  child: Container(
                                                    margin: EdgeInsets.all(2),
                                                    padding: EdgeInsets.all(4),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        boxShadow: [
                                                          BoxShadow(
                                                              color: Colors
                                                                  .black12,
                                                              blurRadius: 4,
                                                              offset:
                                                                  Offset(4, 8))
                                                        ]),
                                                    child: Icon(
                                                      Icons.remove,
                                                      color: Colors.green,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 40,
                                                  width: 60,
                                                  margin: EdgeInsets.all(2),
                                                  padding: EdgeInsets.all(4),
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      boxShadow: [
                                                        BoxShadow(
                                                            color:
                                                                Colors.black12,
                                                            blurRadius: 4,
                                                            offset:
                                                                Offset(4, 8))
                                                      ]),
                                                  child: Center(
                                                    child: Text("$weight"),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      weight = weight + 1;
                                                    });
                                                  },
                                                  child: Container(
                                                    margin: EdgeInsets.all(2),
                                                    padding: EdgeInsets.all(4),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        boxShadow: [
                                                          BoxShadow(
                                                              color: Colors
                                                                  .black12,
                                                              blurRadius: 4,
                                                              offset:
                                                                  Offset(4, 8))
                                                        ]),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.green,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: Slider(
                                              value: weight.toDouble(),
                                              min: 0.0,
                                              max: 200.0,
                                              label: '$weight',
                                              onChanged: (double newValue) {
                                                setState(() {
                                                  weight = newValue.round();
                                                });
                                              },
                                            ),
                                          )
                                        ],
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 10, bottom: 10, left: 6, right: 10),
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 8, bottom: 8),
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
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Height (Cm)"),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 80,
                                  child: Container(
                                      margin: EdgeInsets.all(2),
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black12,
                                                blurRadius: 4,
                                                offset: Offset(4, 8))
                                          ]),
                                      child: Image(
                                        image: AssetImage('assets/height.png'),
                                        fit: BoxFit.fill,
                                      )),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                SizedBox(
                                  height: 30,
                                  child: Text("$height"),
                                ),
                                Expanded(
                                  child: RotatedBox(
                                    quarterTurns: 3,
                                    child: Slider(
                                      value: height.toDouble(),
                                      min: 0.0,
                                      max: 300.0,
                                      label: '$height',
                                      onChanged: (double newValue) {
                                        setState(() {
                                          height = newValue.round();
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 122,
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, '/details', arguments: {
                'gender': gender,
                'age': age,
                'weight': weight,
                'height': height
              });
            },
            backgroundColor: Colors.blue,
            child: const Icon(Icons.scale),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Calculate")
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
