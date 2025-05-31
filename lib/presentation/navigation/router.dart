import 'package:about_chicken/presentation/screens/chicken_feed.dart';
import 'package:about_chicken/presentation/screens/first_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [GoRoute
  (path: '/',
   builder: (context, state) => FirstScreen(),),
  GoRoute(path: '/feed', builder: (context, state) => ChickenFeed()),
  
  ],
);
