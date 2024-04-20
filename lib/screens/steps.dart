import 'package:flutter/material.dart';

class Steps extends StatefulWidget {
  const Steps({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Steps> {
  String route = '/steps.dart';
  int _caloriesBurned = 850;
  int _caloriesGoal = 1062; //calculate this based on your goal

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           const  Text(
              'You have achieved 80% of your goal today\nToday - Mon\nSteps: 99/18k (5km)\nExercise: 120min',
              textAlign: TextAlign.center,
            ),
            LinearProgressIndicator(
              value: _caloriesBurned / _caloriesGoal,
              backgroundColor: Colors.grey,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            Text(
              '$_caloriesBurned kcal of  $_caloriesGoal kcal',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}