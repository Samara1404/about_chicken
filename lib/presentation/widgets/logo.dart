import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,

      child: Image.asset('assets/images/mhen.png'),
    );
  }
}
