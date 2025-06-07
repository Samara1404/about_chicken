import 'package:about_chicken/presentation/pages/chicken_category.dart';
import 'package:about_chicken/presentation/pages/fert_text.dart';
import 'package:about_chicken/presentation/screens/chicken_feed.dart';
import 'package:about_chicken/presentation/screens/chicken_treatment.dart';
import 'package:about_chicken/presentation/screens/first_screen.dart';
import 'package:about_chicken/presentation/pages/text_about_chicken.dart';
import 'package:about_chicken/presentation/screens/register_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute
  (path: '/',
   builder: (context, state) => FirstScreen(),),
   GoRoute(path: '/register', builder: (context, state) => RegisterScreen()),
  GoRoute(path: '/feed', builder: (context, state) => ChickenFeed()),
  GoRoute(path: '/text', builder: (context, state) => TextAboutChicken()),  
 GoRoute(path: '/chicken', builder: (context, state) => ChickenCategory()),
  GoRoute(path: '/treatment', builder: (context, state) => ChickenTreatment()),
  GoRoute(path: '/fert', builder: (context, state) => FertText()),
  ],
);
