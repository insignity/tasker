import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/log_in/log_in_bloc.dart';
import '../utilities.dart';

@RoutePage()
class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  GlobalKey formKey = GlobalKey();
  final TextEditingController emailController = TextEditingController()..text = 'aero';
  final TextEditingController passwordController = TextEditingController()..text = '123';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          context.router.pop();
        }, icon: Icon(Icons.close)),
        title: Text("Log In"),
      ),
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
                TextFormField(
                  decoration: InputDecoration().copyWith(labelText: "Email"),
                  controller: emailController,
                ),
                TextFormField(
                  decoration: InputDecoration().copyWith(labelText: "Password"),
                  controller: passwordController,
                ),
                HBox(16),
                BlocBuilder<LogInBloc, LogInState>(
                  builder: (context, state) {
                    if (state is LogInLoading) {
                      return CupertinoActivityIndicator();
                    } else if (state is LogInError) {
                      return Center(child: Text(state.message));
                    } else if (state is LogInSuccess) {
                      return Center(child: Text("success"));
                    }
                    return ElevatedButton(
                      onPressed: () {
                        context.read<LogInBloc>().add(
                          Login(emailController.text, passwordController.text),
                        );
                      },
                      child: Text("Log in"),
                    );
                  },
                ),
                Spacer(),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Forgot your password?"),
                      WBox(8),
                      GestureDetector(
                        onTap: () {
                          //todo: reset password page and everything
                        },
                        child: Text(
                          'Reset it',
                          style: TextStyle().copyWith(color: Colors.blue),
                        ),
                      ),
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
