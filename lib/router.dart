import 'package:calenderapp/features/auth/screens/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings){
  switch(routeSettings.name){
    case AuthScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const AuthScreen()
      );
    default:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const Scaffold(
            body: Center(
              child: Row(
                children: [
                  Icon(Icons.search_off),
                  Text("Screen doesn't exist!",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          )
      );
  }
}