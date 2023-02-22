import 'package:flutter/material.dart';
import 'package:flutter_components/route/app_routes.dart';
import 'package:flutter_components/screens/listview1_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Componentes de un Flutter")),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(AppRoutes.menuOptions[index].name),
                leading: Icon(AppRoutes.menuOptions[index].icon),
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(AppRoutes.menuOptions[index].router);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}
