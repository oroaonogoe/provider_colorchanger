import 'package:go_router/go_router.dart';
import 'package:provider_colorchanger/screens/home/home_screen.dart';

GoRouter goRouter() {
  return GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
