import 'package:day5/ArticleTile.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  runApp(const CheckboxAndVisibilityWidgetPrac());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // controller
    // 작성되고 있는 데이터를 가져올 때 사용
    // 위젯의 특정한 액션을 취하거나, 조종하고 싶을 때 사용
    // Controller는 위젯 내에 변수로 선언하고 그 변수를 조작하면 된다.
    var myController =
        TextEditingController(text: 'admin@naver.com'); //ext: 기본값 주기
    var idController = TextEditingController(text: '');
    var pwController = TextEditingController(text: '');

    //관리가 필요한 위젯들
    //textfield(textformField)
    //: 위젯에 작성된 텍스트를 가져올때
    //위젯에 작성된 텍스트를 초기화할때
    //PageView
    //다음페이지로 넘어갈때, N페이지로 이동시킬때

    var controllerPrac = MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextField(
                controller: idController,
              ),
              TextField(
                controller: pwController,
                obscureText: true, //입력값을 안보이게 표시함.
              ),
              TextButton(
                onPressed: () {
                  print(idController.text);
                  print(pwController.text);
                },
                child: Text('login'),
              ),
              // TextButton(
              //   onPressed: () {
              //     print(myController.text);
              //   },
              //   child: Text('Hit me'),
              // ),
            ],
          ),
        ),
      ),
    );

    var pageController = PageController();

    var pageViewControllerPrac = MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            pageController.nextPage(
                duration: Duration(milliseconds: 500),
                curve: Curves
                    .easeIn); //duration: 페이지가 전환되는데 걸리는 시간 설정, curve: 전환효과설정
          },
          child: Icon(Icons.navigate_next),
        ),
        body: SafeArea(
          child: DefaultTextStyle(
            style: TextStyle(fontSize: 35, color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: PageView(
                physics:
                    //사용자 행동을 금지
                    NeverScrollableScrollPhysics(), //사용자가 swipe 할 수 없음. controller를 이용해서 하는건 가능
                controller: pageController,
                children: [
                  Text('Page A'),
                  Text('Page B'),
                  Text('Page C'),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    // MaterialApp을 scaffold와 분리
    var divideScaffold = MaterialApp(
      home: SecondPage(),
    );

    var ifPrac = MaterialApp(
        // home: IfPracMainPage(),
        home: IfPracSettingPage());

    var ifPrac2 = MaterialApp(
      home: IfPrac2(),
    );

    return ifPrac2;
  }
}

//divideScaffold의 scaffold를 클래스 분리
//routingapp을 이용하려면 scaffold가 최상위가 되어야한다.
//Scaffold 단위 = page
//페이지를 하나 더 만든다면 scaffold를 최상위로
//routing은 navigation을 활용하는것
//navigation
//push: 새로 페이지를 불러온다
//pop: 현재페이지를 뺀다
//후입선출의 stack 구조
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //기본적으로 true라 따로 만들어주지않아도 뒤로가기 가능
      ),
      body: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('A'),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Text('B'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FirstPage(),
            ),
          ); // context 현재 페이지의 정보
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class IfPracMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isLogined = false;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0,
        title: Text('스팩커뮤니티'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Text('스팩컴퍼니의 가족 안녕하세요'),
              if (isLogined)
                Column(
                  children: [
                    ListTile(
                      title: Text('text1'),
                      subtitle: Text('subtitle2'),
                    ),
                    ListTile(
                      title: Text('text1'),
                      subtitle: Text('subtitle2'),
                    ),
                    ListTile(
                      title: Text('text1'),
                      subtitle: Text('subtitle2'),
                    ),
                    ListTile(
                      title: Text('text1'),
                      subtitle: Text('subtitle2'),
                    ),
                    ListTile(
                      title: Text('text1'),
                      subtitle: Text('subtitle2'),
                    ),
                    ListTile(
                      title: Text('text1'),
                      subtitle: Text('subtitle2'),
                    ),
                    ListTile(
                      title: Text('text1'),
                      subtitle: Text('subtitle2'),
                    ),
                    ListTile(
                      title: Text('text1'),
                      subtitle: Text('subtitle2'),
                    ),
                    ListTile(
                      title: Text('text1'),
                      subtitle: Text('subtitle2'),
                    ),
                    ListTile(
                      title: Text('text1'),
                      subtitle: Text('subtitle2'),
                    ),
                    ListTile(
                      title: Text('text1'),
                      subtitle: Text('subtitle2'),
                    ),
                    ListTile(
                      title: Text('text1'),
                      subtitle: Text('subtitle2'),
                    ),
                    ListTile(
                      title: Text('text1'),
                      subtitle: Text('subtitle2'),
                    ),
                  ],
                )
              else
                Text('안녕하세요'),
            ],
          ),
        ),
      ),
    );
  }
}

class IfPracSettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isLogined = false;
    String userType = '관리자';

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0,
        title: Text('스팩커뮤니티'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Text('스팩컴퍼니의 가족 안녕하세요'),
              Column(
                children: [
                  ListTile(
                    title: Text('언어설정'),
                    leading: Icon(Icons.language),
                  ),
                  ListTile(
                    title: Text('회원정보'),
                    leading: Icon(Icons.language),
                  ),
                  ListTile(
                    title: Text('버전정보'),
                    leading: Icon(Icons.language),
                  ),
                  ListTile(
                    title: Text('마음의편지'),
                    leading: Icon(Icons.language),
                  ),
                  ListTile(
                    title: Text('오픈라이센스'),
                    leading: Icon(Icons.language),
                  ),
                ],
              ),
              userType == '관리자'
                  ? Text('관리자는 사직서 제출 못함')
                  : ListTile(
                      title: Text('사직서제출'),
                      leading: Icon(Icons.language),
                    ),
              if (isLogined)
                ListTile(
                  title: Text('로그아웃'),
                  leading: Icon(Icons.language),
                )
              else
                Text('보여줄 데이터가 없습니다.'),
            ],
          ),
        ),
      ),
    );
  }
}

class IfPrac2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isLogined = false;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0,
        title: Text('스팩커뮤니티'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Text('스팩컴퍼니의 가족 안녕하세요'),
              //삼항연산자
              isLogined
                  ? ArticleTile(
                      title: '제목입니다',
                      author: '사용자',
                      content: '내용입니다',
                    )
                  : Text('로그인하세요'),
              ArticleTile(
                title: '제목입니다',
                author: '사용자',
                content: '내용입니다',
              ),
              ArticleTile(
                title: '제목입니다',
                author: '사용자',
                content: '내용입니다',
              ),
              ArticleTile(
                title: '제목입니다',
                author: '사용자',
                content: '내용입니다',
              ),
              ArticleTile(
                title: '제목입니다',
                author: '사용자',
                content: '내용입니다',
              ),
              ArticleTile(
                title: '제목입니다',
                author: '사용자',
                content: '내용입니다',
              ),
              ArticleTile(
                title: '제목입니다',
                author: '사용자',
                content: '내용입니다',
              ),
              ArticleTile(
                title: '제목입니다',
                author: '사용자',
                content: '내용입니다',
              ),
              Text('안녕하세요'),
            ],
          ),
        ),
      ),
    );
  }
}

class CheckboxAndVisibilityWidgetPrac extends StatefulWidget {
  const CheckboxAndVisibilityWidgetPrac({super.key});

  @override
  State<CheckboxAndVisibilityWidgetPrac> createState() =>
      _CheckboxAndVisibilityWidgetPracState();
}

// 체크박스 and visibility 위젯
class _CheckboxAndVisibilityWidgetPracState
    extends State<CheckboxAndVisibilityWidgetPrac> {
  var isChecked = false;
  var isLogined = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            //visibillity
            //if 대신 사용가능
            child: Column(
              children: [
                Text('안녕하세요'),
                Visibility(
                  visible: false,
                  child: Text('당신은 회원입니다'),
                ),
                Text('반가워요')
              ],
            ),

            //checkbox
            // child: Checkbox(
            //   value: isChecked,
            //   onChanged: (value) {
            //     isChecked = value!;
            //     setState(() {}); //체크박스 항상 stateful widget+setstate로 이용
            //   },
            // ),
          ),
        ),
      ),
    );
  }
}
