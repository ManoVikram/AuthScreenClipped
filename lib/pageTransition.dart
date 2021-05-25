import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

Route createRoute(dynamic screen) {
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
      return screen;
    },
  );
}
