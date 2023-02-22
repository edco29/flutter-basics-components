import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(title: Text("Input Data")),
      body: Center(
          heightFactor: 1.2,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                key: myFormKey,
                child: Column(
                  children: [
                    const CustomInputField(
                      hintText: "Ingrese usuario",
                      labelText: "Nombres",
                      icon: Icons.people,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const CustomInputField(
                      hintText: "Ingrese apellidos",
                      labelText: "Apellidos",
                      icon: Icons.local_convenience_store_outlined,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const CustomInputField(
                      hintText: "Ingrese Email",
                      labelText: "Email",
                      icon: Icons.mail,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const CustomInputField(
                      hintText: "Ingrese Contraseña",
                      labelText: "Contraseña",
                      icon: Icons.lock,
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          // deactive keyboard only in "onPressed"
                          FocusScope.of(context).requestFocus(FocusNode());
                          if (!myFormKey.currentState!.validate()) {
                            print("formulario no valido");
                            return;
                          }
                        },
                        child: const SizedBox(
                          width: double.infinity,
                          child: Center(child: Text("Guardar")),
                        ))
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
