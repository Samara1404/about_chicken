import 'package:about_chicken/core/constant/style.dart';
import 'package:about_chicken/presentation/screens/vet_last_screen.dart';
import 'package:about_chicken/presentation/widgets/custom_appbar.dart';
import 'package:about_chicken/presentation/widgets/logo.dart';
import 'package:about_chicken/presentation/widgets/navigated_button.dart';
import 'package:about_chicken/presentation/widgets/share.dart';
import 'package:flutter/material.dart';


class VetScreen extends StatefulWidget {
  const VetScreen({super.key});

  @override
  State<VetScreen> createState() => _VetScreenState();
}

class _VetScreenState extends State<VetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:CustomAppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Logo(),
        ),
        title: 'Ветеринар',
        actions: [Share()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/vetimg.png',
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 36),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Dr.Асанов Асан', style: AppTextStyle.style5,), 
                              Text('Ветеринар',style: AppTextStyle.style4,),   
                            ],
                          ),
                        ),                  
                        SizedBox(width: 130),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Тажрыйба',style: AppTextStyle.style5),
                              Text('7 жыл',style: AppTextStyle.style4,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Image.asset('assets/images/biotext.png'),
                ],
              ),
              SizedBox(height: 12),
              NavigatedButton(onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: ((context) => VetLastScreen())));
              }, title: 'Билдируу  таштоо')
            ],
          ),
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
              icon: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => VetLastScreen())));
                },
                icon: Image.asset('assets/images/newsicon.png'),
              ),
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
