import 'package:flutter/material.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({super.key, required this.width, required this.height});
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
                width: 2, color: const Color.fromARGB(164, 255, 255, 255)),
            color: const Color.fromARGB(50, 72, 137, 191),
            borderRadius: const BorderRadius.all(Radius.circular(25.0))),
        child: Column(children: [
          const Spacer(
            flex: 1,
          ),
          Expanded(
              flex: 2,
              child: Container(
                height: height * 0.1,
                width: height * 0.1,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(164, 255, 255, 255),
                    borderRadius:
                        BorderRadius.all(Radius.circular(height * 0.05))),
                child: const Icon(
                  size: 50,
                  Icons.person_3,
                  color: Color.fromARGB(50, 72, 137, 191),
                ),
              )),
          const Expanded(
              flex: 2,
              child: Text(
                "LOGIN",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              )),
          const Expanded(
              flex: 2,
              child: Row(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    flex: 8,
                    child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 246, 246),
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              size: 20,
                              Icons.person_3,
                              color: Color.fromARGB(255, 250, 246, 246),
                            ))),
                  ),
                  Spacer(
                    flex: 1,
                  )
                ],
              )),
          const Expanded(
              flex: 2,
              child: Row(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    flex: 8,
                    child: TextField(
                        textAlign: TextAlign.center,
                        obscureText: true,
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 246, 246),
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              size: 20,
                              Icons.password,
                              color: Color.fromARGB(255, 250, 246, 246),
                            ))),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              )),
          const Spacer(
            flex: 1,
          ),
        ]));
  }
}
