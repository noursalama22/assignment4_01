import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//https://images.saatchiart.com/saatchi/944035/art/4337871/3407711-HSC00001-7.jpg
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(24),
                    margin: EdgeInsets.only(left: 16, top: 16), //< 8 12 16 <
                    // padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.grey[600],
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(10, 10),
                          color: Colors.grey,
                          blurRadius: 20,
                          spreadRadius: 5,
                        ),
                        BoxShadow(
                          offset: Offset(-10, -10),
                          color: Colors.white,
                          blurRadius: 20,
                          spreadRadius: 5,
                        ),
                      ],
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(24),
                    margin: EdgeInsets.only(top: 16, right: 16),
                    // padding: EdgeInsets.only(left: 10),
                    child: Icon(Icons.stop, color: Colors.grey[600]),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(10, 10),
                          color: Colors.grey,
                          blurRadius: 20,
                          spreadRadius: 5,
                        ),
                        BoxShadow(
                          offset: Offset(-10, -10),
                          color: Colors.white,
                          blurRadius: 20,
                          spreadRadius: 5,
                        ),
                      ],
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(24),
                    margin: EdgeInsets.only(left: 16, top: 16), //< 8 12 16 <
                    // padding: EdgeInsets.only(left: 10),

                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://images.saatchiart.com/saatchi/944035/art/4337871/3407711-HSC00001-7.jpg')),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(10, 10),
                          color: Colors.grey,
                          blurRadius: 20,
                          spreadRadius: 10,
                        ),
                        BoxShadow(
                          offset: Offset(-20, -15),
                          color: Colors.white,
                          blurRadius: 20,
                          spreadRadius: 10,
                        ),
                      ],
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                  ),
                  // CircleAvatar(
                  //   radius: 120,
                  //   backgroundColor: Colors.purple[300],
                  //   backgroundImage: NetworkImage(
                  //     'https://images.saatchiart.com/saatchi/944035/art/4337871/3407711-HSC00001-7.jpg',
                  //   ),
                  // ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Unavailable",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Davido",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "1:47",
                          style:
                              TextStyle(color: Colors.grey[500], fontSize: 12),
                        ),
                        Text(
                          "4:00",
                          style:
                              TextStyle(color: Colors.grey[500], fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  SliderTheme(
                      data: SliderThemeData(
                          trackShape: RectangularSliderTrackShape()
                          // GradientRectSliderTrackShape(gradient: gradient, darkenInactive: false),
                          ),
                      child: Slider(
                        min: 0,
                        max: 100,
                        value: 20,
                        onChanged: (double value) {},
                      )),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 70.0, right: 70, bottom: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      padding: EdgeInsets.all(24),
                      child: Icon(Icons.keyboard_double_arrow_left,
                          color: Colors.grey[600]),
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          offset: Offset(10, 10),
                          color: Colors.grey,
                          blurRadius: 20,
                          spreadRadius: 5,
                        ),
                        BoxShadow(
                          offset: Offset(-10, -10),
                          color: Colors.white,
                          blurRadius: 20,
                          spreadRadius: 5,
                        ),
                      ], shape: BoxShape.circle, color: Colors.grey[300]),
                    ),
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue[200],
                      ),
                      child: Icon(
                        Icons.pause,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(24),
                      child: Icon(
                        Icons.keyboard_double_arrow_right,
                        color: Colors.grey[600],
                      ),
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          offset: Offset(10, 10),
                          color: Colors.grey,
                          blurRadius: 20,
                          spreadRadius: 5,
                        ),
                        BoxShadow(
                          offset: Offset(-10, -10),
                          color: Colors.white,
                          blurRadius: 20,
                          spreadRadius: 5,
                        ),
                      ], shape: BoxShape.circle, color: Colors.grey[300]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
