import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  final IconData icon;
  final bool isPassword;
  final Color color;

  const RoundedTextField({
    Key? key,
    required this.icon,
    this.isPassword = false,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      /* padding: EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 8.0,
      ), */
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        // color: Colors.deepPurpleAccent.withOpacity(0.3),
        color: color.withOpacity(0.04),
        borderRadius: const BorderRadius.all(
          Radius.circular(30.0),
        ),
        border: Border.all(
          color: color.withOpacity(0.5),
        ),
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Colors.deepOrangeAccent[100],
            ),
            border: InputBorder.none,
            hintText: isPassword ? "Password" : "Email",
          ),
          enableSuggestions: false,
          keyboardType: isPassword
              ? TextInputType.visiblePassword
              : TextInputType.emailAddress,
          obscureText: isPassword,
          cursorColor: Colors.indigoAccent,
        ),
      ),
    );
  }
}
