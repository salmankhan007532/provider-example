import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_stat_managment_class/count_provider.dart';
import 'package:provider_stat_managment_class/example_provider.dart';
import 'package:provider_stat_managment_class/exmple_screen.dart';
import 'package:provider_stat_managment_class/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> countProvider()),
        ChangeNotifierProvider(create: (_)=> MultiProviderExmaple()),
      ],
      child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const ExampleScreen(),
    ) ,
      );
  }
}
