import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

var backgroundImg =
    "https://t4.ftcdn.net/jpg/02/66/72/41/360_F_266724172_Iy8gdKgMa7XmrhYYxLCxyhx6J7070Pr8.jpg";

class UploadPage extends StatelessWidget {
  const UploadPage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();

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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:
                    CrossAxisAlignment.stretch, //컬럼안의 자식들의 사이즈를 길게 늘인다
                children: [
                  TextField(
                    controller: controller,
                    minLines: 7,
                    maxLines: 8,
                    decoration: InputDecoration(
                        filled: true, fillColor: Colors.white24),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        if (controller.text != "") {
                          var secret =
                              await SecretCatApi.addSecret(controller.text);
                          if (secret != null) {
                            Navigator.pop(context); // 글 남기기 버튼을 누르면 전 페이지로 이동
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("비밀공유성공! ${secret.secret}"),
                              ),
                            );
                          }
                        }
                      },
                      child: Text("업로드하기"))
                ],
              ),
            )));
  }
}
