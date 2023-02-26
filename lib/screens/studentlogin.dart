import 'package:bharatrides_ui/widgets/customappbar.dart';
import 'package:bharatrides_ui/widgets/customdropdownbtn.dart';
import 'package:flutter/material.dart';

import '../widgets/customtextfield.dart';
import '../widgets/registrationbutton.dart';

class StudentLogin extends StatefulWidget {
  const StudentLogin({super.key});

  @override
  State<StudentLogin> createState() => _StudentLoginState();
}

class _StudentLoginState extends State<StudentLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(
            fieldName: 'Student ID',
            hintText: 'Enter your id',
          ),
          const CustomDropDown(),
          RegistrationBtn(onPressed: () {}, media: MediaQuery.of(context)),
        ],
      ),
    );
  }
}
