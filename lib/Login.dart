import 'package:app/CustomTextField.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio de Sesión'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomTextField(
              labelText: 'Contraseña',
              fontSize: 16.0,
              textFieldWidth: 300.0, // Especifica el ancho deseado.
              icon: Icons.visibility,
              onChanged: (value) {
                // Tu lógica de manejo del cambio.
              },
            ),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Contraseña',
              ),
              obscureText: false,
            ),
            /* ElevatedButton(
              onPressed: ,
              child: Text('Iniciar Sesión'),
            ),*/
          ],
        ),
      ),
    );
  }
}
