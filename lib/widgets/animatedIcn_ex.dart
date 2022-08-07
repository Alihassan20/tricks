import 'package:flutter/material.dart';

class buildAnimatedIcon extends StatefulWidget {
  bool isSelected;
  AnimationController animationController;
   buildAnimatedIcon({required this.isSelected, required this.animationController});

  @override
  State<buildAnimatedIcon> createState() => _buildAnimatedIconState();
}

class _buildAnimatedIconState extends State<buildAnimatedIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){
        setState(() {
          widget.isSelected =!widget.isSelected;
          widget.isSelected ? widget.animationController.forward():widget.animationController.reverse();
        });
      },
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_home,
          color: Colors.redAccent,
          progress: widget.animationController),
    );
  }
}
