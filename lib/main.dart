import 'package:flutter/material.dart';
import 'package:flutter_widget/mvvm/model_views/counterViewModel.dart';
import 'package:flutter_widget/mvvm/model_views/postVewModel.dart';
import 'package:flutter_widget/mvvm/model_views/userViewModel.dart';
import 'package:flutter_widget/providers/dataProvider.dart';
import 'package:flutter_widget/welcomeScreen.dart';
import 'package:flutter_widget/widgets/heroAnimations/cardDommy.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => DataProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => CounterViewModel(),
      ),
      ChangeNotifierProvider(
        create: (context) => PostViewModel(),
      ),
      ChangeNotifierProvider(
        create: (context) => UserViewModel(),
      ),
      ChangeNotifierProvider(
        create: (context) => DommyProvider(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}
