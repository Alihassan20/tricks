import 'package:flutter/material.dart';

class buildAnimatedCrossFade extends StatefulWidget {
  bool isSelected;
   buildAnimatedCrossFade({required this.isSelected});

  @override
  State<buildAnimatedCrossFade> createState() => _buildAnimatedCrossFadeState();
}

class _buildAnimatedCrossFadeState extends State<buildAnimatedCrossFade> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          widget.isSelected=!widget.isSelected;
        });
      },
      child: AnimatedCrossFade(
          firstChild: const Center(child: Icon(Icons.add,size: 50,)),
          secondChild: const Center(child: Icon(Icons.close,size: 20,)),
          crossFadeState: widget.isSelected?CrossFadeState.showFirst:CrossFadeState.showSecond,
          duration:const  Duration(seconds: 1)),
    );
  }
}
