import 'package:flutter/material.dart';

class Steperbuild extends StatefulWidget {
  int current;

  Steperbuild({required this.current});

  @override
  State<Steperbuild> createState() => _SteperbuildState();
}

class _SteperbuildState extends State<Steperbuild> {
  @override
  Widget build(BuildContext context) {
    return Stepper(
      elevation: 2,
      steps: const [
        Step(title: Text("First Step"), content: Text("First Contect")),
        Step(title: Text("Secound Step"), content: Text("Secound Contect")),
        Step(title: Text("Third Step"), content: Text("Third Contect")),
      ],
      onStepTapped: (int index) {
        setState(() {
          widget.current = index;
        });
      },
      currentStep: widget.current,
      onStepCancel: () {
        if (widget.current != 0) {
          setState(() {
            widget.current -= 1;
          });
        }
      },
      onStepContinue: () {
        if (widget.current != 2) {
          setState(() {
            widget.current += 1;
          });
        }
      },
    );
  }
}
