import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      Color(0xFF8C2480),
      Color(0xFFCE587D),
      Color(0xFFFF9485),
    ];

    var _emailController = TextEditingController();
    var _passwordController = TextEditingController();

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF8C2480),
              Color(0xFFCE587D),
              Color(0xFFFF9485),
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 30,
              bottom: -40,
              child: Image.asset("assets/images/Sun.png"),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: -60,
              child: Image.asset(
                "assets/images/land_tree_light.png",
                fit: BoxFit.fitHeight,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Good Morning",
                      style: Theme.of(context).textTheme.headline3?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "What's up?",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    RoundedTextBox(
                      title: "Email",
                      controller: _emailController,
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    RoundedTextBox(
                      title: "Password",
                      controller: _passwordController,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoundedTextBox extends StatelessWidget {
  final bool isPassword;
  final String title;
  final TextEditingController controller;

  const RoundedTextBox({
    Key? key,
    this.isPassword = false,
    required this.title,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white60,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              width: 2.0,
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          child: TextField(
            controller: controller,
            obscureText: isPassword,
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: isPassword ? "Password" : "Email",
            ),
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
