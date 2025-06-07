import 'package:flutter/material.dart';

class Share extends StatelessWidget {
  const Share({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 34,
      backgroundColor: Colors.white,
      child: Icon(Icons.share, color: Color.fromRGBO(1, 165, 96, 1),),
    );
  }
}
