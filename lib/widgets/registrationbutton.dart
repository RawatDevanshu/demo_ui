import 'package:flutter/material.dart';

class RegistrationBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final MediaQueryData media;
  const RegistrationBtn(
      {super.key, required this.onPressed, required this.media});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: media.size.width - 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Register'),
            ],
          )),
    );
  }
}
