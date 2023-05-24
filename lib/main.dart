import 'package:assignment4_01/widgets/button_widget.dart';
import 'package:flutter/material.dart';
// import 'package:gradient_colored_slider/gradient_colored_slider.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

//https://images.saatchiart.com/saatchi/944035/art/4337871/3407711-HSC00001-7.jpg
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<BoxShadow> boxShadow = [
      const BoxShadow(
        offset: Offset(10, 10),
        color: Colors.grey,
        blurRadius: 20,
        spreadRadius: 5,
      ),
      const BoxShadow(
        offset: Offset(-10, -10),
        color: Colors.white,
        blurRadius: 20,
        spreadRadius: 5,
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 16, right: 16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButttonWidget(
                      padding: 24,
                      icon: Icons.arrow_back,
                      iconColor: Colors.grey.shade600,
                      backgroundColor: Colors.grey.shade300,
                      boxShadow: boxShadow),
                  ButttonWidget(
                      padding: 24,
                      icon: Icons.stop,
                      iconColor: Colors.grey.shade600,
                      backgroundColor: Colors.grey.shade300,
                      boxShadow: boxShadow),
                ],
              ),
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
                        style: TextStyle(color: Colors.grey[500], fontSize: 12),
                      ),
                      Text(
                        "4:00",
                        style: TextStyle(color: Colors.grey[500], fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Slider(
                  min: 0,
                  max: 100,
                  value: 20,
                  onChanged: (double value) {},
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: GradientColoredSlider(
                //       value: 0.3,
                //       onChanged: (double value) {},
                //       barWidth: 0.5,
                //       barSpace: 0,
                //       gradientColors: [
                //         Colors.blue.shade300,
                //         Color(0xFF037958),
                //         Colors.grey,
                //       ]),
                // ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60.0, right: 60, bottom: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ButttonWidget(
                      padding: 24,
                      icon: Icons.keyboard_double_arrow_left,
                      iconColor: Colors.grey.shade600,
                      backgroundColor: Colors.grey.shade300,
                      boxShadow: boxShadow),
                  ButttonWidget(
                      padding: 30,
                      icon: Icons.pause,
                      iconColor: Colors.white,
                      backgroundColor: Color.fromARGB(0xFF, 0x6C, 0x9B, 0xCF),
                      // backgroundColor: Color.fromRGBO(0xFF4498CB),
                      boxShadow: boxShadow),
                  ButttonWidget(
                      padding: 24,
                      icon: Icons.keyboard_double_arrow_right,
                      iconColor: Colors.grey.shade600,
                      backgroundColor: Colors.grey.shade300,
                      boxShadow: boxShadow),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GradientRectSliderTrackShape {}
// CircleAvatar(
//   radius: 120,
//   backgroundColor: Colors.purple[300],
//   backgroundImage: NetworkImage(
//     'https://images.saatchiart.com/saatchi/944035/art/4337871/3407711-HSC00001-7.jpg',
//   ),
// ),
