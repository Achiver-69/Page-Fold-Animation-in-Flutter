import 'package:flutter/material.dart';

class LoginCardBackground extends StatelessWidget {
  const LoginCardBackground(
      {super.key, required this.width, required this.height});

  // ignore: prefer_typing_uninitialized_variables
  final width;
  // ignore: prefer_typing_uninitialized_variables
  final height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.5,
      width: width * 0.6,
      decoration: BoxDecoration(
          border: Border.all(
              width: 2, color: const Color.fromARGB(255, 255, 255, 255)),
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: const BorderRadius.all(Radius.circular(25.0))),
      child: const Column(
        children: [
          Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Center(
                          child: Text(
                        "I",
                        style: TextStyle(fontSize: 25),
                      ))),
                      Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Center(
                            child: Text(
                          "O",
                          style: TextStyle(fontSize: 25),
                        )),
                      )),
                      Expanded(
                      flex: 4,
                      child: Center(
                          child: Text(
                        "H",
                        style: TextStyle(fontSize: 25),
                      )))
                ],
              )),
                 Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(top:  35 ,right:3 ),
                          child: Text(
                                                  "I",
                                                  style: TextStyle(fontSize: 25),
                                                ),
                        ),
                      )),
                      Expanded(
                      flex: 3,
                      child: Center(
                          child: Text(
                        "O",
                        style: TextStyle(fontSize: 25),
                      ))),
                      Expanded(
                      flex: 3,
                      child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(top:  35 ,right:3),
                            child: Text(
                                                    "H",
                                                    style: TextStyle(fontSize: 25),
                                                  ),
                          )))
                ],
              )),
                 Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Center(
                          child: Text(
                        "I",
                        style: TextStyle(fontSize: 25),
                      ))),
                      Expanded(
                      flex: 3,
                      child: Center(
                          child: Text(
                        "O",
                        style: TextStyle(fontSize: 25),
                      ))),
                      Expanded(
                      flex: 3,
                      child: Center(
                          child: Text(
                        "H",
                        style: TextStyle(fontSize: 25),
                      )))
                ],
              ))

        ],
      ),
    );
  }
}
