import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image/image.dart' as IMG;
import 'package:http/http.dart' as http;

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);

  final options = const ["edwin", "david", "melissa", "leticia"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView Tipo 2")),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
              title: Text(options[index]),
              leading: const CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage("assets/car.jpg"),
                backgroundColor: Colors.transparent,
              ),
              trailing: const Icon(Icons.arrow_right, color: Colors.indigo),
              onTap: null),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: options.length),
    );
  }
}

Future<http.Response> httGetAvatar(String url) async {
  return await http.get(Uri.parse(url));
}

Uint8List reduceImageSize(Uint8List bytes) {
  IMG.Image? img = IMG.decodeImage(bytes);
  IMG.Image resized = IMG.copyResize(img!, width: 20, height: 20);
  Uint8List resizedImg = Uint8List.fromList(IMG.encodePng(resized));
  return resizedImg;
}
