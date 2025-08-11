import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tasker/router/app_router.gr.dart';
import 'package:tasker/utilities.dart';

import '../di.dart';
import '../services/api/api_service.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Api apiService = sl<Api>();
  GlobalKey formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.close), title: Text("Sign Up")),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.all(20),
                  child: Center(child: Text("Super puper tasker")),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration().copyWith(
                          labelText: "First Name",
                        ),
                      ),
                    ),
                    WBox(8),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration().copyWith(
                          labelText: "Last Name",
                        ),
                      ),
                    ),
                  ],
                ),
                TextFormField(
                  decoration: InputDecoration().copyWith(labelText: "Email"),
                ),
                TextFormField(
                  decoration: InputDecoration().copyWith(labelText: "Password"),
                ),
                TextFormField(
                  decoration: InputDecoration().copyWith(
                    labelText: "Phone number",
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration().copyWith(
                    labelText: "Postal Code",
                  ),
                ),
                Text(
                  "Your phone and zip code help us match and connect you with the right taskers",
                ),
                HBox(16),
                ElevatedButton(
                  onPressed: () {
                    // apiService.login(); todo make it work add email password and etc
                  },
                  child: Text("Sign up"),
                ),
                HBox(16),
                Text(
                  "By signing up, you agree to our Terms of Service, and Privacy Policy.",
                ),
                Spacer(),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?"
                      ),
                      WBox(8),
                      GestureDetector(
                          onTap: (){
                            context.router.push(LogInRoute());

                          },
                          child: Text('Log in', style: TextStyle().copyWith(color: Colors.blue)),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
