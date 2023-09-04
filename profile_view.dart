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
        backgroundColor: Colors.cyan,
        body: PageView(
          children: [
            //SizedBox(height: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Multiple Lists",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontFamily: 'Raleway')),
                Image.network(
                    'https://icons-for-free.com/iconfiles/png/512/file+multiple+page+icon+icon-1320085907501139898.png',height: 300,),
                
                const Center(
                  child: Text("You can create and save multiple lists and re-use them",style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontFamily: 'Raleway'),),
                ),
                    
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    currentIndex == 0
                        ? Icon(Icons.circle, size: 20, color: Colors.white)
                        : Icon(Icons.circle_outlined,
                            size: 20, color: Colors.white),
                    Icon(Icons.circle_outlined, size: 20, color: Colors.white),
                    Icon(Icons.circle_outlined, size: 20, color: Colors.white)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    new SizedBox(
                      width: 120,
                      height: 50,
                      child: ElevatedButton(
                        child: Text('Skip', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),),
                        onPressed: () {},
                      ),
                      // ElevatedButton(onPressed: (){

                      // }, child: Text('Skip',style: TextStyle(fontSize: 16), ), ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Random Choices",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontFamily: 'Raleway')),
                Image.network(
                    'https://o.remove.bg/downloads/4793c0ad-116e-4a67-90a7-93aaf8010bf4/random_choice-removebg-preview.png'),
                Text("The better way to randomize your multiple choices",style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontFamily: 'Raleway'),),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.circle_outlined, size: 20, color: Colors.white),
                    currentIndex == 1
                        ? Icon(Icons.circle, size: 20, color: Colors.white)
                        : Icon(Icons.circle_outlined,
                            size: 20, color: Colors.white),
                    Icon(Icons.circle_outlined, size: 20, color: Colors.white)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    new SizedBox(
                      width: 120,
                      height: 50,
                      child: ElevatedButton(
                        child: Text('Skip', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),),
                        onPressed: () {},
                      ),
                      // ElevatedButton(onPressed: (){

                      // }, child: Text('Skip',style: TextStyle(fontSize: 16), ), ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Easy Sharing",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontFamily: 'Raleway'),
                ),
                Image.network(
                    'https://o.remove.bg/downloads/0214cc1f-9666-4b11-aade-7f57a1a06912/easy_sharing-removebg-preview.png',
                    height: 330,
                    fit: BoxFit.cover),
                   
                      
                Text("Share the results with your friends in a simple gesture",style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontFamily: 'Raleway'),),
                SizedBox(
                  height: 21,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.circle_outlined, size: 20, color: Colors.white),
                    Icon(Icons.circle_outlined, size: 20, color: Colors.white),
                    currentIndex == 2
                        ? Icon(Icons.circle, size: 20, color: Colors.white)
                        : Icon(Icons.circle_outlined,
                            size: 20, color: Colors.white),
                    // Positioned(child: Align(
                    //   alignment: Alignment.bottomRight,
                    // )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    new SizedBox(
                      width: 120,
                      height: 50,
                      child: ElevatedButton(
                        child: Text('Skip', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),),
                        onPressed: () {},
                      ),
                      // ElevatedButton(onPressed: (){

                      // }, child: Text('Skip',style: TextStyle(fontSize: 16), ), ),
                    ),
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
