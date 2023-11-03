import 'package:app/CustomImage.dart';
import 'package:app/CustomText.dart';
import 'package:app/CustomtxtField.dart';
import 'package:app/CustomtxtPassword.dart';
import 'package:app/Register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 60.0),
                CustomText(
                  text: '¡Bienvenido de nuevo! ',
                  color: Colors.black,
                  fontSize: 30.0,
                  fontFamily: 'Arial',
                ),
                SizedBox(height: 10.0),
                CustomText(
                  text: ' Por favor ingrese su cuenta',
                  color: Colors.black,
                  fontSize: 15.0,
                  fontFamily: 'Arial',
                ),
                SizedBox(height: 30.0),
                CustomImage(
                  imagePath: 'pictures/login.png',
                  width: 250.0,
                  height: 200.0,
                ),
                SizedBox(height: 30.0),
                CustomTextField(
                  labelText: "Correo Electrónico",
                  fontSize: 16.0,
                  textFieldWidth: 300.0,
                  icon: Icons.email,
                ),

                SizedBox(height: 25.0),
                CustomTextFieldPassword(
                  labelText: 'Contraseña',
                  fontSize: 16.0,
                  textFieldWidth: 300.0, // Especifica el ancho deseado.
                  icon: Icons.visibility,
                  onChanged: (value) {
                    // Tu lógica de manejo del cambio.
                  },
                ),
                SizedBox(height: 25.0),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Iniciar Sesión'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color(0xFFBFBF3D), // Color de fondo del botón
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                const SizedBox(
                    height: 10.0), // Mueve estos SizedBox dentro de la columna
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: '¿Aún no eres miembro?',
                        color: const Color.fromARGB(255, 152, 152, 148),
                        fontSize: 13.0,
                        fontFamily: 'Arial',
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Register(),
                            ),
                          );
                        },
                        child: CustomText(
                          text: 'Regístrate',
                          color: const Color.fromARGB(255, 79, 79, 77),
                          fontSize: 16.0,
                          fontFamily: 'Arial',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 100.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
