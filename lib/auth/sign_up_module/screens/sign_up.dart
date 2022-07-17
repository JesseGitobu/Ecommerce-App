import 'package:ecommerce_ui/main/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_ui/auth/sign_up_module/background_colors/background_color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ecommerce_ui/auth/sign_in_module/screens/sign_in.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    Widget socialIcons = Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            color: Color.fromARGB(209, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: InkWell(
              child: Icon(
                Icons.facebook,
                color: Color.fromARGB(209, 21, 38, 189),
                size: 40,
              ),
              onTap: () {}),
        ),
        const SizedBox(
          width: 70,
        ),
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            color: Color.fromARGB(209, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: InkWell(
              child: Icon(
                FontAwesomeIcons.google,
                color: Color.fromARGB(209, 49, 189, 21),
                size: 40,
              ),
              onTap: () {}),
        ),
      ],
    );

    Widget background = SizedBox(
        height: height,
        width: width,
        child: CustomPaint(
          //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
          painter: RPSCustomPainter(),
        ));

    Widget nameInputBox = Row(
      children: [
        SizedBox(
          height: 40,
          width: 122,
          child: TextFormField(
            style: TextStyle(fontSize: 16.0),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              hintText: 'first name',
              filled: true,
              fillColor: Color.fromARGB(255, 244, 243, 247),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          height: 40,
          width: 122,
          child: TextFormField(
            style: TextStyle(fontSize: 16.0),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              hintText: 'second name',
              filled: true,
              fillColor: Color.fromARGB(255, 244, 243, 247),
            ),
          ),
        ),
      ],
    );

    Widget phoneInputBox = SizedBox(
      height: 40,
      child: TextFormField(
        style: TextStyle(fontSize: 16.0),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          hintText: 'phone number',
          filled: true,
          fillColor: Color.fromARGB(255, 244, 243, 247),
        ),
      ),
    );

    Widget emailInputBox = SizedBox(
      height: 40,
      child: TextFormField(
        style: TextStyle(fontSize: 16.0),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          hintText: 'example@gmail.com',
          filled: true,
          fillColor: Color.fromARGB(255, 244, 243, 247),
        ),
      ),
    );

    Widget passwordInputBox = SizedBox(
      height: 40,
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          filled: true,
          fillColor: Color.fromARGB(255, 244, 243, 247),
        ),
      ),
    );

    Widget signInLink = Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Text(
            'I have an account ',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(126, 31, 30, 30),
              fontSize: 14.0,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const SignInScreen()));
            },
            child: const Text(
              'Sign In',
              style: TextStyle(
                color: Color.fromARGB(255, 226, 34, 20),
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
              ),
            ),
          ),
        ],
      ),
    );

    Widget registerButton = InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => MainScreen()));
      },
      child: Container(
        width: 160,
        height: 50,
        decoration: BoxDecoration(
            color: Color.fromARGB(234, 6, 58, 43),
            borderRadius: BorderRadius.circular(9.0)),
        child: const Center(
            child: Text("Sign Up",
                style: TextStyle(
                    color: Color(0xfffefefe),
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 20.0))),
      ),
    );

    Widget registerForm = Stack(
      children: <Widget>[
        Container(
          height: 550,
          width: 300,
          padding: const EdgeInsets.only(left: 32.0, right: 12.0),
          decoration: const BoxDecoration(
              color: Color.fromARGB(204, 235, 228, 228),
              borderRadius: BorderRadius.all(Radius.circular(43))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 70, top: 10),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Color.fromARGB(234, 6, 58, 43),
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 40),
                child: socialIcons,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 100, top: 4),
                child: Text(
                  'or',
                  style: TextStyle(
                      color: Color.fromARGB(234, 6, 58, 43),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 8.0,
                ),
                child: Text(
                  'Name',
                  style: TextStyle(
                      color: Color.fromARGB(234, 0, 14, 10),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: nameInputBox,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 8.0,
                ),
                child: Text(
                  'Phone',
                  style: TextStyle(
                      color: Color.fromARGB(234, 0, 14, 10),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: phoneInputBox,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 8.0,
                ),
                child: Text(
                  'E-mail',
                  style: TextStyle(
                      color: Color.fromARGB(234, 0, 14, 10),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: emailInputBox,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'Password',
                  style: TextStyle(
                      color: Color.fromARGB(234, 0, 14, 10),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: passwordInputBox,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 8),
                child: registerButton,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: signInLink,
              ),
            ],
          ),
        ),
      ],
    );

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            background,
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 120),
                  child: Image.asset(
                    'assets/logo.png',
                    width: 150,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: registerForm,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
