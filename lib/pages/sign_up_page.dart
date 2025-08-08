import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tasker/services/api_service.dart';
import 'package:tasker/utilities.dart';

import '../di.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  ApiService apiService = sl<ApiService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.close), title: Text("Sign Up")),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsetsGeometry.all(20),
                child: Center(child: Text("Super puper tasker")),
              ),
              Row(
                children: [
                  Expanded(child: TextFormField()),
                  WBox(8),
                  Expanded(child: TextFormField()),
                ],
              ),
              TextFormField(),
              TextFormField(),
              TextFormField(),
              TextFormField(),
              Text(
                "Your phone and zip code help us match and connect you with the right taskers",
              ),
              HBox(16),
              ElevatedButton(
                onPressed: () {
                  apiService.login();
                },
                child: Text("Sign up"),
              ),
              HBox(16),
              Text(
                "By signing up, you agree to our Terms of Service, and Privacy Policy.",
              ),
              Spacer(),
              Center(child: Text("Already have and account? Log in")),
            ],
          ),
        ),
      ),
    );
  }
}
