import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFAAC9CE),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'me fala seu e-mail',
                  filled: true,
                  fillColor: const Color(0xFFF8F8FB),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xFFF8F8FB),
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xFF576B9E),
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'me fala seu @',
                  filled: true,
                  fillColor: const Color(0xFFF8F8FB),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xFFF8F8FB),
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xFF576B9E),
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'digite sua senha, prometo que não vou olhar',
                  filled: true,
                  fillColor: const Color(0xFFF8F8FB),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color:  Color(0xFFF8F8FB),
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color:  Color(0xFF576B9E),
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: ElevatedButton(
                  onPressed: () => onPressedSignUp(context),
                  child: const Text('Sign Up')),
            ),
            const SizedBox(
              height: 150,
            )
          ],
        ),
      ),
    );
  }

  onPressedSignUp(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/login');
  }
}
