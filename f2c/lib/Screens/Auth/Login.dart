import 'package:f2c/Screens/Auth/signup.dart';
import 'package:f2c/Theme/strings.dart';
import 'package:f2c/widgets/login/signupwidegt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(loginsignup),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Login Form
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: LoginForm(
                //textfield 1
                label: 'E-mail',
                licon: Icons.email,
                obscureText: false,
                onChanged: (p0) {},
                //textfield2
                label2: 'Password',
                licon2: Icons.lock,
                obscureText2: true,
                onChanged2: (p0) {},
                //-----
                ElevetdonPress: () {
                  Get.to(signuppage());
                },
                forgetonPress: () {},
                onPress: () {},

                frogetpassword: 'Forget password?',
                buttontext: 'Login',
                textbutton: 'Don\'t have an account? signup',
              ), // Use the new LoginForm widget
            ),
          ),
          // Bottom Circle Avatars
        ],
      ),
    );
  }
}
