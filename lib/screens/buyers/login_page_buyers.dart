import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:frusket/common/screens/welcom_screen.dart';
import 'package:frusket/screens/sellers/home_page.dart';
import 'package:frusket/screens/sellers/login_page_sellers.dart';

import '../../services/firebase_auth_methods.dart';

class LoginPageBuyers extends StatefulWidget {
  static const String routeName = '/login_buyers';
  const LoginPageBuyers({super.key});

  @override
  State<LoginPageBuyers> createState() => _LoginPageBuyersState();
}

class _LoginPageBuyersState extends State<LoginPageBuyers> {
  TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordCont = TextEditingController();
  void loginUser() {
    FirebaseAuthMethod(FirebaseAuth.instance).loginWithEmail(
        email: _emailController.text,
        password: _passwordCont.text,
        context: context);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePape()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFebf58b),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  //greeting
                  const Text(
                    "Welcome to Frusket",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset('assets/basket.png'),
                  ),
                ],
              ),
            ),
            //Username
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: const Text(
                "Email",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[200]),
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: "Email@abc.com"),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //password
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "Password",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[200]),
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    controller: _passwordCont,
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: "**********"),
                  ),
                ),
              ),
            ),
            //sign in button
            const SizedBox(
              height: 10,
            ),
            //sign in for seller button
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey),
                child: InkWell(
                  onTap: loginUser,
                  child: const Center(
                    child: Text(
                      "Sign IN",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Login for",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPageSellers()));
                  },
                  child: const Text(
                    "  Seller",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            //register
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Not a Member?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WelcomScreen()));
                  },
                  child: const Text(
                    "  Register Now",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.amber,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
