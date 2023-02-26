import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String fieldName;
  final String hintText;
  CustomTextField({
    super.key,
    required this.fieldName,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(fieldName)
          ],
        ),
        const SizedBox(
          height: 3,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                color: Colors.indigoAccent,
                width: 2,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                color: Colors.indigo,
                width: 2,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
