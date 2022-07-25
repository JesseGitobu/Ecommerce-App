import 'package:flutter/material.dart';

class DealsSofa extends StatefulWidget {
  const DealsSofa({Key? key}) : super(key: key);

  @override
  State<DealsSofa> createState() => _DealsSofaState();
}

class _DealsSofaState extends State<DealsSofa> {
  @override
  Widget build(BuildContext context) {
    Widget sofaDealCard = Container(
      width: 250,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 228, 22, 7),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 8, left: 8),
                child: Text(
                  'Get Great',
                  style: TextStyle(
                    color: Color.fromARGB(255, 248, 247, 247),
                    fontWeight: FontWeight.w900,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8, left: 8),
                child: Text(
                  'Deals for',
                  style: TextStyle(
                    color: Color.fromARGB(255, 248, 247, 247),
                    fontWeight: FontWeight.w900,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8, left: 8),
                child: Text(
                  'SofaSets',
                  style: TextStyle(
                    color: Color.fromARGB(255, 248, 247, 247),
                    fontWeight: FontWeight.w400,
                    fontSize: 23.0,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            children: [
              Container(
                height: 90.0,
                width: 120.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/sofaset.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  width: 115,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(225, 34, 102, 3),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: const Center(
                    child: Text(
                      'Shop Now',
                      style: TextStyle(
                        color: Color.fromARGB(255, 248, 247, 247),
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );

    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 8),
      child: SizedBox(
        height: 120,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            sofaDealCard,
            const SizedBox(
              width: 10,
            ),
            sofaDealCard,
            const SizedBox(
              width: 10,
            ),
            sofaDealCard,
            const SizedBox(
              width: 10,
            ),
            sofaDealCard,
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
