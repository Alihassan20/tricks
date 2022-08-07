import 'package:flutter/material.dart';
class buildChoiceChip extends StatefulWidget {
  bool isSelected;
   buildChoiceChip({required this.isSelected});

  @override
  State<buildChoiceChip> createState() => _buildChoiceChipState();
}

class _buildChoiceChipState extends State<buildChoiceChip> {
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text("Choose"),
      selected: widget.isSelected,
      selectedColor:Colors.redAccent,
      onSelected: (newBoolSelected) {
        setState(() {
          widget.isSelected = newBoolSelected;
        });
      },
    );
  }
}

