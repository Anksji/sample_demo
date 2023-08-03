
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
          ),
          child: const Padding(padding:  EdgeInsets.all(20),
            child: Text("Screen 2"),),
        )
      ],
    );
  }
}
