import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/converter_provider.dart';
import 'views/screens/converter_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ConverterProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const ConverterScreen(),
    );
  }
}
