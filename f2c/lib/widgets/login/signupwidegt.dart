// New reusable LoginForm widget
//import 'package:f2c/widgets/Customtextfield.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final String frogetpassword;
  final String buttontext;
  final String textbutton;
  final String label;
  final bool obscureText;
  final Function(String) onChanged;
  final IconData licon;
  final String label2;
  final bool obscureText2;
  final Function(String) onChanged2;
  final IconData licon2;
  final VoidCallback ElevetdonPress;
  final VoidCallback forgetonPress;
  final VoidCallback onPress; // Added onPress

  const LoginForm({
    super.key,
    required this.frogetpassword,
    required this.buttontext,
    required this.textbutton,
    required this.label,
    required this.obscureText,
    required this.onChanged,
    required this.licon,
    required this.label2,
    required this.obscureText2,
    required this.onChanged2,
    required this.licon2,
    required this.ElevetdonPress,
    required this.forgetonPress,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20.0),
          TextField(
            obscureText: obscureText,
            onChanged: onChanged,
            decoration: InputDecoration(
              labelText: label,
              labelStyle: const TextStyle(color: Colors.white),
              prefixIcon: Icon(
                licon,
                color: Colors.white,
              ),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
            style: const TextStyle(color: Colors.white),
          ),
          TextField(
            obscureText: obscureText2,
            onChanged: onChanged2,
            decoration: InputDecoration(
              labelText: label2,
              labelStyle: const TextStyle(color: Colors.white),
              prefixIcon: Icon(
                licon2,
                color: Colors.white,
              ),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
            style: const TextStyle(color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                    checkColor: Colors.black,
                    activeColor: Colors.white,
                  ),
                  const Text(
                    'Remember Me',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              TextButton(
                onPressed: forgetonPress,
                child: Text(
                  frogetpassword,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: ElevetdonPress,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: Text(buttontext),
          ),
          const SizedBox(height: 20.0),
          TextButton(
            onPressed: onPress,
            child: Text(
              textbutton,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
