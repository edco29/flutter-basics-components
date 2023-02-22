import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Input Data")),
      body: Center(
          heightFactor: 3,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: const [
                  CustomInputField(
                    hintText: "Ingrese usuario",
                    labelText: "Nombres",
                    icon: Icons.people,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  CustomInputField(
                    hintText: "Ingrese apellidos",
                    labelText: "Apellidos",
                    icon: Icons.local_convenience_store_outlined,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
