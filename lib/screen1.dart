import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://w0.peakpx.com/wallpaper/766/429/HD-wallpaper-adil-aouchiche-as-saint-etienne-asse-football-green-joueur-ligue-1-player-stade.jpg'),
                    fit: BoxFit.cover)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 70),
                child: Text(
                  'SHOEDI',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 45),
                ),
              ),
              Column(
                children: [
                  Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Your Foot Dooorve The Dest',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  SliderButton(
                    action: () {
                      ///Do something here
                    },
                    label: Text(
                      "Slide to cancel Event",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    icon: Icon(
                      Icons.keyboard_double_arrow_right_rounded,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
