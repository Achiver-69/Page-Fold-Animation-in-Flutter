import 'package:flutter/material.dart';

class ProfileCard extends StatefulWidget {
   ProfileCard({super.key, required this.width, required this.height,this.changeToIcon=false});
  // ignore: prefer_typing_uninitialized_variables
  var width;
  // ignore: prefer_typing_uninitialized_variables
  var height;
  bool changeToIcon=false;
  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    if(widget.changeToIcon){
    widget.height=widget.height * 0.05;
    widget.width=widget.height * 0.05;
    }
    return
        Container(
          height: widget.changeToIcon?widget.height : 100,
          width: widget.changeToIcon?widget.height : 100,
  decoration: const BoxDecoration(
    image: DecorationImage(image:     AssetImage("assets/images/qamar.jpg"),fit: BoxFit.fill),
    color: Colors.white,
    shape: BoxShape.circle,
  ));
  }
}
