import 'package:flutter/material.dart';

class DealsHeaderScrollview extends StatefulWidget {
  const DealsHeaderScrollview({Key? key}) : super(key: key);

  @override
  State<DealsHeaderScrollview> createState() => _DealsHeaderScrollviewState();
}

class _DealsHeaderScrollviewState extends State<DealsHeaderScrollview> {
  @override
  Widget build(BuildContext context) {
    Widget bestDeals = Container(
      width: 115,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 228, 22, 7),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: const Center(
        child: Text(
          'Best Deals',
          style: TextStyle(
            color: Color.fromARGB(255, 248, 247, 247),
            fontWeight: FontWeight.normal,
            fontSize: 16.0,
          ),
        ),
      ),
    );

    Widget trendingNow = Container(
      width: 140,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 11, 85, 28),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: const Center(
        child: Text(
          'Trending Now',
          style: TextStyle(
            color: Color.fromARGB(255, 248, 247, 247),
            fontWeight: FontWeight.normal,
            fontSize: 16.0,
          ),
        ),
      ),
    );

    Widget anniverserySales = Container(
      width: 160,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 11, 85, 28),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: const Center(
        child: Text(
          'Anniversery Sales',
          style: TextStyle(
            color: Color.fromARGB(255, 248, 247, 247),
            fontWeight: FontWeight.normal,
            fontSize: 16.0,
          ),
        ),
      ),
    );
    Widget weeklyOffers = Container(
      width: 140,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 11, 85, 28),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: const Center(
        child: Text(
          'Weekly Offers',
          style: TextStyle(
            color: Color.fromARGB(255, 248, 247, 247),
            fontWeight: FontWeight.normal,
            fontSize: 16.0,
          ),
        ),
      ),
    );

    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 8),
      child: SizedBox(
        height: 30,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            bestDeals,
            const SizedBox(
              width: 5,
            ),
            trendingNow,
            const SizedBox(
              width: 5,
            ),
            anniverserySales,
            const SizedBox(
              width: 5,
            ),
            trendingNow
          ],
        ),
      ),
    );
  }
}
