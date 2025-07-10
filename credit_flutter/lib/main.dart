import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'features/welcome/welcome_screen.dart';
import 'features/registration/registration_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegistrationScreen(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Crédit Agricole',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
    );
  }
}
