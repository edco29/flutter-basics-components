import 'package:flutter/material.dart';
import 'package:flutter_components/route/app_routes.dart';
import 'package:flutter_components/screens/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: AppRoutes.initialRoute,
        onGenerateRoute: AppRoutes.onGenerateRoute,
        routes: AppRoutes.getAppRoutes(),
        title: 'Material App',
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false);
  }
}
