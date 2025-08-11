import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasker/blocs/log_in/log_in_bloc.dart';
import 'package:tasker/di.dart';
import 'package:tasker/router/app_router.dart';

import 'blocs/sign_up/sign_up_bloc.dart';

void main() async  {
  ///Allows flutter to wait before [runApp()]
  WidgetsFlutterBinding.ensureInitialized();
  await initializeInstances();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MultiBlocProvider(
      providers: [
        BlocProvider<SignUpBloc>(create: (_) => sl()),
        BlocProvider<LogInBloc>(create: (_) => sl()),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter.config(),

        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
      ),
    );
  }
}
