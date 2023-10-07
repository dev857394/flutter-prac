import 'package:flutter/material.dart';
import 'package:secret_cat_assignment/pages/author_page.dart';
import 'package:secret_cat_assignment/pages/secret_page.dart';
import 'package:secret_cat_assignment/pages/upload_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 36,
              backgroundColor: Colors.white38,
              backgroundImage: AssetImage("assets/karaoke.png"),
            ),
            SizedBox(
              height: 8,
            ),
            Center(
              child: Text(
                "비밀듣는 고양이",
                style: TextStyle(color: Colors.white, fontSize: 34),
              ),
            ),
            SizedBox(
              height: 36,
            ),
            ListTile(
              tileColor: Colors.white,
              title: Text("비밀보기"),
              subtitle: Text("놀러가기"),
              trailing: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.white38,
                backgroundImage: AssetImage("assets/karaoke.png"),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecretPage(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 24,
            ),
            ListTile(
              tileColor: Colors.white,
              title: Text("작성자들 보기"),
              subtitle: Text("놀러가기"),
              trailing: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.white38,
                backgroundImage: AssetImage("assets/karaoke.png"),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AuthorPage(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 24,
            ),
            ListTile(
              tileColor: Colors.white,
              title: Text("비밀 남기기"),
              subtitle: Text("놀러가기"),
              trailing: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.white38,
                backgroundImage: AssetImage("assets/karaoke.png"),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UploadPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
