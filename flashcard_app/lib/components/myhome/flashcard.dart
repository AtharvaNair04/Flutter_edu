import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class FlashCard extends StatelessWidget {
  final String name;
  final String formula;

  const FlashCard({required this.name, required this.formula});

  @override
  Widget build(BuildContext context) {
    print("FlashCard Formula: $formula");
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 84, 99, 184),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Math.tex(
            formula,
            textStyle: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
