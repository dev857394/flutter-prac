import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //url_launcher
              // 카카오톡 채널 등
              ListTile(
                title: Text("이테디"),
                trailing: IconButton(
                    onPressed: () {
                      // launchUrlString('sms:+8210-0000-0000'); //문자메시지

                      launchUrlString(
                          'https://sniperfactory.com'); //웹브라우저 켜지고 주소로 이동
                    },
                    icon: Icon(Icons.call)),
                onTap: () {},
              ),

              //cached_network_image
              CachedNetworkImage(
                  imageUrl:
                      "https://robohash.org/411.png?set=set1&size=150x150"), //이미지를 캐싱하고
              CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(
                    "https://robohash.org/411.png?set=set1&size=150x150"), //캐싱된 이미지가 있으면 가져온다.            )
              ),

              //intl
              Text(DateFormat("y/M/d").format(DateTime(2009, 9, 3))),
              Text("40000원"),
              Text(NumberFormat.currency(locale: "ko_KR", symbol: "KRW")
                  .format(40000))
            ],
          ),
        ),
      ),
    );
  }
}
