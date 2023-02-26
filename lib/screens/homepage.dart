import 'package:bharatrides_ui/screens/studentlogin.dart';
import 'package:flutter/material.dart';

import '../widgets/homescreenbutton.dart';
import 'facultylogin.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(250, 249, 246, 1),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          const SizedBox(height: 20),
          Image.asset(
            'assets/images/logo.png',
            scale: 2,
          ),
          const SizedBox(height: 20),
          HomePageBtn(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FacultyLogin()));
            },
            text: 'Faculty',
            media: query,
          ),
          const SizedBox(height: 20),
          HomePageBtn(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => StudentLogin()));
              },
              text: 'Student',
              media: query),
        ]),
      ),
    );
  }
}
