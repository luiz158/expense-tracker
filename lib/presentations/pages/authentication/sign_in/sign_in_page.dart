import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../components/expandable_app_bar.dart';
import '../forgor_password/forgot_pw_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
  static String routeName = '/sign_in';

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        lead: GestureDetector(
          child: Image.asset('assets/icons/arrow-left.png'),
          onTap: () => Navigator.pop(context),
        ),
        text: Text('Sign In', style: title3.copyWith(color: kDark100)),
      ),
      body: const Body(),
    );
  }
}
