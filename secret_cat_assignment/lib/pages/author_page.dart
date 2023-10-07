import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

var backgroundImg =
    "https://t4.ftcdn.net/jpg/02/66/72/41/360_F_266724172_Iy8gdKgMa7XmrhYYxLCxyhx6J7070Pr8.jpg";

class AuthorPage extends StatelessWidget {
  const AuthorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, //body가 appbar까지 올라감.
      appBar: AppBar(
        title: Text("뒤로가기"),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(backgroundImg),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black45,
              BlendMode.darken,
            ),
          ),
        ),
        child: FutureBuilder(
          future: SecretCatApi.fetchAuthors(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              // return Text(
              //   snapshot.data!.first.name,
              //   style: TextStyle(color: Colors.white),
              // );
              return GridView.builder(
                itemCount: snapshot.data?.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return ZoomIn(
                    delay: Duration(
                        milliseconds:
                            200 * index), //index의 아이템들이 200의 딜레이로 차례로 나옴
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 48,
                          backgroundImage:
                              NetworkImage(snapshot.data![index].avatar!),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          snapshot.data![index].username,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
            return SizedBox();
            // return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
