import 'dart:math';

import 'package:animation_good_assignment/my_custom_clipper.dart';
import 'package:animation_good_assignment/profile_card.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LoginForm extends StatefulWidget {
  const LoginForm(
      {super.key,
      required this.width,
      required this.height,
      required this.loginCard,
      required this.loginCardBack});
  // ignore: prefer_typing_uninitialized_variables
  final width;
  // ignore: prefer_typing_uninitialized_variables
  final height;
  // ignore: prefer_typing_uninitialized_variables
  final loginCard;
  // ignore: prefer_typing_uninitialized_variables
  final loginCardBack;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> with TickerProviderStateMixin {
  late AnimationController row1Controller;
  late AnimationController row3Controller;
  late AnimationController row2Colum1Controller;
  late AnimationController row2Colum3Controller;
  late AnimationController profileController;
  late AnimationController profileMoveController;
  late AnimationController loginButtonController;

  late Animation row1FlipAnimation;
  late Animation row1FlipAnimation1;
  late Animation row1FlipAnimation2;
  late Animation row3FlipAnimation;
  late Animation row3FlipAnimation2;
  late Animation row2Colum1FlipAnimation;
  late Animation row2Colum1FlipAnimation2;
  late Animation row2Colum3FlipAnimation;
  late Animation row2Colum3FlipAnimation2;
  late Animation profileAnimation;
  late Animation profileAnimation2;
  late Animation profileMoveAnimation;
  late Animation profileMoveAnimation2;
  late Animation loginButtonAnimation;
  late Animation loginButtonTopAnimation;
  late Animation loginButtonLeftAnimation;
  late Animation loginButtonWidthAnimation;
  late Animation loginButtonHeightAnimation;

  @override
  void initState() {
    super.initState();
    const int durationOfAnimationOfLoginCard = 1;
    loginButtonController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..addStatusListener(
            (status) {
              if (profileMoveController.isCompleted) {}
            },
          )
          ..addListener(
            () => setState(() {}),
          );

    profileMoveController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1250))
      ..addStatusListener(
        (status) {
          if (profileMoveController.isCompleted) {}
        },
      )
      ..addListener(
        () => setState(() {}),
      );
    profileController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..addStatusListener(
            (status) {
              if (profileController.isCompleted) {
                profileMoveController.forward();
                loginButtonController.forward();
              }
            },
          )
          ..addListener(
            () => setState(() {}),
          );

    row2Colum3Controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: durationOfAnimationOfLoginCard))
      ..addStatusListener(
        (status) {
          if (row2Colum3Controller.isCompleted) {
            profileController.forward();
          }
        },
      )
      ..addListener(
        () => setState(() {}),
      );
    row2Colum1Controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: durationOfAnimationOfLoginCard))
      ..addStatusListener(
        (status) {
          if (row2Colum1Controller.isCompleted) {
            row2Colum3Controller.forward();
          }
        },
      )
      ..addListener(
        () => setState(() {}),
      );
    row3Controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: durationOfAnimationOfLoginCard))
      ..addStatusListener(
        (status) {
          if (row3Controller.isCompleted) {
            row2Colum1Controller.forward();
          }
        },
      )
      ..addListener(
        () => setState(() {}),
      );

    row1Controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: durationOfAnimationOfLoginCard))
      ..addStatusListener(
        (status) {
          if (row1Controller.isCompleted) {
            row3Controller.forward();
          }
        },
      )
      ..addListener(
        () => setState(() {}),
      );

    row2Colum3FlipAnimation = Tween<double>(begin: 0.0, end: 90).animate(
        CurvedAnimation(
            parent: row2Colum3Controller, curve: const Interval(0, 0.5)));
    row2Colum3FlipAnimation2 = Tween<double>(begin: 0, end: 180).animate(
        CurvedAnimation(
            parent: row2Colum3Controller, curve: const Interval(0.0, 1.0)));
    row2Colum1FlipAnimation = Tween<double>(begin: 0.0, end: 90).animate(
        CurvedAnimation(
            parent: row2Colum1Controller, curve: const Interval(0, 0.5)));
    row2Colum1FlipAnimation2 = Tween<double>(begin: 0, end: 180).animate(
        CurvedAnimation(
            parent: row2Colum1Controller, curve: const Interval(0.0, 1.0)));

    row3FlipAnimation = Tween<double>(begin: 0.0, end: 90).animate(
        CurvedAnimation(parent: row3Controller, curve: const Interval(0, 0.5)));
    row3FlipAnimation2 = Tween<double>(begin: 90, end: 180).animate(
        CurvedAnimation(
            parent: row3Controller, curve: const Interval(0.5, 1.0)));

    row1FlipAnimation = Tween<double>(begin: 0.0, end: 90).animate(
        CurvedAnimation(parent: row1Controller, curve: const Interval(0, 0.5)));
    row1FlipAnimation1 = Tween<double>(begin: 0.0, end: 0.0).animate(
        CurvedAnimation(parent: row1Controller, curve: const Interval(0, 0.5)));
    row1FlipAnimation2 = Tween<double>(begin: 90, end: 180).animate(
        CurvedAnimation(
            parent: row1Controller, curve: const Interval(0.5, 1.0)));

    profileAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: profileController, curve: Curves.bounceInOut));
    profileAnimation2 = Tween<double>(begin: 1.0, end: 0).animate(
        CurvedAnimation(
            parent: profileController, curve: const Interval(0.0, 0.5)));

    profileMoveAnimation = Tween<double>(begin: 100, end: widget.height * 0.05)
        .animate(CurvedAnimation(
            parent: profileMoveController, curve: const Interval(0.0, 0.0)));

    profileMoveAnimation2 = Tween<Offset>(
            begin: Offset(FractionalOffset.bottomCenter.dx + 1.7,
                FractionalOffset.bottomCenter.dy + 1.85),
            end: Offset(FractionalOffset.topRight.dx + 13,
                FractionalOffset.topRight.dy + 0.3))
        .animate(CurvedAnimation(
            parent: profileMoveController, curve: Curves.bounceIn));

    loginButtonLeftAnimation = Tween<double>(begin: widget.width * 0.4, end: 0)
        .animate(CurvedAnimation(
            parent: loginButtonController, curve: Curves.ease));
    loginButtonTopAnimation = Tween<double>(begin: widget.height - 60, end: 0)
        .animate(CurvedAnimation(
            parent: loginButtonController, curve:Curves.ease));

    loginButtonWidthAnimation = Tween<double>(begin: 100, end: widget.width)
        .animate(CurvedAnimation(
            parent: loginButtonController, curve: Curves.bounceOut));
    loginButtonHeightAnimation = Tween<double>(begin: 50, end: widget.height)
        .animate(CurvedAnimation(
            parent: loginButtonController, curve:Curves.bounceIn));
  }

  @override
  Widget build(BuildContext context) {
    //use stack to put different widgets on different positions
    return Stack(
      children: [
        //sizeBox for background Image
        SizedBox(
          height: widget.height,
          width: widget.width,
          child: Image.asset(
            "assets/images/background.jpg",
            fit: BoxFit.fill,
          ),
        ),
        //upper Profile icon
        Positioned(
            top: 10,
            right: 10,
            child: Container(
              height: widget.height * 0.05,
              width: widget.height * 0.05,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(164, 255, 255, 255),
                  borderRadius:
                      BorderRadius.all(Radius.circular(widget.height * 0.025))),
              child: const Icon(
                size: 20,
                Icons.person_3,
                color: Color.fromARGB(50, 72, 137, 191),
              ),
            )),

        clipLoginForm(
            animation: row1FlipAnimation,
            top: widget.height * 0.25,
            left: widget.width * 0.20,
            child: widget.loginCard,
            pieceCount: 1,
            moveOffset: const Offset(0, 0),
            lineOffset: const Offset(0.33, 0.33)),
        clipLoginForm(
            animation: row1FlipAnimation,
            top: widget.height * 0.25,
            left: widget.width * 0.20,
            child: widget.loginCard,
            pieceCount: 2,
            moveOffset: const Offset(0.33, 0),
            lineOffset: const Offset(0.66, 0.33)),
        clipLoginForm(
            animation: row1FlipAnimation,
            top: widget.height * 0.25,
            left: widget.width * 0.20,
            child: widget.loginCard,
            pieceCount: 3,
            moveOffset: const Offset(0.66, 0),
            lineOffset: const Offset(1.0, 0.33)),
        row3Controller.isCompleted
            ? const SizedBox()
            : clipLoginForm(
                animation: row2Colum1FlipAnimation,
                top: widget.height * 0.25,
                left: widget.width * 0.20,
                child: widget.loginCard,
                pieceCount: 4,
                moveOffset: const Offset(0, 0.33),
                lineOffset: const Offset(0.33, 0.66)),

        ///manage profile picture on if else condition
        row1Controller.isCompleted
            ? profileController.isCompleted
                ? SlideTransition(
                    position: profileMoveAnimation2 as Animation<Offset>,
                    child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: profileMoveAnimation.value as double,
                        height: profileMoveAnimation.value as double,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/qamar.jpg"),
                              fit: BoxFit.fill),
                          color: Colors.white,
                          shape: BoxShape.circle,
                        )),
                  )
                : Positioned(
                    top: widget.height * 0.42,
                    left: widget.width * 0.40,
                    child: SizeTransition(
                        sizeFactor: profileAnimation as Animation<double>,
                        child: ProfileCard(
                            width: widget.width, height: widget.height)),
                  )
            : clipLoginForm(
                animation: row1FlipAnimation1,
                top: widget.height * 0.25,
                left: widget.width * 0.20,
                child: widget.loginCard,
                pieceCount: 5,
                moveOffset: const Offset(0.33, 0.33),
                lineOffset: const Offset(0.66, 0.66)),
        row3Controller.isCompleted
            ? const SizedBox()
            : clipLoginForm(
                animation: row2Colum3FlipAnimation,
                top: widget.height * 0.25,
                left: widget.width * 0.20,
                child: widget.loginCard,
                pieceCount: 6,
                moveOffset: const Offset(0.66, 0.33),
                lineOffset: const Offset(1.0, 0.66)),
        row3Controller.isCompleted
            ? const SizedBox()
            : clipLoginForm(
                animation: row1FlipAnimation2,
                top: widget.height * 0.25,
                left: widget.width * 0.20,
                child: widget.loginCardBack,
                pieceCount: 1,
                moveOffset: const Offset(0, 0),
                lineOffset: const Offset(0.33, 0.33)),
        row2Colum3Controller.isCompleted
            ? const SizedBox()
            : clipLoginForm(
                animation: row1FlipAnimation2,
                top: widget.height * 0.25,
                left: widget.width * 0.20,
                child: widget.loginCardBack,
                pieceCount: 2,
                moveOffset: const Offset(0.33, 0),
                lineOffset: const Offset(0.66, 0.33)),
        row3Controller.isCompleted
            ? const SizedBox()
            : clipLoginForm(
                animation: row1FlipAnimation2,
                top: widget.height * 0.25,
                left: widget.width * 0.20,
                child: widget.loginCardBack,
                pieceCount: 3,
                moveOffset: const Offset(0.66, 0),
                lineOffset: const Offset(1.0, 0.33)),
        clipLoginForm(
            animation: row3FlipAnimation,
            top: widget.height * 0.25,
            left: widget.width * 0.20,
            child: widget.loginCard,
            pieceCount: 7,
            moveOffset: const Offset(0, 0.66),
            lineOffset: const Offset(0.33, 1)),
        clipLoginForm(
            animation: row3FlipAnimation,
            top: widget.height * 0.25,
            left: widget.width * 0.20,
            child: widget.loginCard,
            pieceCount: 8,
            moveOffset: const Offset(0.33, 0.66),
            lineOffset: const Offset(0.66, 1)),
        clipLoginForm(
            animation: row3FlipAnimation,
            top: widget.height * 0.25,
            left: widget.width * 0.20,
            child: widget.loginCard,
            pieceCount: 9,
            moveOffset: const Offset(0.66, 0.66),
            lineOffset: const Offset(1.0, 1.0)),
        row3Controller.isCompleted
            ? const SizedBox()
            : clipLoginForm(
                animation: row3FlipAnimation2,
                top: widget.height * 0.25,
                left: widget.width * 0.20,
                child: widget.loginCardBack,
                pieceCount: 7,
                moveOffset: const Offset(0, 0.66),
                lineOffset: const Offset(0.33, 1)),
        row3Controller.isCompleted
            ? const SizedBox()
            : clipLoginForm(
                animation: row3FlipAnimation2,
                top: widget.height * 0.25,
                left: widget.width * 0.20,
                child: widget.loginCardBack,
                pieceCount: 8,
                moveOffset: const Offset(0.33, 0.66),
                lineOffset: const Offset(0.66, 1)),
        row3Controller.isCompleted
            ? const SizedBox()
            : clipLoginForm(
                animation: row3FlipAnimation2,
                top: widget.height * 0.25,
                left: widget.width * 0.20,
                child: widget.loginCardBack,
                pieceCount: 9,
                moveOffset: const Offset(0.66, 0.66),
                lineOffset: const Offset(1.0, 1.0)),
        row2Colum3Controller.isCompleted
            ? const SizedBox()
            : row3Controller.isCompleted
                ? clipLoginForm(
                    animation: row2Colum1FlipAnimation2,
                    top: widget.height * 0.25,
                    left: widget.width * 0.20,
                    child: widget.loginCardBack,
                    pieceCount: 4,
                    moveOffset: const Offset(0, 0.33),
                    lineOffset: const Offset(0.33, 0.66))
                : const SizedBox(),
        //After we had folded our login form now we will replace it with another widget in here
        row3Controller.isCompleted
            ? row2Colum3Controller.isCompleted
                ? Positioned(
                    top: widget.height * 0.25,
                    left: widget.width * 0.0001,
                    child: FadeTransition(
                      opacity: profileAnimation2 as Animation<double>,
                      child: ClipPath(
                        clipper: MyCustomClipper(
                            moveOffset: const Offset(0.66, 0.33),
                            lineOffset: const Offset(1.0, 0.66),
                            pieceCount: 6),
                        child: widget.loginCardBack,
                      ),
                    ))
                : Positioned(
                    top: widget.height * 0.25,
                    left: widget.width * 0.20,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.0001)
                        ..rotateY(degToRad(-row2Colum3FlipAnimation2.value)),
                      alignment: FractionalOffset(
                          FractionalOffset.center.dx + 0.16,
                          FractionalOffset.center.dy),
                      child: ClipPath(
                        clipper: MyCustomClipper(
                            moveOffset: const Offset(0.66, 0.33),
                            lineOffset: const Offset(1.0, 0.66),
                            pieceCount: 6),
                        child: widget.loginCardBack,
                      ),
                    ))
            : const SizedBox(),

        //Login Button At bottom
        profileController.isCompleted
            ? AnimatedPositioned(
                top: loginButtonTopAnimation.value,
                left: loginButtonLeftAnimation.value,
                duration: const Duration(seconds: 2),
                child: AnimatedContainer(
                  duration: const Duration(seconds: 2),
                  height: loginButtonHeightAnimation.value,
                  width: loginButtonWidthAnimation.value,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(121, 9, 50, 107),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Center(
                      child: const Text(
                    "Welcome Qamar!",
                    style: TextStyle(fontSize: 50),
                  )
                          .animate()
                          
                          .fade( delay: const Duration(seconds: 4))
                          .tint(color: Colors.blue)
                          .then()
                          .shake()),
                ),
              )
            : Positioned(
                bottom: 10,
                left: widget.width * 0.4,
                child: GestureDetector(
                  onTap: () {
                    row1Controller.forward();
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(121, 9, 50, 107),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: const Center(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
        profileController.isCompleted
            ? Positioned(
                top: 10,
                right: 10,
                child: ProfileCard(
                  height: widget.height,
                  width: widget.height,
                  changeToIcon: true,
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}

Widget clipLoginForm(
    {required Animation animation,
    required top,
    required left,
    required Widget? child,
    required int pieceCount,
    required Offset moveOffset,
    required Offset lineOffset}) {
  return Positioned(
    top: top,
    left: left,
    child: Builder(builder: (context) {
      if (pieceCount == 1 || pieceCount == 2 || pieceCount == 3) {
        return Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateX(degToRad(animation.value)),
          alignment: FractionalOffset(
              FractionalOffset.center.dx, FractionalOffset.center.dy - 0.17),
          child: ClipPath(
            clipper: MyCustomClipper(
                moveOffset: moveOffset,
                lineOffset: lineOffset,
                pieceCount: pieceCount),
            child: child,
          ),
        );
      } else if (pieceCount == 7 || pieceCount == 8 || pieceCount == 9) {
        return Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateX(degToRad(-animation.value)),
          alignment: FractionalOffset(
              FractionalOffset.center.dx, FractionalOffset.center.dy + 0.155),
          child: ClipPath(
            clipper: MyCustomClipper(
                moveOffset: moveOffset,
                lineOffset: lineOffset,
                pieceCount: pieceCount),
            child: child,
          ),
        );
      } else if (pieceCount == 4) {
        return Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.00001)
            ..rotateY(degToRad(-animation.value)),
          alignment: FractionalOffset(
              FractionalOffset.center.dx - 0.169, FractionalOffset.center.dy),
          child: ClipPath(
            clipper: MyCustomClipper(
                moveOffset: moveOffset,
                lineOffset: lineOffset,
                pieceCount: pieceCount),
            child: child,
          ),
        );
      } else if (pieceCount == 6) {
        return Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.0001)
            ..rotateY(degToRad(-animation.value)),
          alignment: FractionalOffset(
              FractionalOffset.center.dx + 0.16, FractionalOffset.center.dy),
          child: ClipPath(
            clipper: MyCustomClipper(
                moveOffset: moveOffset,
                lineOffset: lineOffset,
                pieceCount: pieceCount),
            child: child,
          ),
        );
      } else {
        return ClipPath(
          clipper: MyCustomClipper(
              moveOffset: moveOffset,
              lineOffset: lineOffset,
              pieceCount: pieceCount),
          child: child,
        );
      }
    }),
  );
}

double degToRad(double deg) {
  return pi / 180 * deg;
}
