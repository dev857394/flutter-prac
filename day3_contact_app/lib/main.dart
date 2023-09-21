import 'package:day3_contact_app/ContactTile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var contactApp = MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('My Contact'),
          centerTitle: false,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert),
            )
          ],
        ),
        body: ListView(
          children: [
            ContactTile(
              name: 'teddy',
              phone: "010-2222-2222",
              imgUrl: 'https://picsum.photos/100/100',
            ),
            ContactTile(
              name: 'hyerim',
              phone: "010-2222-2222",
              imgUrl: 'https://picsum.photos/100/100',
            ),
            ContactTile(
              name: 'hyerim2',
              phone: "010-2222-2222",
              imgUrl: 'https://picsum.photos/100/100',
            ),
            ContactTile(
              name: 'hyerim33',
              phone: "010-2222-2222",
              imgUrl: 'https://picsum.photos/100/100',
            ),
            ContactTile(
              name: 'teddy',
              phone: "010-2222-2222",
              imgUrl: 'https://picsum.photos/100/100',
            ),
            ContactTile(
              name: 'teddy',
              phone: "010-2222-2222",
              imgUrl: 'https://picsum.photos/100/100',
            ),
            ContactTile(
              name: 'teddy',
              phone: "010-2222-2222",
              imgUrl: 'https://picsum.photos/100/100',
            ),
            ContactTile(
              name: 'teddy',
              phone: "010-2222-2222",
              imgUrl: 'https://picsum.photos/100/100',
            ),
            ContactTile(
              name: 'teddy',
              phone: "010-2222-2222",
              imgUrl: 'https://picsum.photos/100/100',
            ),
            ContactTile(
              name: 'teddy',
              phone: "010-2222-2222",
              imgUrl: 'https://picsum.photos/100/100',
            ),
            ContactTile(
              name: 'teddy',
              phone: "010-2222-2222",
              imgUrl: 'https://picsum.photos/100/100',
            ),
            ContactTile(
              name: 'teddy',
              phone: "010-2222-2222",
              imgUrl: 'https://picsum.photos/100/100',
            ),
            ContactTile(
              name: 'teddy',
              phone: "010-2222-2222",
              imgUrl: 'https://picsum.photos/100/100',
            ),
            ContactTile(
              name: 'teddy',
              phone: "010-2222-2222",
              imgUrl: 'https://picsum.photos/100/100',
            ),
            ContactTile(
              name: 'teddy',
              phone: "010-2222-2222",
              imgUrl: 'https://picsum.photos/100/100',
            ),
            ContactTile(
              name: 'teddy',
              phone: "010-2222-2222",
              imgUrl: 'https://picsum.photos/100/100',
            ),
            ContactTile(
              name: 'teddy',
              phone: "010-2222-2222",
              imgUrl: 'https://picsum.photos/100/100',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            //items는 2 가지 이상의 list 구조가 되어야한다.
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone),
              label: 'contact',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'call history',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'settings',
            ),
          ],
        ),
      ),
    );

    return contactApp;
  }
}
