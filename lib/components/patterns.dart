import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
      backgroundColor: const Color(0xFFF8F8FB),
      leading: Image.asset('assets/images/profile.jpg'),
      elevation: 0,
      actions: [
        IconButton(
          icon: const Icon(Icons.more_horiz),
          color: const Color(0xFFA6A9E8),
          iconSize: 40,
          onPressed: () {}, //TODO: chamar drawer
        ),
      ],);
}

Widget buildStandardInput(
  TextEditingController controller, {
  TextInputType? keyboardType,
  String? label,
  bool? obscure,
  String? hint,
  String? value,
}) {
  return TextFormField(
    controller: controller,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    keyboardType: keyboardType,
    autofocus: true,
    obscureText: obscure ?? false,
    decoration: InputDecoration(
      labelText: label,
      hintText: hint,
    ),
  );
}

Widget buildFeelingsInput(
  TextEditingController controller,
  BuildContext context,
) {
  return Container(
      margin: const EdgeInsets.only(left: 16, right: 16),
      height: 70,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFF576B9E),
            blurRadius: 5,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText:
                'Se não estiver tudo bem, gostaria de compartilhar sobre o que te afetou?',
            hintMaxLines: 2,
            hintStyle:
                const TextStyle(color: Color(0xFF576B9E), fontSize: 12),
            filled: true,
            fillColor: const Color(0xFFF8F8FB),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color(0xFFF8F8FB),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color(0xFF576B9E),
                width: 2,
              ),
            ),
          ),
          onSubmitted: (String _feelingsBoxController) async {
            await showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Obrigada por compartilhar!'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            );
          },),);
}

Widget title(String title, String subtitle) {
  return Container(
    margin: const EdgeInsets.only(left: 16, top: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(subtitle,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF292643),
                ),),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xFF292643),
                  fontWeight: FontWeight.bold,),
            ),
          ],
        ),
      ],
    ),
  );
}
