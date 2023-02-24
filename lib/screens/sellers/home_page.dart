import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomePape extends StatefulWidget {
  static const String routeName = '/home_buyers';
  const HomePape({super.key});

  @override
  State<HomePape> createState() => _HomePapeState();
}

class _HomePapeState extends State<HomePape> {
  List<String> doscIDS = [];
  Future getDOcID() async {
    await FirebaseFirestore.instance
        .collection('users')
        .get()
        .then((snapshot) => snapshot.docs.forEach((user) {
              print(user.reference);
              doscIDS.add(user.reference.id);
            }));
  }

  @override
  void initState() {
    getDOcID();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FutureBuilder(
                future: getDOcID(),
                builder: (context, snapshot) {
                  return ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: doscIDS.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: index % 3 == 1
                                ? const Color(0xFFedf0fb)
                                : index % 3 == 2
                                    ? const Color(0xFFfceef1)
                                    : const Color(0xFFfaf4ed),
                            borderRadius: BorderRadius.circular(20),
                            shape: BoxShape.rectangle,
                          ),
                          child: Text(
                            doscIDS[index],
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
}
