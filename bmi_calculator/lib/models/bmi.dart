import 'dart:math';

class BMI {
  final int weight;
  final double height;
  double result = 0;

  BMI({required this.weight, required this.height});

  String getBMI() {
    result = weight / pow(height, 2);

    return result.toStringAsFixed(1);
  }

  Map<String, String> getResult() {
    String ans;
    String remarks;

    if (result <= 18.4) {
      ans = 'UNDERWEIGHT';
      remarks = 'You gotta eat..!';
    } else if (result >= 18.5 && result <= 24.9) {
      ans = 'NORMAL';
      remarks = 'You have a normal body weight. good job';
    } else {
      ans = 'OVERWEIGHT';
      remarks = 'Please loose your weight..!';
    }

    return {
      'status': ans,
      'remarks': remarks,
    };
  }
}
