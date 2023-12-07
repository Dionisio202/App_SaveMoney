import 'package:app/CustomImage.dart';
import 'package:app/CustomText.dart';
import 'package:app/CustomtxtField.dart';
import 'package:app/CustomtxtPassword.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Center(
                child: CustomImage(
                  imagePath: 'pictures/registern.png',
                  width: 182,
                  height: 196,
                ),
              ),
              const SizedBox(height: 10),
              CustomText(
                text: "Crear perfil",
                color: Colors.black,
                fontSize: 23,
              ),
              const SizedBox(height: 5),
              CustomText(
                text: "Por favor crea tu perfil",
                color: Colors.black,
                fontSize: 13,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                labelText: "Correo Electronico",
                fontSize: 16.0,
                textFieldWidth: 300.0,
                icon: Icons.email,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                labelText: "Nombres",
                fontSize: 16.0,
                textFieldWidth: 300.0,
                icon: Icons.person,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                labelText: "Apellidos",
                fontSize: 16.0,
                textFieldWidth: 300.0,
                icon: Icons.person,
              ),
              const SizedBox(height: 16),
              CustomTextFieldPassword(
                  labelText: "Contraseña",
                  fontSize: 16.0,
                  textFieldWidth: 300,
                  icon: Icons.visibility),
              const SizedBox(height: 16),
              CustomTextFieldPassword(
                  labelText: "Vuelva a escribir su contraseña",
                  fontSize: 16.0,
                  textFieldWidth: 300,
                  icon: Icons.visibility),
              SizedBox(height: 25.0),
              ElevatedButton(
                onPressed: () {},
                child: Text('Registrarse'),
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color(0xFFBFBF3D), // Color de fondo del botón
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fixedSize: Size(140, 40)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
