import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

var backgroundImg =
    "https://t4.ftcdn.net/jpg/02/66/72/41/360_F_266724172_Iy8gdKgMa7XmrhYYxLCxyhx6J7070Pr8.jpg";

class SecretPage extends StatelessWidget {
  const SecretPage({super.key});

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
            future: SecretCatApi.fetchSecrets(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var reversedList = snapshot.data!.reversed
                    .toList(); //데이터가 최신순으로 나열된게 아니라면 순서를 역으로 바꿈. type이 iterable이기 때문에 toList()
                // return Text(snapshot.data.toString());
                return PageView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, index) {
                    return FadeInRight(
                      //animate_do
                      delay: Duration(milliseconds: 1500),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 56,
                            backgroundColor: Colors.white38,
                            backgroundImage: AssetImage("assets/karaoke.png"),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            // snapshot.data![index].toString(),
                            snapshot.data![index].secret,
                            style: TextStyle(color: Colors.white, fontSize: 24),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            snapshot.data![index].author?.username ?? "익명",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  },
                );
              }
              return CircularProgressIndicator();
            },
          )),
    );
  }
}
