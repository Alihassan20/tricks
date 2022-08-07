import 'package:flutter/material.dart';

class BuildAnimatedContainer extends StatefulWidget {
  bool isSelectet;
   BuildAnimatedContainer({required this.isSelectet});

  @override
  State<BuildAnimatedContainer> createState() => _BuildAnimatedContainerState();
}

class _BuildAnimatedContainerState extends State<BuildAnimatedContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          widget.isSelectet=!widget.isSelectet;
        });
      },
      child: AnimatedContainer(duration: Duration(seconds: 1),
        color: widget.isSelectet ? Colors.redAccent : Colors.grey,
        height:widget.isSelectet?100:200,
        width:widget.isSelectet?100:200,),
    );
  }
}
