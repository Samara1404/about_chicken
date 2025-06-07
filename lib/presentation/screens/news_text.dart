import 'package:about_chicken/core/constant/style.dart';
import 'package:about_chicken/presentation/widgets/custom_appbar.dart';
import 'package:about_chicken/presentation/widgets/logo.dart';
import 'package:about_chicken/presentation/widgets/share.dart';
import 'package:flutter/material.dart';


class NewsText extends StatefulWidget {
  const NewsText({super.key});

  @override
  State<NewsText> createState() => _NewsTextState();
}

class _NewsTextState extends State<NewsText> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Logo(),
        ),
        title: 'Жанылыктар',
        actions: [Share()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Тема', style: AppTextStyle.style8),
              ),
            ),
            SizedBox(height: 10),
            Image.asset('assets/images/btftext1.png'),
            SizedBox(height: 16),
            Card(
              color: Colors.white,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/shmain2.png',
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 16),
                  
                ],
              ),
            ),
            SizedBox(height: 30),
          Image.asset('assets/images/btftext.png')
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(1, 165, 96, 1),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/homeicon.png'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: IconButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => NewsText())));
              }, icon: Image.asset('assets/images/newsicon.png'),),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/veticon.png'),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
