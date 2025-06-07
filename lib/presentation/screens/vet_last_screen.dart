import 'package:about_chicken/presentation/widgets/custom_appbar.dart';
import 'package:about_chicken/presentation/widgets/logo.dart';
import 'package:about_chicken/presentation/widgets/share.dart';
import 'package:flutter/material.dart';


class VetLastScreen extends StatefulWidget {
  const VetLastScreen({super.key});

  @override
  State<VetLastScreen> createState() => _VetLastScreenState();
}

class _VetLastScreenState extends State<VetLastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Logo(),
        ),
        title: 'Ветеринар',
        actions: [Share()],
      ),
      body: Center(
        child: Container(
          child: Image.asset('assets/images/vlasttext.png'),
        ),
      ),
    );
  }
}
