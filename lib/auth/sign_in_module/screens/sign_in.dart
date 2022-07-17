import 'package:flutter/material.dart';
import 'package:ecommerce_ui/auth/sign_in_module/background_colors/background_color_bottom.dart';
import 'package:ecommerce_ui/auth/sign_in_module/background_colors/background_color_top.dart';
import 'package:ecommerce_ui/app_properties.dart';
import 'package:ecommerce_ui/auth/sign_up_module/screens/sign_up.dart';
import 'package:ecommerce_ui/main/screens/main_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    double WIDTH = MediaQuery.of(context).size.width;

    Widget topBackground = Stack(
      children: [
        CustomPaint(
          size: Size(
              WIDTH,
              (WIDTH * 0.8014018691588785)
                  .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
          painter: RPSCustomPainter(),
        ),
        Container(
          width: 250,
          height: 170,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/trolley.png'),
            ),
          ),
        ),
      ],
    );

    Widget stackbottomBackground = Stack(
      children: [
        Container(
          child: CustomPaint(
            size: Size(
                WIDTH,
                (WIDTH * 0.6121495327102804)
                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: BottomColorBackground(),
          ),
        ),
        const Positioned(
          top: 150,
          left: 100,
          child: Text(
            'Tuko Fresh, Tuko Easy',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ),
      ],
    );
    Widget background = Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/backcart.jpg'), fit: BoxFit.cover)),
        ),
        Container(
          decoration: const BoxDecoration(
            color: transparentGrey,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            topBackground,
            const Spacer(),
            stackbottomBackground,
          ],
        ),
      ],
    );
    Widget emailInputBox = TextFormField(
      style: const TextStyle(fontSize: 16.0),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        hintText: 'example@gmail.com',
        filled: true,
        fillColor: Color.fromARGB(255, 244, 243, 247),
      ),
    );

    Widget passwordInputBox = TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        filled: true,
        fillColor: Color.fromARGB(255, 244, 243, 247),
      ),
    );

    Widget forgotPassword = InkWell(
      onTap: () {},
      child: Text(
        'forgot password',
        style: TextStyle(
          color: Color.fromARGB(234, 6, 58, 43),
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
    );

    Widget signUpLink = Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            'Dont have an account? ',
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
                  MaterialPageRoute(builder: (_) => const SignUpScreen()));
            },
            child: Text(
              'Sign Up',
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

    Widget loginButton = InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => MainScreen()));
      },
      child: Container(
        width: 160,
        height: 50,
        child: Center(
            child: new Text("Sign In",
                style: const TextStyle(
                    color: const Color(0xfffefefe),
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 20.0))),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 173, 30, 20),
            borderRadius: BorderRadius.circular(9.0)),
      ),
    );

    Widget loginForm = Container(
      child: Stack(
        children: <Widget>[
          Container(
            height: 400,
            width: 300,
            padding: const EdgeInsets.only(left: 32.0, right: 12.0),
            decoration: const BoxDecoration(
                color: Color.fromARGB(204, 197, 196, 196),
                borderRadius: BorderRadius.all(Radius.circular(43))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: const EdgeInsets.only(left: 70, top: 18),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Color.fromARGB(234, 6, 58, 43),
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
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
                  child: loginButton,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: forgotPassword,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: signUpLink,
                ),
              ],
            ),
          ),
        ],
      ),
    );

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            background,
            Positioned(
              top: 200,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: loginForm,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
