import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  MyCustomClipper(
      {required this.moveOffset,
      required this.lineOffset,
      required this.pieceCount});

  final Offset moveOffset;
  final Offset lineOffset;
  int pieceCount;

  @override
  Path getClip(Size size) {
    var Size(:height, :width) = size;
    Path path = Path();
    path.moveTo(width * moveOffset.dx, height * moveOffset.dy);
    path.lineTo(width * lineOffset.dx, height * moveOffset.dy);
    path.lineTo(width * lineOffset.dx, height * lineOffset.dy);
    path.lineTo(width * moveOffset.dx, height * lineOffset.dy);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
