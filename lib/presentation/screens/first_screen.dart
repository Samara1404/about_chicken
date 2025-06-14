
import 'package:about_chicken/presentation/screens/chicken_feed.dart';
import 'package:about_chicken/presentation/screens/chicken_fertilization.dart';
import 'package:about_chicken/presentation/screens/chicken_treatment.dart';
import 'package:about_chicken/presentation/screens/news_screen.dart';
import 'package:about_chicken/presentation/screens/vet_screen.dart';
import 'package:about_chicken/presentation/widgets/custom_appbar.dart';
import 'package:about_chicken/presentation/widgets/logo.dart';
import 'package:about_chicken/presentation/widgets/share.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final List<String> images = [
    'assets/images/lvsicon1.png',
    'assets/images/lvsicon2.png',
    'assets/images/lvsicon3.png',
  ];

  final List<String> titles = ['Тоюттануусу', 'Ооруусу', 'Уруктандыруу'];

  final List<Widget> pages = [
    const ChickenFeed(),
    const ChickenTreatment(),
    const ChickenFertilization(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: 'Тоок',
        leading: const Logo(),
        actions: const [Share()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(26),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 145,
                  child: Image.asset('assets/images/livesstock2.png'),
                ),
                SizedBox(
                  width: 130,
                  height: 130,
                  child: Image.asset('assets/images/mhen.png'),
                ),
              ],
            ),
            SizedBox(height: 60),
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
                        leading: Image.asset(
                          images[index],
                          color: Color.fromRGBO(1, 165, 96, 1),
                        ),
                        title: Text(
                          titles[index]),
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
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((context) => ChickenFeed())),
                  );
                },
                icon: Image.asset('assets/images/homeicon.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((context) => NewsScreen())),
                  );
                },
                icon: Image.asset('assets/images/newsicon.png'),
              ),

              label: '',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((context) => VetScreen())),
                  );
                },
                icon: Image.asset('assets/images/veticon.png'),
              ),

              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
