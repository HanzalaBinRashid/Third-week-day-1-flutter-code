import 'package:flutter/material.dart';

class grid_view extends StatelessWidget {
  const grid_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: 100,
          width: 80,
          color: Colors.amber,
          child: Text('Your holiday shopping delivered to Screen two'),
        ),
        // Container(
        //   height: 50,
        //   width: 50,
        //   color: Color.fromARGB(255, 14, 13, 10),
        //   child: Text('Umama'),
        // ),

        //Text('Your holiday shopping delivered to Screen two'),
        //         child: Slider(
        //   onChanged: (double value) {},
        //   value: 1,
        // )
      ]),
    );
  }
}
