import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe_test/home.dart';
import 'package:stripe_test/consts.dart'; // Make sure to have a file with your keys.

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize the Stripe PaymentConfiguration with your publishable key
  Stripe.publishableKey = stripePublishableKey; // Replace with your key from consts.dart
  await Stripe.instance.applySettings();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stripe Payment Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
