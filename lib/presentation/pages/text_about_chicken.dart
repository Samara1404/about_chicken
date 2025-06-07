import 'package:about_chicken/core/constant/style.dart';
import 'package:about_chicken/presentation/widgets/custom_appbar.dart';
import 'package:about_chicken/presentation/widgets/logo.dart';
import 'package:about_chicken/presentation/widgets/share.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TextAboutChicken extends StatefulWidget {
  const TextAboutChicken({super.key});

  @override
  State<TextAboutChicken> createState() => _TextAboutChickenState();
}

class _TextAboutChickenState extends State<TextAboutChicken> {
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
        title: 'Дарылоо',
        actions: [Share()],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text('Тема', style: AppTextStyle.style8),
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: GestureDetector(
                    onTap: () {
                      context.push('/just');
                    },
                    child: Image.asset('assets/images/ncorn.png'),
                  ),
                ),
                SizedBox(height: 24),
                Image.asset('assets/images/chtext1.png', fit: BoxFit.cover),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text('Тема', style: AppTextStyle.style8),
                        ),
                      ),
                      SizedBox(height: 16),
                      Image.asset('assets/images/lasttext.png'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
