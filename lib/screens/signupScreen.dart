import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './loginScreen.dart';
import '../widgets/roundedTextField.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: ClipPath(
                  clipper: TomClipper(),
                  child: Image.asset(
                    "assets/images/3D_art4.png",
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "New here?",
                      style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                        // letterSpacing: 2.2,
                        color: Colors.redAccent,
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
                      color: Colors.pinkAccent,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    RoundedTextField(
                      icon: CupertinoIcons.lock_fill,
                      color: Colors.pinkAccent,
                      isPassword: true,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.right_chevron),
                      style: ElevatedButton.styleFrom(
                        // primary: Color(0xFFFE858A),
                        primary: Color(0xFF4C4675),
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
                      label: Text("SignUp"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (_) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "We met before? Try here",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.indigo,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Text(
                      "or",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          iconSize: 70.0,
                          icon: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/googleLogo.jpg"),
                            backgroundColor: Colors.blueGrey,
                          ),
                        ),
                        Container(
                          height: 50.0,
                          width: 2.0,
                          color: Colors.blueGrey[200],
                        ),
                        IconButton(
                          onPressed: () {},
                          iconSize: 70.0,
                          icon: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/facebookLogo.png"),
                            backgroundColor: Colors.blueGrey,
                          ),
                          splashRadius: 80.0,
                        ),
                      ],
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

class TomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);
    path.quadraticBezierTo(
      size.width / 4,
      size.height * 0.8,
      size.width / 2,
      size.height,
    );
    path.quadraticBezierTo(
      size.width - size.width / 4,
      size.height * 0.8,
      size.width,
      size.height - 30.0,
    );
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

/* class TomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);
    path.quadraticBezierTo(
      size.width / 8,
      size.height,
      size.width / 4,
      size.height,
    );
    path.quadraticBezierTo(
      size.width / 2 - size.width / 8,
      size.height,
      size.width / 2,
      size.height - 30,
    );
    /* path.quadraticBezierTo(
      size.width / 3,
      size.height,
      size.width / 2,
      size.height - 30,
    ); */
    path.quadraticBezierTo(
      size.width / 2 + size.width / 8,
      size.height,
      size.width / 2 + size.width / 4,
      size.height,
    );
    path.quadraticBezierTo(
      size.width / 2 + size.width / 4 + size.width / 8,
      size.height,
      size.width,
      size.height - 30,
    );
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
} */
