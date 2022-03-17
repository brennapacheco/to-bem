import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xFFAAC9CE),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'me fala seu @',
                      hintStyle: TextStyle(color: Color(0xFF576B9E)),
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
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'digite sua senha, prometo que não vou olhar',
                      hintStyle: TextStyle(color: Color(0xFF576B9E)),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 160,
                      height: 50,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      child: ElevatedButton(
                          onPressed: () => onPressedSignUp(context),
                          child: const Text('Sign Up')),
                    ),
                    Container(
                      width: 160,
                      height: 50,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      child: ElevatedButton(
                          onPressed: () => onPressedLogIn(context),
                          child: const Text('Log In')),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 150,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  onPressedLogIn(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/activities');
  }

  onPressedSignUp(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/signup');
  }
}
