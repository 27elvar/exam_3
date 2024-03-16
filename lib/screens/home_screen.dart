import 'package:exam_3/screens/page_1.dart';
import 'package:exam_3/screens/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color.fromARGB(255, 98, 94, 94),
              ),
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
      body: GridView.builder(
        itemCount: 10,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0, top: 8),
                        child: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://media.tenor.com/gll28BX3cWwAAAAM/shocked-meme.gif')),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Column(
                          children: [
                            const Text(
                              'Miri Bakinski ✅',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Text(
                                '4 days ago',
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 180.0),
                        child: Column(
                          children: [Icon(Icons.more_vert)],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 270,
                    child: Image.network(
                        'https://i.seadn.io/gae/2hDpuTi-0AMKvoZJGd-yKWvK4tKdQr_kLIpB_qSeMau2TNGCNidAosMEvrEXFO9G6tmlFlPQplpwiqirgrIPWnCKMvElaYgI-HiVvXc?auto=format&dpr=1&w=1000'),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_upward),
                        SizedBox(
                          width: 10,
                        ),
                        Text('0'),
                        SizedBox(
                          height: 50,
                          width: 20,
                        ),
                        Icon(Icons.arrow_downward),
                        SizedBox(
                          width: 10,
                        ),
                        Text('0')
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0, bottom: 2),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Una Paimera',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
