import 'package:flutter/material.dart';
import 'package:new_app/utils/constants.dart';

void main() => runApp(MaterialApp(
  home: LoginScreen(),
  debugShowCheckedModeBanner: false,
  
));

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    theme: ThemeData(
      scaffoldBackgroundColor: kBackgroundColor,
      textTheme: Theme.of(context).textTheme.apply(bodyColor: kPrimaryColor),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
        centerTitle: true,

      ),
    );
  }
}