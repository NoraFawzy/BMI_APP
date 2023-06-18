import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;

  BMIResult({
    required this.result,
    required this.age,
    required this.isMale,
  });
  String getResult() {
    if (result >= 25) {
      return 'Overweight';
    } else if (result > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (result >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (result >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Result',

        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale ? 'Male' : 'Female'}',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Result : $result',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white

              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Text(
                  'Note :',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white

                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: Text(
                    ' ${24.99>result&&result>18.5 ? 'You have a normal body weight. Good job!' : 'You have a higher than normal body weight. Try to exercise more'}',
                    maxLines: 2,
                    // overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontSize:17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
