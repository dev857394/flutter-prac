import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    //Row: 컨텐츠 가로 정렬
    var columnRowPrac = MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Text('더하기 아이콘 :'),
                  Icon(Icons.add),
                ],
              ),
              Row(
                children: [
                  Text('친구들 아이콘 :'),
                  Icon(Icons.people),
                ],
              ),
              Row(
                children: [
                  Text('수정 아이콘 :'),
                  Icon(Icons.edit),
                ],
              ),
            ],
          ),
        ),
      ),
    );

    var listTileWidgetPrac = MaterialApp(
      home: Scaffold(
        body: SafeArea(
          // ListTile
          child: ListTile(
            title: Text('윤혜림'), //title에는 Widget 데이터만 들어갈 수 있다.
            subtitle: Text('010-1234-5678'), //subtitle에도 widget데이터만.
            leading: Icon(Icons.access_time), //보너스속성 : leading에는 앞에 위젯을 두고 싶을 때
            trailing: Icon(Icons.call), // 보너스속성 : trailing에는 뒤에 위젯을 두고 싶을 때
          ),
        ),
      ),
    );

    var paddingWidgetPrac = MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              ListTile(
                title: Text('hyerim'),
                subtitle: Text('010-1234-5678'),
                leading: Padding(
                  //Padding으로 아이콘만 간격을 띄워줄 수 있다.
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.person),
                ),
                trailing: Icon(Icons.call),
              ),
              ListTile(
                title: Text('hyerim2'),
                subtitle: Text('010-1234-5678'),
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.person),
                ),
                trailing: Icon(Icons.call),
              )
            ],
          ),
        ),
      ),
    );

    var sizedBoxWidgetPrac = MaterialApp(
      home: Scaffold(
        body: SafeArea(
          //container (중요)
          //자식 위젯에게 사용할 수 있는 공간을 정해줄때
          //예쁘게 포장 가능
          child: Container(
            // color: Colors.indigo,
            width: 300,
            height: 300,
            alignment: Alignment.center, //padding 없어도 center를 함께 써서 위치시킬수 잇음
            // padding: EdgeInsets.all(24),
            //margin : padding과 반대
            margin: EdgeInsets.all(24),
            child: Text('hyerim'),
            decoration: BoxDecoration(
              //decoration 사용할때, 컬러를 꼭 안에 넣어야함
              color: Colors.red,
              border: Border.all(),
              borderRadius: BorderRadius.circular(16),
              //그라데이션 넣기
              gradient: LinearGradient(
                begin: Alignment.topLeft, //왼쪽 상단부터 시작
                end: Alignment.bottomRight, //오른쪽하단 끝
                colors: [
                  Colors.red,
                  Colors.blue,
                ],
              ),
              //shadow
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  spreadRadius: 8,
                  offset: Offset(30.2, 30),
                )
              ],
            ),
          ),
        ),
      ),
    );

    var imageNetworkAndAssetWidgetPrac = MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Image.network(
                  'https://t3.ftcdn.net/jpg/05/17/82/24/360_F_517822417_cW17ljcETUNX8BylhlNesxWyhxHXO3Nc.jpg'),
              Image.asset('assets/images/example.jpg'),
            ],
          ),
        ),
      ),
    );

    // Column, Row는 기본적으로 스크롤 기능이 없어 그저 위아래, 양옆으로 데이터를 위치하게 된다.
    // ListView는 기본적으로 위아래 스크롤기능이 장착되어 있다.
    // 가로 스크롤도 사용할 수 있다.
    var listViewWidgetPrac = MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            // scrollDirection: Axis.horizontal, // .horizontal로 양옆 스크롤
            children: [
              ListTile(
                title: Text('hyerim'),
                subtitle: Text('010-1234-5678'),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(
                  // backgroundColor: Colors.red,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/100/100'),
                ),
              ),
              ListTile(
                title: Text('hyerim'),
                subtitle: Text('010-1234-5678'),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(
                  // backgroundColor: Colors.red,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/100/100'),
                ),
              ),
              ListTile(
                title: Text('hyerim'),
                subtitle: Text('010-1234-5678'),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(
                  // backgroundColor: Colors.red,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/100/100'),
                ),
              ),
              ListTile(
                title: Text('hyerim'),
                subtitle: Text('010-1234-5678'),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(
                  // backgroundColor: Colors.red,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/100/100'),
                ),
              ),
              ListTile(
                title: Text('hyerim'),
                subtitle: Text('010-1234-5678'),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(
                  // backgroundColor: Colors.red,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/100/100'),
                ),
              ),
              ListTile(
                title: Text('hyerim'),
                subtitle: Text('010-1234-5678'),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(
                  // backgroundColor: Colors.red,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/100/100'),
                ),
              ),
              ListTile(
                title: Text('hyerim'),
                subtitle: Text('010-1234-5678'),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(
                  // backgroundColor: Colors.red,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/100/100'),
                ),
              ),
              ListTile(
                title: Text('hyerim'),
                subtitle: Text('010-1234-5678'),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(
                  // backgroundColor: Colors.red,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/100/100'),
                ),
              ),
              ListTile(
                title: Text('hyerim'),
                subtitle: Text('010-1234-5678'),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(
                  // backgroundColor: Colors.red,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/100/100'),
                ),
              ),
              ListTile(
                title: Text('hyerim'),
                subtitle: Text('010-1234-5678'),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(
                  // backgroundColor: Colors.red,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/100/100'),
                ),
              ),
              ListTile(
                title: Text('hyerim'),
                subtitle: Text('010-1234-5678'),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(
                  // backgroundColor: Colors.red,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/100/100'),
                ),
              ),
              ListTile(
                title: Text('hyerim'),
                subtitle: Text('010-1234-5678'),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(
                  // backgroundColor: Colors.red,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/100/100'),
                ),
              ),
              ListTile(
                title: Text('hyerim'),
                subtitle: Text('010-1234-5678'),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(
                  // backgroundColor: Colors.red,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/100/100'),
                ),
              ),
              ListTile(
                title: Text('hyerim'),
                subtitle: Text('010-1234-5678'),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(
                  // backgroundColor: Colors.red,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/100/100'),
                ),
              ),
              ListTile(
                title: Text('hyerim'),
                subtitle: Text('010-1234-5678'),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(
                  // backgroundColor: Colors.red,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/100/100'),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    //자식객체에 스크롤 기능을 만들어 줌
    //ListView는 children으로 다수의 위젯(List<Widget>)을 제공해야한다
    //SingleChildScrollView는 단일 위젯의 자식에게 스크롤을 제공
    //속성 : scrollDirection으로 ListView와 동일하게 방향을 설정할 수 있다.
    //웹툰에도 쓰임
    var singleChildScrollViewWidgetPrac = MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Text(
                '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan sit amet nulla facilisi morbi tempus iaculis urna id. Nulla malesuada pellentesque elit eget gravida cum sociis natoque penatibus. Ultricies mi quis hendrerit dolor magna eget est lorem. Blandit volutpat maecenas volutpat blandit aliquam etiam erat. Ut etiam sit amet nisl purus in. At auctor urna nunc id cursus metus aliquam. Quis enim lobortis scelerisque fermentum dui faucibus. Nec sagittis aliquam malesuada bibendum arcu vitae elementum. Nunc mi ipsum faucibus vitae aliquet nec. Etiam sit amet nisl purus in mollis nunc. Tempus quam pellentesque nec nam aliquam. Vitae et leo duis ut diam quam. Felis donec et odio pellentesque diam volutpat. Arcu cursus vitae congue mauris rhoncus aenean. Ipsum dolor sit amet consectetur adipiscing elit pellentesque. Sit amet est placerat in egestas erat imperdiet. Vel quam elementum pulvinar etiam non quam lacus suspendisse. Ultrices sagittis orci a scelerisque.
          
          Sed lectus vestibulum mattis ullamcorper. Vulputate mi sit amet mauris commodo quis. Placerat orci nulla pellentesque dignissim. Non pulvinar neque laoreet suspendisse interdum. Lectus proin nibh nisl condimentum. Sit amet consectetur adipiscing elit duis. Vel orci porta non pulvinar neque. Ac turpis egestas sed tempus urna. Nullam ac tortor vitae purus faucibus ornare. Ut ornare lectus sit amet est placerat in egestas erat. Diam vulputate ut pharetra sit amet aliquam id. Metus dictum at tempor commodo. A diam sollicitudin tempor id eu nisl nunc. Facilisis gravida neque convallis a cras semper auctor neque vitae. Turpis massa sed elementum tempus egestas sed sed. Pellentesque nec nam aliquam sem et tortor. Sapien pellentesque habitant morbi tristique senectus et netus et malesuada. Interdum consectetur libero id faucibus nisl tincidunt eget nullam.
          
          Vulputate ut pharetra sit amet aliquam id. Mi ipsum faucibus vitae aliquet nec ullamcorper sit. Aliquam etiam erat velit scelerisque in dictum non consectetur a. Amet dictum sit amet justo. Ut aliquam purus sit amet luctus. Malesuada fames ac turpis egestas integer eget aliquet nibh. Maecenas ultricies mi eget mauris pharetra. At volutpat diam ut venenatis tellus in. Pulvinar pellentesque habitant morbi tristique. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor. Ipsum nunc aliquet bibendum enim. Pharetra vel turpis nunc eget lorem dolor. Leo a diam sollicitudin tempor id eu. Facilisis gravida neque convallis a cras semper.'''),
          ),
        ),
      ),
    );

    //인스타그램 or 데이팅앱처럼 넘겨보는 기능 구현
    var pageViewWidgetPrac = MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: PageView(
            children: [
              Center(child: Text('page1')), //페이지 중앙에 컨텐츠를 두고싶다면 center
              Center(child: Text('page2')),
              Center(child: Text('page3')),
              Text('page4'),
              Text('page5'),
            ],
          ),
        ),
      ),
    );

    //Quiz. 다음의 코드의 결과값을 예상해보고, 실행해본 뒤에 에러가 나는 이유를 제출하세요.
    //Answer : ListView는 자식객체의 크기만큼 길이가 생성되는데 ListView안에 또 Listview가 올 경우, 내부 ListView의 자식객체로 인해 스크롤이 중첩된다.
    //상위 listview의 길
    var quiz = MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Text('안녕 난 1번 ListView의 자식이다'),
              Text('나도! 1번 ListView의 자식이야'),
              ListView(
                children: [
                  Text('난 2번의 자식임'),
                  // Text('나도 2번의 자식임'),
                ],
              ),
              Text('난 멀리 떨어져있지만 1번의 자식이야'),
            ],
          ),
        ),
      ),
    );

    return quiz;
  }
}
