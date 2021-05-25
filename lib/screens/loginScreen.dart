import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/roundedTextField.dart';
import '../screens/signupScreen.dart';
import '../pageTransition.dart';

class LoginScreen extends StatelessWidget {
  /* Route createRoute() {
    return PageRouteBuilder(
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SharedAxisTransition(
          fillColor: Theme.of(context).cardColor,
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          transitionType: SharedAxisTransitionType.scaled,
          child: child,
        );
      },
      transitionDuration: Duration(milliseconds: 700),
      pageBuilder: (context, animation, secondaryAnimation) {
        return SignupScreen();
      },
    );
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue[800],
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: ClipPath(
                  clipper: JerryClipper(),
                  child: Image.asset(
                    "assets/images/3D_art1.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Missed You!",
                      style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                        // letterSpacing: 2.2,
                        // color: Colors.blueGrey,
                        // color: Color(0xFFeaa75c),
                        color: Colors.indigo[300],
                        shadows: [
                          Shadow(
                            offset: Offset(3, 7),
                            color: Colors.black12,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    RoundedTextField(
                      icon: CupertinoIcons.mail_solid,
                      color: Colors.indigo,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    RoundedTextField(
                      icon: CupertinoIcons.lock_fill,
                      color: Colors.indigo,
                      isPassword: true,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.right_chevron),
                      style: ElevatedButton.styleFrom(
                        // primary: Color(0xFFeaa75c),
                        // primary: Color(0xFFe97da4),
                        primary: Color(0xFF996FCF),
                        elevation: 8.0,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 10.0,
                        ),
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 24.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                      ),
                      label: Text("Login"),
                    ),
                    TextButton(
                      onPressed: () {
                        /* Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (_) => SignupScreen(),
                          ),
                        ); */
                        Navigator.of(context).pushReplacement(
                          createRoute(
                            SignupScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "New here? Register",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.indigo,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class JerryClipper extends CustomClipper<Path> {
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;

  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30.0);
    path.quadraticBezierTo(
      size.width / 4,
      size.height,
      size.width / 2,
      size.height,
    );
    path.quadraticBezierTo(
      size.width - size.width / 4,
      size.height,
      size.width,
      size.height - 30.0,
    );
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }
}
