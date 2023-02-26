import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  const CustomAppBar(
      {super.key, this.preferredSize = const Size.fromHeight(50.0)});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: Column(
        children: [
          Text('Welcome!'),
          Text('Please fill the details.'),
        ],
      ),
    );
  }
}
