// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class DealsKitchen extends StatefulWidget {
  const DealsKitchen({Key? key}) : super(key: key);

  @override
  State<DealsKitchen> createState() => _DealsKitchenState();
}

class _DealsKitchenState extends State<DealsKitchen> {
  @override
  Widget build(BuildContext context) {
    Widget descriptionCard = Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 100,
          width: 90,
          color: const Color.fromARGB(255, 238, 238, 4),
          child: const Text('Soko Maize Meal Flour',
              style: const TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.normal,
                  fontSize: 14)),
        ),
        Positioned(
          top: 54,
          child: RotationTransition(
            turns: const AlwaysStoppedAnimation(-15 / 360),
            child: Container(
              height: 30,
              width: 90,
              color: const Color.fromARGB(255, 38, 102, 1),
              child: const Text('134/-',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.normal,
                      fontSize: 20)),
            ),
          ),
        ),
        Positioned(
          top: 53,
          left: -10,
          child: RotationTransition(
            turns: const AlwaysStoppedAnimation(-15 / 360),
            child: Container(
              height: 14,
              width: 32,
              color: const Color.fromARGB(255, 0, 0, 0),
              child: const Text('148/-',
                  style: const TextStyle(
                      color: const Color.fromARGB(255, 250, 204, 2),
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.normal,
                      fontSize: 12)),
            ),
          ),
        ),
        const Positioned(
          top: 28,
          right: 5,
          child: Text(
            '2KG',
            style: TextStyle(
              color: Color.fromARGB(235, 202, 21, 8),
              fontWeight: FontWeight.w900,
              fontSize: 14.0,
            ),
          ),
        ),
        const Positioned(
          bottom: 0,
          right: 0,
          child: Text.rich(
            TextSpan(
                text: 'Save',
                style: TextStyle(
                  color: Color.fromARGB(235, 202, 21, 8),
                  fontWeight: FontWeight.w900,
                  fontSize: 12.0,
                ),
                children: <InlineSpan>[
                  TextSpan(
                    text: '14/-',
                    style: TextStyle(
                      color: Color.fromARGB(235, 202, 21, 8),
                      fontWeight: FontWeight.w900,
                      fontSize: 14.0,
                    ),
                  )
                ]),
          ),
        )
      ],
    );
    Widget kitchenDealsCard = Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 160,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 228, 22, 7),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 45),
            child: Column(
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 80,
                ),
                const SizedBox(
                  height: 1,
                ),
                descriptionCard,
              ],
            ),
          ),
        ),
        Positioned(
          top: -10,
          left: -25,
          child: Container(
            height: 110.0,
            width: 70.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/flour.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 8),
      child: SizedBox(
        height: 140,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            kitchenDealsCard,
            const SizedBox(
              width: 40,
            ),
            kitchenDealsCard,
            const SizedBox(
              width: 40,
            ),
            kitchenDealsCard,
            const SizedBox(
              width: 40,
            ),
            kitchenDealsCard,
            const SizedBox(
              width: 40,
            ),
          ],
        ),
      ),
    );
  }
}
