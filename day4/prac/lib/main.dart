import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  runApp(const MyStatefulApp());

  // print("hello");

  // CustomFunctions cf = CustomFunctions();
  // cf.printWelcomeMsg();
  // print(cf.getMyAge());
  // print(cf.getMyNickname());
  // print(cf.getMyFollower());
  // print(cf.getMyNickname());
  // var isFollowed = cf.tryFollow();
  // print(isFollowed);
  // var myFollowers = cf.getMyFollowers();
  // print(myFollowers);
  // cf.printWelcomeMsg2('Hyerim');
}

class CustomFunctions {
  void printWelcomeMsg2(String myName) {
    print("새로운 $myName 유저가 입장했습니다~~");
    print("모두 환하게 반겨주세요");
  }

  List<String> getMyFollowers() {
    var followers = ['friend1', 'friend2', 'friend3'];
    return followers;
  }

  bool tryFollow() {
    return true;
  }

  List getMyFollower() {
    return ['friend1', 'friend2', 'friend3'];
  }

  String getMyNickname() {
    return "hyerim";
  }

  int example() {
    return 999;
  }

  void printWelcomeMsg() {
    print("새로운 유저가 입장했습니다");
    print("모두 환하게 반겨주세요");
  }

  int getMyAge() {
    return 999;
  }
}

//stateless widget
// - 스스로 상태가 없다
// - 스스로 한번 build하면 다시 빌드를 할 필요가 없다
// - 한번 ui를 그리면 수정할 필요가 없다
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void _handleOnChanged(String value) {
    print(value);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var textFieldWidget = MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Amazing Flutter'),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          leading: Icon(Icons.access_time),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.share),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_cart),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ], //trailing 같은 기능
          elevation: 0, //appbar 그림자 없애기
          centerTitle: false, //android는 기본이 타이틀 왼쪽
        ),
        body: TextField(
          cursorColor: Colors.green,
          decoration: InputDecoration(
            label: Text('이메일 입력'),
            labelStyle: TextStyle(color: Colors.black),
            hintText: 'example@gmail.com',
            fillColor: Colors.black12,
            filled: true, //색이 채워지는지 아닌지
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          // item을 무조건 2개 이상
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'shoppingcart'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {}, //필수
          backgroundColor: Colors.black,
          elevation: 0, //그림자 농도
          child: Icon(Icons.add),
          mini: true, //버튼을 작게 함
        ),
      ),
    );

    var eventHandler = MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Amazing Flutter'),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          leading: Icon(Icons.access_time),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.share),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_cart),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ], //trailing 같은 기능
          elevation: 0, //appbar 그림자 없애기
          centerTitle: false, //android는 기본이 타이틀 왼쪽
        ),
        body: TextField(
          onChanged: (value) {
            print("유저 입력값" + value);
          },
        ),
      ),
    );

    var dartFunctionPrac = MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Amazing Flutter'),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          leading: Icon(Icons.access_time),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.share),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_cart),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ], //trailing 같은 기능
          elevation: 0, //appbar 그림자 없애기
          centerTitle: false, //android는 기본이 타이틀 왼쪽
        ),
        body: TextField(
          onChanged: _handleOnChanged,
        ),
      ),
    );

    var buttonWidgetsPrac = MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Amazing Flutter'),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          leading: Icon(Icons.access_time),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.share),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_cart),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ], //trailing 같은 기능
          elevation: 0, //appbar 그림자 없애기
          centerTitle: false, //android는 기본이 타이틀 왼쪽
        ),
        body: DefaultTextStyle(
          // 전체 텍스트 스타일 적용
          style: TextStyle(fontSize: 32, color: Colors.black),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //텍스트가 버튼이 되었으면 좋겠다.
                TextButton(
                  onPressed: () {},
                  child: Text('안녕 나는 text button'),
                ),

                //확실히 강조하고 싶은 버튼이 되었으면 좋겠다
                ElevatedButton(onPressed: () {}, child: Text('HI')),

                //테두리가 나타나는 버튼이 되었으면 좋겠다.
                OutlinedButton(onPressed: () {}, child: Text('Hello')),

                Icon(Icons.abc_sharp),

                //아이콘에 위젯을 넣고 싶을때 사용
                //Icon 위젯과 다르게 Padding이 기본적이로 적용되어 있다. 48x48
                IconButton(
                  icon: Icon(Icons.abc_sharp),
                  onPressed: () {},
                ),

                //text나 일반 위젯이 이벤트를 가지려면
                //inkwell 위젯 : 잉크처럼 애니메이션이 퍼지는 효과
                InkWell(
                  onTap: () {},
                  child: Text('일반 텍스트'),
                ),

                //gestureDetector 위젯
                //inkwell보다 더 많은 제스쳐를 감지 가능
                GestureDetector(
                  child: Text('일반텍스트 22'),
                  onTap: () {
                    print('Hello~~');
                  },
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
    );

    print('나 그림그리고 있다');
    var statelessAndStatefulWidget = MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Amazing Flutter'),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          leading: Icon(Icons.access_time),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.share),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_cart),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ], //trailing 같은 기능
          elevation: 0, //appbar 그림자 없애기
          centerTitle: false, //android는 기본이 타이틀 왼쪽
        ),
        body: Center(
          child: Text('이것은 센터 밑의 텍스트'),
        ),
      ),
    );

    return statelessAndStatefulWidget;
  }
}

//stateful widget
//- 스스로 상태가 있다
// - 스스로 한번
class MyStatefulApp extends StatefulWidget {
  const MyStatefulApp({super.key});

  @override
  State<MyStatefulApp> createState() => _MyStatefulAppState();
}

class _MyStatefulAppState extends State<MyStatefulApp> {
  //처음 빌드 될때는 변수가 안녕
  String message = "반가워";
  int level = 1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var statefulWidgetPrac = MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            message = "반가워";
            //
            setState(() {});
          },
          child: Icon(
            Icons.change_circle,
          ),
        ),
        body: Center(
          child: Text(message),
        ),
      ),
    );

    var levelUpStatefulWidgetPrac = MaterialApp(
      home: Scaffold(
        body: Center(
          child: InkWell(
            onTap: () {
              level += 1;
              setState(() {});
            },
            child: Text('현재 $level 레벨입니다.'),
          ),
        ),
      ),
    );

    return levelUpStatefulWidgetPrac;
  }
}
