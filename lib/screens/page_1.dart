import 'package:exam_3/screens/home_screen.dart';
import 'package:exam_3/screens/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                      ),
                    );
                  },
                  icon: Icon(Icons.home)),
              label: ' '),
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: ' '),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) {
                        return const Page1();
                      },
                    ),
                  );
                },
                icon: const Icon(Icons.rectangle),
              ),
              label: ' '),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Color.fromARGB(255, 98, 94, 94),
              ),
              label: ' '),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) {
                          return const ProfilePage();
                        },
                      ),
                    );
                  },
                  icon: const Icon(Icons.person)),
              label: ' '),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset(
                  fit: BoxFit.fill,
                  height: 816,
                  'asset/images/background22.jpg'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 450.0),
            child: Align(
              child: Row(
                children: [
                  Image.asset(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      'asset/images/logo_500px.png'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 320.0, left: 15),
            child: Column(
              children: [
                const Text(
                  'Daily Task',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 33,
                      fontWeight: FontWeight.w600),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0, right: 15),
                  child: Text(
                    'Crea una obra de arte usando hojas y sacale una foto.',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  '-- Instructions --',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
                const Text(
                  'Recoleta hojas da diferentes formas y colores \nCrea una compecision interesante \nCaptura la belleze de la cahseleze!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),
                  width: 150,
                  height: 50,
                  child: const Center(
                    child: Text(
                      'START',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
