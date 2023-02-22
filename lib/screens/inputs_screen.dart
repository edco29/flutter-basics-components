import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Input Data")),
      body: Center(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                autocorrect: false,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                autofocus: false,
                onChanged: (value) {
                  print('value: $value');
                },
                validator: (value) {
                  if (value == null) {
                    return "este campo es requerido";
                  }
                  return value.length < 10 ? "minimo 10 letras" : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: 'Nombre del Usuario',
                  labelText: 'Nombre',
                  helperText: 'Solo Letras',
                  icon: Icon(Icons.abc),
                  //prefixIcon: Icon(Icons.abc),
                  suffixIcon: Icon(Icons.bus_alert),
                  //focusedBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.green)),
                  //border: OutlineInputBorder(
                  //  borderRadius: BorderRadius.all(Radius.circular(10)))
                  //
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
