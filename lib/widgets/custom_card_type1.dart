import 'package:flutter/material.dart';
import 'package:flutter_components/screens/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppTheme.primaryColor.withOpacity(0.5),
      child: Column(children: [
        const ListTile(
          title: Text("Soy un titulo"),
          leading: Icon(Icons.abc),
          subtitle: Text(
              "Aute enim est velit labore irure   aute labore in ullamcale labore in ullamcale labore in ullamcaliqua duis."),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text("Cancel"),
              ),
              TextButton(onPressed: () {}, child: const Text("Ok"))
            ],
          ),
        )
      ]),
    );
  }
}
