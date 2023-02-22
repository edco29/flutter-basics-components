import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Card Wiget")),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          children: const [
            CustomCardType1(),
            SizedBox(height: 8.0),
            CustomCardType2(
                imageUrl:
                    "https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg",
                nameDescription: "Edwin Contreras"),
            SizedBox(height: 8.0),
            CustomCardType2(
                imageUrl:
                    "https://cdn.mos.cms.futurecdn.net/ASHH5bDmsp6wnK6mEfZdcU.jpg"),
            SizedBox(height: 8.0),
            CustomCardType2(
              imageUrl:
                  "https://i.natgeofe.com/n/4f5aaece-3300-41a4-b2a8-ed2708a0a27c/domestic-dog_thumb_3x2.jpg",
            )
          ],
        ));
  }
}
