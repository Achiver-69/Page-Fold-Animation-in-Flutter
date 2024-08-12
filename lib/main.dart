import 'package:animation_good_assignment/login_card.dart';
import 'package:animation_good_assignment/login_card_back.dart';
import 'package:animation_good_assignment/login_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flip Animation By Qamar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var Size(:height, :width) = size;
    return Scaffold(
        body: LoginForm(
      height: height,
      width: width,
      loginCard: LoginCard(width: width, height: height),loginCardBack: LoginCardBackground(width: width, height: height)
    ));
  }
}



// class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
//   int _counter = 0;
//   late AnimationController controller;
//   late AnimationController controller2;
//   late Animation flipAnimation;
//   late Animation flipAnimation2;
//   void _incrementCounter() {
//     setState(() {
//       controller2.forward();
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     controller2 =
//         AnimationController(vsync: this, duration: const Duration(seconds: 2));
//     controller =
//         AnimationController(vsync: this, duration: const Duration(seconds: 10))
//           ..repeat()
//           ..addStatusListener(
//             (status) {
//               if (controller.isCompleted) {}
//             },
//           )
//           ..addListener(
//             () => setState(() {}),
//           );

//     flipAnimation = Tween<double>(begin: 0.0, end: 90).animate(
//         CurvedAnimation(parent: controller, curve: const Interval(0, 0.5)));
//     flipAnimation2 = Tween<double>(begin: 90, end: 180).animate(
//         CurvedAnimation(parent: controller, curve: const Interval(0.5, 1.0)));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: 1300,
//         height: 1000,
//         color: Colors.amber,
//         child: Stack(
//           children: [
//             Positioned(
//               left: 150,
//               top: 250,
//               child: Transform(
//                 transform: Matrix4.identity()
//                   ..setEntry(3, 2, 0.001)
//                   ..rotateY(degToRad(-flipAnimation.value)),
//                 alignment: FractionalOffset.centerRight,
//                 child: ClipRect(
//                   child: Align(
//                     alignment: Alignment.topCenter,
//                     heightFactor: 0.5,
//                     child: SizedBox(
//                         height: 100,
//                         width: 100,
//                         child: Image.network(
//                             "https://plus.unsplash.com/premium_photo-1722519249629-1282c3d7b0a2?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
//                   ),
//                 ),
//               ),
//             ),
//             // Positioned(
//             //   left: 150,
//             //   top: 300,
//             //   child: ClipRect(
//             //     child: Align(
//             //       alignment: Alignment.bottomCenter,
//             //       heightFactor: 0.5,
//             //       child: SizedBox(
//             //           height: 100,
//             //           width: 100,
//             //           child: Image.network(
//             //               "https://plus.unsplash.com/premium_photo-1722519249629-1282c3d7b0a2?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
//             //     ),
//             //   ),
//             // ),
//             // Positioned(
//             //   left: 150,
//             //   top: 250,
//             //   child: Transform(
//             //     transform: Matrix4.identity()
//             //       ..setEntry(3, 2, 0.001)
//             //       ..rotateX(degToRad(flipAnimation2.value)),
//             //     alignment: FractionalOffset.bottomCenter,
//             //     child: ClipRect(
//             //       child: Align(
//             //           alignment: Alignment.topCenter,
//             //           heightFactor: 0.5,
//             //           child: Container(
//             //             width: 100,
//             //             height: 85,
//             //             color: Colors.white,
//             //           )),
//             //     ),
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

// double degToRad(double deg) {
//   return pi / 180 * deg;
// }
