import 'package:about_chicken/core/constant/style.dart';
import 'package:about_chicken/presentation/pages/fert_text.dart';
import 'package:about_chicken/presentation/widgets/logo.dart';
import 'package:about_chicken/presentation/widgets/custom_appbar.dart';
import 'package:about_chicken/presentation/widgets/share.dart';
import 'package:flutter/material.dart';

class ChickenFertilization extends StatefulWidget {
  const ChickenFertilization({super.key});

  @override
  State<ChickenFertilization> createState() => _ChickenFertilizationState();
}

class _ChickenFertilizationState extends State<ChickenFertilization> {
  final List<String> images = [
    'assets/images/chickfert2.png',
    'assets/images/chickfert3.png',
    'assets/images/chickfert4.png',
  ];

  final List<String> titles = ['Уруктандыруу', 'Уруктандыруу', 'Уруктандыруу'];

  final List<String> subtitles = [
    'Lorem Ipsum is simply\ndummy text of the',
    'Lorem Ipsum is simply\ndummy text of the',
    'Lorem Ipsum is simply\ndummy text of the',
  ];
  final List<Widget> pages = [
    const FertText()];
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
        title: 'Уруктандыруу',
        actions: [Share()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text('Тема', style: AppTextStyle.style8),
            ),
            SizedBox(height: 16),
            Card(
              color: Colors.white,
              child: Column(
                children: [
                  Image.asset('assets/images/chickfert1.png', fit: BoxFit.cover),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text('Lorem Ipsum is simply\ndummy text of the'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ListView.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                        side: BorderSide(color: Color.fromRGBO(1, 165, 96, 1)),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        leading: Image.asset(images[index]),
                        title: Text(titles[index]),
                        subtitle: Text(subtitles[index]),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => pages[index],
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(1, 165, 96, 1),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/homeicon.png'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/newsicon.png'),
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
