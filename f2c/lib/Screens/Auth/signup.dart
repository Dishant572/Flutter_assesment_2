import 'package:f2c/Theme/strings.dart';
import 'package:f2c/widgets/login/signupwidegt.dart';
import 'package:flutter/material.dart';

class signuppage extends StatefulWidget {
  const signuppage({super.key});

  @override
  _signupPageState createState() => _signupPageState();
}

class _signupPageState extends State<signuppage> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
                label2: 'Password',
                licon2: Icons.lock,
                obscureText2: true,
                onChanged2: (p0) {},
                //--------
                ElevetdonPress: () {},
                forgetonPress: () {},
                onPress: () {},

                frogetpassword: '',
                buttontext: 'SignUp',
                textbutton: 'Alredy have an account? signup',
              ), // Use the new LoginForm widget
            ),
          ),
          // Bottom Circle Avatars
        ],
      ),
    );
  }
}
