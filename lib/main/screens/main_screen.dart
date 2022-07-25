import 'package:flutter/material.dart';
import 'package:ecommerce_ui/main/background_colors/background_color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ecommerce_ui/main/widgets/deals_header_scrollview.dart';
import 'package:ecommerce_ui/main/widgets/deal_cards.dart';
import 'package:ecommerce_ui/main/widgets/deals_sofa.dart';
import 'package:ecommerce_ui/main/widgets/deals_kitchen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    Widget backgroundSide = SizedBox(
        height: height,
        width: 100,
        child: CustomPaint(
          //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
          painter: RPSCustomPainter(),
        ));
    Widget background = Stack(children: [
      Container(
        height: height,
        width: width,
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      Align(alignment: Alignment.topRight, child: backgroundSide),
    ]);
    Widget headerWidget = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 15),
          child: Image.asset(
            'assets/Pop-up-Logo.png',
            width: 150,
          ),
        ),
        SizedBox(
          width: 130,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              color: Color.fromARGB(209, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Center(
              child: InkWell(
                  child: Icon(
                    FontAwesomeIcons.searchengin,
                    color: Color.fromARGB(209, 15, 15, 15),
                    size: 40,
                  ),
                  onTap: () {}),
            ),
          ),
        ),
      ],
    );
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              background,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headerWidget,
                  const DealsHeaderScrollview(),
                  const SizedBox(
                    height: 3,
                  ),
                  const DealCards(),
                  const SizedBox(
                    height: 3,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Buid your Sitto'),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const DealsSofa(),
                  const SizedBox(
                    height: 3,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Kitchen Shopping'),
                  ),
                  const DealsKitchen(),
                  const DealsHeaderScrollview(),
                  const SizedBox(
                    height: 3,
                  ),
                  const DealCards(),
                  const SizedBox(
                    height: 3,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Buid your Sitto'),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const DealsSofa(),
                  const SizedBox(
                    height: 3,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Kitchen Shopping'),
                  ),
                  const DealsKitchen()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
