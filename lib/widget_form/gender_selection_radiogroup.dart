import 'package:flutter/material.dart';

class GenderSelectionRadioGroup extends StatefulWidget {
  const GenderSelectionRadioGroup({super.key});

  @override
  State<GenderSelectionRadioGroup> createState() =>
      _GenderSelectionRadioGroupState();
}

class _GenderSelectionRadioGroupState extends State<GenderSelectionRadioGroup> {
  String? sex = 'male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gender (RadioGroup)')),
      body: Center(
        child: RadioGroup<String>(
          groupValue: sex,
          onChanged: (String? val) {
            setState(() {
              sex = val;
            });
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Gender: '),
              SizedBox(width: 8),
              Radio<String>(value: 'male'),
              Text('Male'),
              SizedBox(width: 16),
              Radio<String>(value: 'female'),
              Text('Female'),
            ],
          ),
        ),
      ),
    );
  }
}
