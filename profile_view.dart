// //import 'dart:html';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import 'package:flutter/rendering.dart';
// //import 'dart:ui' show lerpDouble;

// class ProfileView extends StatelessWidget {
//   const ProfileView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           // title: Text("My First App"),
//           ),
//       body: Column(
//         children: [
//           Container(
//             child: const Text(
//               "Your holiday shopping delivered to Screen one",
//               style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.w700,
//               ),
//             ),
//             color: Colors.amberAccent,
//           ),
//           Row(
//             //mainAxisAlignment: MainAxisAlignment.start,

//             children: const [
//               Text(
//                 'There something for everyone to enjoy with Sweet Shop Favourites Screen 2',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//               Padding(padding: EdgeInsets.only(left: 20)),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: const <Widget>[
//               Icon(
//                 Icons.linear_scale_outlined,
//                 color: Color.fromRGBO(100, 255, 218, 1),
//                 size: 35,
//               ),
//               Icon(
//                 Icons.linear_scale_outlined,
//                 color: Colors.tealAccent,
//                 size: 35,
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Column(
//             children: [
//               Image.asset(
//                 'assets/images/figma-img1.jpg',
//                 width: 200,
//                 //color: Colors.amberAccent,
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

// // import 'package:flutter/material.dart';

// // /// Flutter code sample for [PageView].

// // void main() => runApp(const PageViewExampleApp());

// // class PageViewExampleApp extends StatelessWidget {
// //   const PageViewExampleApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(title: const Text('PageView Sample')),
// //         body: const PageViewExample(),
// //       ),
// //     );
// //   }
// // }

// // // class PageViewExample extends StatelessWidget {
// // //   const PageViewExample({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final PageController controller = PageController();
// // //     return PageView(
// // //       /// [PageView.scrollDirection] defaults to [Axis.horizontal].
// // //       /// Use [Axis.vertical] to scroll vertically.
// // //       controller: controller,
// // //       children: const <Widget>[
// // //         Center(
// // //           child: Text('First Page'),
// // //         ),
// // //         Center(
// // //           child: Text('Second Page'),
// // //         ),
// // //         Center(
// // //           child: Text('Third Page'),
// // //         ),
// // //       ],
// // //     );
// // //   }
// // // }

import 'package:flutter/material.dart';
//import 'package:flutterassignment/figmaAssignment01/styles/_colors.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({
    Key? key,
  }) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  int currentIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amberAccent,
        body: PageView(
          children: [
            Column(
              children: [
                Text("Your holiday shopping delivered to Screen one",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontFamily: 'Raleway')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    currentIndex == 0
                        ? Icon(Icons.circle, size: 10, color: Colors.white)
                        : Icon(Icons.circle_outlined,
                            size: 10, color: Colors.white),
                    Icon(Icons.circle_outlined, size: 10, color: Colors.white),
                    Icon(Icons.circle_outlined, size: 10, color: Colors.white)
                  ],
                )
              ],
            ),
            Column(
              children: [
                Text("Your holiday shopping delivered to Screen one",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontFamily: 'Raleway')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.circle_outlined, size: 10, color: Colors.white),
                    currentIndex == 1
                        ? Icon(Icons.circle, size: 10, color: Colors.white)
                        : Icon(Icons.circle_outlined,
                            size: 10, color: Colors.white),
                    Icon(Icons.circle_outlined, size: 10, color: Colors.white)
                  ],
                )
              ],
            ),
            Column(
              children: [
                Text("Your holiday shopping delivered to Screen one",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontFamily: 'Raleway')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.circle_outlined, size: 10, color: Colors.white),
                    Icon(Icons.circle_outlined, size: 10, color: Colors.white),
                    currentIndex == 2
                        ? Icon(Icons.circle, size: 10, color: Colors.white)
                        : Icon(Icons.circle_outlined,
                            size: 10, color: Colors.white),
                  ],
                )
              ],
            )
          ],
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ));
  }
}
