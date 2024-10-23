import 'package:flutter/material.dart';
import 'package:stripe_test/services/stripe_service.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('payment gateway'),
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                StripeService.instance.makePayment();
              },
              child: Text('Make Payment'),
            ),

          ],
        ),
      ));
  }
}