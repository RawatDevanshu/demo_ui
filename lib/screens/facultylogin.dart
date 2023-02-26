import 'package:bharatrides_ui/widgets/customappbar.dart';
import 'package:bharatrides_ui/widgets/customdropdownbtn.dart';
import 'package:bharatrides_ui/widgets/registrationbutton.dart';
import 'package:flutter/material.dart';

import '../widgets/customtextfield.dart';

class FacultyLogin extends StatefulWidget {
  const FacultyLogin({super.key});

  @override
  State<FacultyLogin> createState() => _FacultyLoginState();
}

class _FacultyLoginState extends State<FacultyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(
            fieldName: 'Teacher ID',
            hintText: 'Enter your id',
          ),
          CustomTextField(fieldName: 'Name', hintText: 'Enter your name'),
          CustomDropDown(),
          RegistrationBtn(onPressed: () {}, media: MediaQuery.of(context)),
        ],
      ),
    );
  }
}
