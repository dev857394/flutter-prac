import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //futureBuilder
            FutureBuilder(
              future: SecretCatApi.fetchAuthors(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Text(snapshot.data.toString());
                  // 첫번째 데이터만 보기
                  return Text(snapshot.data!.first.toString());
                  // first데이터에서 name필드만 보기
                  return Text(snapshot.data!.first.name);

                  return snapshot.data!.last.avatar != null
                      ? CircleAvatar(
                          backgroundImage: NetworkImage(snapshot
                              .data!.first.avatar!), // !: null이 아님을 확신
                        )
                      : SizedBox();

                  return ListTile(
                    leading: snapshot.data!.first.avatar != null
                        ? CircleAvatar(
                            backgroundImage:
                                NetworkImage(snapshot.data!.first.avatar!))
                        : CircleAvatar(
                            child: Text(snapshot.data!.first.username[0]),
                          ),
                    title: Text(snapshot.data!.first.username),
                    subtitle: Text(snapshot.data!.first.id),
                  );
                }
                return LinearProgressIndicator();
              },
            )

            TextButton(
              onPressed: () async {
                // var secret =
                //     await SecretCatApi.addSecret("비밀입니다!. 제 비밀이 궁금하신가요?");
                var secret =
                    await SecretCatApi.addSecret("새로운 비밀입니다!. 제 비밀이 궁금하신가요?");
                print(secret);
              },
              child: Text("비밀 업로드"),
            ),
            TextButton(
                onPressed: () async {
                  var secrets = await SecretCatApi.fetchSecrets();
                  print(secrets.last.secret);
                },
                child: Text("비밀 확인"))
          ],
        ),
      ),
    );
  }
}
