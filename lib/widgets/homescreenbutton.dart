import 'package:flutter/material.dart';

class HomePageBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final MediaQueryData media;
  const HomePageBtn(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.media});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: media.size.width - 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black54),
          child: Row(
            children: [
              const Icon(Icons.person),
              const SizedBox(
                width: 5,
              ),
              Text(text),
            ],
          )),
    );
  }
}
