import 'package:flutter/material.dart';
import '../routes/app_router.dart';
import '../theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Crédit Agricole Assicurazioni',
      theme: AppTheme.lightTheme,
      routerConfig: AppRouter.router,
    );
  }
}
