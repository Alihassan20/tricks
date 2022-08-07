import 'package:flutter/material.dart';
Container buildFittedBox() {
  return Container(
    color: Colors.redAccent,
    height: 50,
    width: 100,
    child: const FittedBox(
        child: Text(
          "Fitted Box",
          style: TextStyle(fontSize: 100),
        )),
  );
}