import 'package:exam_3/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset(
                  fit: BoxFit.fill,
                  height: 932,
                  'asset/images/background8.jpg'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 300.0),
            child: Align(
              child: Row(
                children: [
                  Image.asset(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      'asset/images/logo_500px.png'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 450.0, left: 55),
            child: Column(
              children: [
                const Text(
                  'Join our daily Task!',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 33,
                      fontWeight: FontWeight.w600),
                ),
                const Text(
                  'Collaborate to make a better world.',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[200],
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) {
                            return const HomeScreen();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Join SocialTask',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
