import 'dart:math';


import 'package:bmi_calculator/modules/result_screen/ResultScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isMale = true ;
  double Height = 120.0 ;
  int Age = 30 ;
  int Weight = 180 ;
  int result =0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            elevation: 0.0,
            title: const Text("BMI Calculator",
            style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body:  Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: ()
                          {
                            setState(() {
                              isMale = true ;
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: isMale ? Colors.blue : Colors.grey.withOpacity(0.5),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(image: AssetImage('assets/images/ic_male.png'),
                                  width: 100,
                                  height: 100,
                                ),

                                SizedBox(height: 15.0),

                                Text("Male",
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: GestureDetector(
                          onTap: ()
                          {
                            setState(() {
                              isMale = false ;
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: isMale ?  Colors.grey.withOpacity(0.5) : Colors.blue,
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(image: AssetImage('assets/images/ic_female.png'),
                                  width: 100,
                                  height: 100,
                                ),

                                SizedBox(height: 15.0),

                                Text("Female",
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Height",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18.0),
                          ),

                          const SizedBox(height: 20),

                           Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("${Height.round()}",
                                style: const TextStyle(fontWeight: FontWeight.normal, color: Colors.white, fontSize: 25.0),
                              ),

                              const Text("cm",
                                      style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white, fontSize: 16.0),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          Slider(
                            value: Height,
                            max: 220.0,
                            min: 80.0,
                            onChanged: (value) => {
                              setState((){
                                Height =  value ;
                              })
                            },
                          ),
                      ],
                      ),
                    )),

                const SizedBox(height: 20),

                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Age",
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18.0),
                              ),

                              const SizedBox(height: 15.0),

                              Text("$Age",
                                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18.0),
                              ),

                              const SizedBox(height: 15.0),

                              Row(
                                children: [
                                  Expanded(
                                      child: FloatingActionButton(
                                          onPressed: () => {
                                            setState((){
                                              if(Age > 0){
                                                Age++;
                                              }
                                              else
                                              {
                                                Age = 0 ;
                                              }
                                            })
                                          },
                                        mini: true,
                                        child: const Icon(Icons.add,),
                                      ),
                                  ),

                                  const SizedBox(width:5.0),

                                  Expanded(
                                    child: FloatingActionButton(
                                      onPressed: () => {
                                        setState((){

                                          if(Age > 0){
                                            Age--;
                                          }
                                          else
                                          {
                                            Age = 0 ;
                                          }

                                        })
                                      },
                                      mini: true,
                                      child: const Icon(Icons.remove,),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Weight",
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18.0),
                              ),

                              const SizedBox(height: 15.0),

                              Text("$Weight",
                                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18.0),
                              ),

                              const SizedBox(height: 15.0),

                              Row(
                                children: [
                                  Expanded(
                                    child: FloatingActionButton(
                                      onPressed: () => {
                                        setState((){
                                          Weight++;
                                        })
                                      },
                                      mini: true,
                                      child: const Icon(Icons.add,),
                                    ),
                                  ),

                                  const SizedBox(width:5.0),

                                  Expanded(
                                    child: FloatingActionButton(
                                      onPressed: () => {
                                        setState((){
                                          if(Weight > 0){
                                          Weight--;
                                          }
                                          else
                                            {
                                              Weight = 0 ;
                                            }
                                        })
                                      },
                                      mini: true,
                                      child: const Icon(Icons.remove,),
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
                ),

                const SizedBox(height: 20),

                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  child: MaterialButton(
                    onPressed: () => {
                      result = Weight ~/ pow(Height/100,2),
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ResultScreen(isMale: isMale, result: result, age: Age)),
                      ),
                    },
                    height: 50.0,
                    child: const Text("Calculate",
                     style: TextStyle(color: Colors.white,fontSize: 20.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
