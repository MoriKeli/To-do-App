import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  final Size size;
  const CenterWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(1, -0.6),
              end: Alignment(-1, 0.8),
              colors: [
                Color.fromRGBO(61, 232, 150, 0.502),
                Color.fromRGBO(118, 227, 174, 0.302),
              ]
            ),
          ),
        )
      ],
    );
  }
}