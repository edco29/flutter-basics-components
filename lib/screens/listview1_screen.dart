import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  final data = const ["edwin", "david", "melissa", "leticia"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Tipo 1"),
      ),
      body: ListView(
        children: data
            .map((e) => ListTile(
                  onTap: () {},
                  title: Text(e),
                  trailing: const Icon(Icons.arrow_right),
                ))
            .toList(),
      ),
    );
  }
}
