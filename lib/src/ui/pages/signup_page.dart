import 'package:flutter/material.dart';
import 'package:placeholder_api/src/ui/widgets/widgets.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _username = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();

  void _signUp() {
    print('button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  placeholder: 'Username',
                  textFieldController: _username,
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomTextField(
                  placeholder: 'Email',
                  textFieldController: _email,
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomTextField(
                  placeholder: 'Password',
                  textFieldController: _password,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 12,
                ),
                RoundedButton(
                  title: 'Login',
                  onPressHandler: _signUp,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
