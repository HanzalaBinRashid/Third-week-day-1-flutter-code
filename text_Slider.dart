import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class text_Slider extends StatefulWidget {
  const text_Slider({super.key});

  @override
  State<text_Slider> createState() => _text_SliderState();
}

class _text_SliderState extends State<text_Slider> {
  double _sliderValue = 0.0;

  //var style;

  void _updateSliderValue(double value) {
    setState(() {
      _sliderValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double imageWidth = 600; // Adjust this value based on your image size
    double maxImageOffset = screenWidth - imageWidth;
    double imageOffset = maxImageOffset * (_sliderValue / 100);
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Your holiday shopping delivered to Screen one',
                  style: TextStyle(fontSize: 20, color: Colors.blueGrey)),
              Text(
                  'There something for everyone to enjoy with Sweet Shop Favourites Screen 1',
                  style:
                      TextStyle(fontSize: 15, color: Colors.lightBlueAccent)),
              Transform.translate(
                offset: Offset(imageOffset, 0),
                // child: Image.network(
                //   'https://tse4.mm.bing.net/th?id=OIP.2I-6cU1wOi3WPYby0VWssAHaFj&pid=Api&P=0&h=220',
                child: Image.network(
                  'https://tse4.mm.bing.net/th?id=OIP.2I-6cU1wOi3WPYby0VWssAHaFj&pid=Api&P=0&h=220',
                  width: imageWidth,
                ),
              ),

              // Image.network('https://tse4.mm.bing.net/th?id=OIP.2I-6cU1wOi3WPYby0VWssAHaFj&pid=Api&P=0&h=220'),
              Text(
                'Slider Value:  $_sliderValue',
                style: TextStyle(fontSize: 20),
              ),
              Slider(
                value: _sliderValue,
                min: 0,
                max: 100,
                onChanged: _updateSliderValue,
              ),
              Icon(Icons.arrow_forward),
              SizedBox(height: 20), // Add some spacing between the icons
              Icon(
                Icons.favorite,
                size: 24,
                semanticLabel: 'Text to announce in accessibility modes',
              ),

              Positioned(
                bottom: 0,
                child: Align(
                  alignment: Alignment.center,
                  
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your button onPressed logic here
                    },
                    child: Text('Get Started'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
