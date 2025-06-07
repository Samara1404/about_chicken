import 'package:about_chicken/core/constant/style.dart';
import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 18),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          side: BorderSide(color: Color.fromRGBO(1, 165, 96, 1)),
        ),
        onPressed: () {
          
        },
        icon: Image.asset('assets/images/google.png'),
        label: Text('Google', style: AppTextStyle.style6),
      ),
    );
  }
}