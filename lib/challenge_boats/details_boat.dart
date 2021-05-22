import 'dart:math';

import 'package:app_challengue_boats/challenge_boats/data.dart';
import 'package:flutter/material.dart';

class DetailsChallengeBoat extends StatelessWidget {
  final Boat boat;
  const DetailsChallengeBoat({Key key, @required this.boat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print('details ${boat.title}');
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
           Positioned(
             top: 0,
                 left: size.width * 0.6,
                        child: TweenAnimationBuilder(
               
               duration: const Duration(milliseconds: 1200),
               tween: Tween(begin: 0.0, end: 1.0),
               builder: (context, valor, widget) {
                 return Hero(
         tag: boat.subTitle,
                       child: Transform.rotate(
                 angle: ( -pi /2) *valor,
                                                child: Container(
                                                  clipBehavior: Clip.none,
                 color: Colors.green,
                 child: Image.asset(
                   boat.image,
                   height: size.height * 0.8,
                    // width: size.height * 0.3,
                  //  fit: BoxFit.fitWidth,
                   //  color: Colors.red,
                 ),
         ),
                       ),
       );
               }
             ),
           )
        ],
      ),
    );
  }
}
