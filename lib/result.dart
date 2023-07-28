import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    super.key,
    required this.result,
    required this.isMale,
    required this.age,
  });

  final double result;
  final bool isMale;
  final int age;

  String get resultPhrase {
    if (result > 30) {
      return 'Obese';
    } else if (result > 25) {
      return 'OverWeight';
    } else if (result > 18.5) {
      return 'Normal';
    } else {
      return 'Thin';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Result'), centerTitle: true),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Gender: ${isMale ? 'Male' : 'Female'}',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                'Healthiness: $resultPhrase',
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              Text(
                'Result: ${result.toStringAsFixed(2)}',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                'Age: $age',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
