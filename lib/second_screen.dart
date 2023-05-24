import 'package:assignment4_01/widgets/button_widget.dart';
import 'package:assignment4_01/widgets/music_play_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final List<BoxShadow> boxShadow = [
    const BoxShadow(
      offset: Offset(10, 10),
      color: Colors.grey,
      blurRadius: 18,
      spreadRadius: 5,
    ),
    const BoxShadow(
      offset: Offset(-10, -10),
      color: Colors.white,
      blurRadius: 18,
      spreadRadius: 5,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100.0, right: 15, left: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButttonWidget(
                        padding: 24,
                        icon: Icons.save,
                        iconColor: Colors.grey.shade600,
                        backgroundColor: Colors.grey.shade300,
                        boxShadow: boxShadow),
                    Container(
                      height: 170,
                      width: 170,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(24),
                      // margin: EdgeInsets.only(left: 16, top: 16), //< 8 12 16 <
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
                    ButttonWidget(
                        padding: 24,
                        icon: Icons.more_horiz,
                        iconColor: Colors.grey.shade600,
                        backgroundColor: Colors.grey.shade300,
                        boxShadow: boxShadow),
                  ],
                ),
              ),
              Column(
                children: [
                  MusicRowContainer(
                    boxShadow: boxShadow,
                    button_padding: 2,
                    iconSize: 40,
                    title: "Holix",
                    subTitle: 'Flume',
                    iconColor: Colors.grey.shade500,
                    iconBackgroundColor: Colors.grey.shade300,
                  ),
                  MusicRowContainer(
                    boxShadow: boxShadow,
                    button_padding: 2,
                    iconSize: 40,
                    title: "Never BE Like You",
                    subTitle: "Flume x Kia",
                    iconColor: Colors.grey.shade500,
                    iconBackgroundColor: Colors.grey.shade300,
                  ),
                  MusicRowContainer(
                    boxShadow: [],
                    icon: Icons.stop,
                    button_padding: 12,
                    iconSize: 20,
                    title: "Unavailable",
                    subTitle: "Davido",
                    containerHMar: 16,
                    containerColor: Color(0xFFC5CDD4),
                    iconColor: Colors.grey.shade400,
                    iconBackgroundColor: Color(0xFF78A5D2),
                  ),
                  MusicRowContainer(
                    boxShadow: boxShadow,
                    button_padding: 2,
                    iconSize: 40,
                    title: "Numb & Getting Colder",
                    subTitle: "Flume x Kucha",
                    iconColor: Colors.grey.shade500,
                    iconBackgroundColor: Colors.grey.shade300,
                  ),
                  MusicRowContainer(
                    boxShadow: boxShadow,
                    button_padding: 2,
                    iconSize: 40,
                    title: "Say it",
                    subTitle: "Flume",
                    iconColor: Colors.grey.shade500,
                    iconBackgroundColor: Colors.grey.shade300,
                  ),
                ],
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 70.0, right: 70, bottom: 60),
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
                        padding: 24,
                        icon: Icons.pause,
                        iconColor: Colors.white,
                        backgroundColor: Color.fromARGB(0xFF, 0x6C, 0x9B, 0xCF),
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
      ),
    );
  }
}
/*
* const SizedBox(
                    height: 20,
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
                      )),*/
