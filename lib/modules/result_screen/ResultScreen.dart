
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
   ResultScreen({super.key, required this.isMale, required this.result, required this.age});

  final bool isMale ;

  final int result ;

  final int age ;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            elevation: 0.0,
            title: const Text("Result",
            style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Gender : ${isMale ? "Male" : "Female"}",
                style: const TextStyle(color: Colors.blue, fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text("Result : $result",
                  style: const TextStyle(color: Colors.blue, fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text("Age : $age",
                  style: const TextStyle(color: Colors.blue, fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
    );
  }
}
