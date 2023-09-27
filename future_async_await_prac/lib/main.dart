// Future: 데이터타입
// async: 함수 본문앞에 선언. 이 함수는 비동기 함수이다.
// 코드 내부에 await이 하나라도 들어가있으면 반드시 써줘야함.
// await: 따라오는 future(비동기)를 기다린다. 동기처럼 사용하겠다.

await
대체로 로그인할 때 사용
계속 사용할 코드라면 await 사용
void main() async {
  print("trying to login..");
  // await은 뒤의 코드들이 실행되는 것을 기다리겠다는 뜻
  // 없으면 3초 딜레이 없이 바로 실행됨.
  await Future.delayed(Duration(seconds: 3));
  print("login success");
  print("welcome");
}

// Future.then
// 다음 실행해야할 코드들과 다르게 별도의 함수로 처리하고 싶은경우 .then 사용
// 한번 사용하고 말거면 then
void main() async {
  print("trying to login..");
  //
  Future.delayed(Duration(seconds: 3)).then((res) {
    print(res);
    print("login success");
  });

  print("login success");
  print("welcome");
}
