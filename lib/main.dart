import 'package:flutter/material.dart';
import 'package:tasker/di.dart';
import 'package:tasker/router/app_router.dart';

void main() {
  ///Allows flutter to wait before [runApp()]
  WidgetsFlutterBinding.ensureInitialized();
  initializeInstances();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MaterialApp.router(
      routerConfig: appRouter.config(),

      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}
