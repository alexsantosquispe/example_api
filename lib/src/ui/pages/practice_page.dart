import 'package:flutter/material.dart';
import 'package:placeholder_api/src/ui/constants/base_colors.dart';
import 'package:placeholder_api/src/ui/widgets/widgets.dart';

class PracticePage extends StatefulWidget {
  @override
  _PracticePageState createState() => _PracticePageState();
}

class _PracticePageState extends State<PracticePage> {
  void mockAction() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Column(
              children: [
                const CircleImage(
                  size: 80,
                  label: 'A',
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomTextField(
                  placeholder: 'Username',
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomTextField(
                  placeholder: 'Password',
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomTextField(
                  placeholder: 'Repeat password',
                ),
                const SizedBox(
                  height: 16,
                ),
                TextButton(
                  onPressed: mockAction,
                  child: const Text('TextButton'),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(backgroundColor: accent),
                  child: const Text('ElevatedButton'),
                ),
                const SizedBox(
                  height: 16,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('OutlinedButton'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
