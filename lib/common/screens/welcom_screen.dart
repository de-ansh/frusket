import 'package:flutter/material.dart';
import 'package:frusket/common/widgets/custom_button.dart';
import 'package:frusket/screens/buyers/sign_up_page_buyers.dart';
import 'package:frusket/screens/sellers/signup_page_seller.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5fa067),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Your Daily package of Fruits in your hand",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomBUtton(
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignupPageBuyer()));
              },
              title: 'Sign Up for Buyers',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomBUtton(
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpPageSeller()));
              },
              title: 'Sign Up for Sellers',
            ),
          ),
        ],
      )),
    );
  }
}
