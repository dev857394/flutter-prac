import 'package:day3/ContactTile.dart';
import 'package:day3/DrinkTile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // MaterialApp을 최상단 위젯으로 감싸면 위젯에서 기본적인 Material에 필요한 디자인 요소가 어플 전체에 적용된다.
    // materialapp에 따라다니는 scaffold는 건물(앱)을 짓기 위해서 땅(materialapp)과 철근(scaffold)이 필요하듯이 꼭 필수로 작성해야하는 위젯이다.
    var materialAppAndScaffoldWidget = const MaterialApp(
      home: Scaffold(
        body: SafeArea(child: Icon(Icons.abc)),
      ),
    );

    var appBarWidget = MaterialApp(
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
        body: Text('flutter is the best'),
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

    var bottomNavigationDesign = MaterialApp(
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
        body: Text('flutter is the best'),
        bottomNavigationBar: BottomNavigationBar(
          // item을 무조건 2개 이상
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'shoppingcart'),
          ],
        ),
      ),
    );

    var customWidget = MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Text('data'),
      ),
    );

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
              imgUrl: 'https://picsum.photos/25/25',
            ),
            ContactTile(
              name: 'hyerim',
              phone: "010-2222-2222",
              imgUrl: 'https://picsum.photos/100/100',
            ),
            ContactTile(
              name: 'hyerim2',
              phone: "010-2222-2222",
              imgUrl: 'https://picsum.photos/30/30',
            ),
            ContactTile(
              name: 'hyerim33',
              phone: "010-2222-2222",
              imgUrl: 'https://picsum.photos/15/15',
            ),
            ContactTile(
              name: 'teddy',
              phone: "010-2222-2222",
              imgUrl: 'https://picsum.photos/45/45',
            ),
            ContactTile(
              name: 'teddy',
              phone: "010-2222-2222",
              imgUrl: 'https://picsum.photos/50/50',
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

    var starbucksApp = MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 0, 5),
              child: Text(
                'NEW',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            DrinkTile(
              menuName: '골든 미모사 그린 티',
              menuEnglishName: 'Golden Mimosa Green Tea',
              price: '6100',
              imgUrl: 'https://picsum.photos/25/25',
            ),
            DrinkTile(
              menuName: '블랙 햅쌀 고봉 라떼',
              menuEnglishName: 'Black Rice Latte',
              price: '6300',
              imgUrl: 'https://picsum.photos/25/25',
            ),
            DrinkTile(
              menuName: '아이스 블랙 햅쌀 고봉 라떼',
              menuEnglishName: 'Iced Black Rice Latte',
              price: '6300',
              imgUrl: 'https://picsum.photos/25/25',
            ),
            DrinkTile(
              menuName: '스타벅스 튜메릭 라떼',
              menuEnglishName: 'Starbucks Turmeric Latte',
              price: '6300',
              imgUrl: 'https://picsum.photos/25/25',
            ),
            DrinkTile(
              menuName: '아이스 스타벅스 튜메릭 라떼',
              menuEnglishName: 'Iced Starbucks Turmeric Latte',
              price: '6300',
              imgUrl: 'https://picsum.photos/25/25',
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType
              .fixed, //bottomnavigationbar 3개 이상이면 모양이 바뀌는데 이것을 고정시켜야함.
          currentIndex: 2, //현재 위치한 하단바 메뉴 아이콘 선택 임시.
          fixedColor: Colors.green, //선택한 아이콘 색
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Pay',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.coffee),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'Other',
            ),
          ],
        ),
        bottomSheet: Container(
          height: 64,
          color: Colors.black87,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16), //양옆 수평 띄우기
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, //children 위젯들 사이 띄우기
              children: [
                Text(
                  '주문할 매장을 선택해 주세요.',
                  style: TextStyle(color: Colors.white),
                ),
                // Spacer(), //띄우기, 외에 Expanded 사용가능
                Icon(Icons.expand_more, color: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
    return starbucksApp;
  }
}
