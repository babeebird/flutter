import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // home 부분이 화면에 보이는 영역
      home: Scaffold(
        /* 
        Scaffold 위젯은 페이지의 특정 영역에 위젯을 쉽게 배치할 수 있도록 틀을 잡아주는 역할
        appBar : 상단 바
        body : 화면 중앙 큰 면적
        bottomNavigationBar : 하단 바
        floatingActionButton : 우측 하단 버튼
        */
        appBar: AppBar(
          centerTitle: true, // 중앙정렬 설정. Android AppBar의 title은 기본적으로 왼쪽 정렬
          title: Text(
            "댕댕 월드",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),

        // Padding > Column > TextFiled > TextFiled > ElevatedButton

        body: SingleChildScrollView(
          //페이지 스크롤뷰 설정
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            /*
            EdgeInsets는 child 위젯들 사이의 간격을 조정
            EdgeInsets.all(8.0) : 전방위(top, bottom, left, right) 모두 동일하게 적용
            EdgeInsets.only(left: 8, right: 8,) : 특정 방위 각각 적용
            EdgeInsets.symmetric(vertical: 8, horizontal: 8,) : 위아래 또는 좌우 대칭으로 적용
            */
            child: Column(
              // Column위젯은 세로 방향으로 위젯들을 나열할 때 사용
              children: [
                // 자식 위젯들
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2019/08/07/14/11/dog-4390885_1280.jpg", //pixar 무료 이미지
                    width: 200,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "이메일",
                  ),
                ),
                TextField(
                  obscureText: true, //텍스트 암호화
                  decoration: InputDecoration(
                    labelText: "비밀번호",
                  ),
                ),
                /*
                Button위젯으로 클릭 이벤트를 받음
                ElevatedButton : 위로 올라와 있는 버튼
                TextButton : 텍스트 버튼
                IconButton : 아이콘 버튼
                
                버튼 속성 2가지
                onPressed : 클릭 이벤트 담당. 인자에는 익명함수를 넣어, 버튼을 눌렀을 경우의 액션 로직을 설정
                child : 버튼 속 위젯
                */
                Container(
                  // Container위젯은 Box 형태의 기본적인 위젯으로 다방면 활용 가능
                  // 버튼 자체에는 width 속성이 없어, 부모 위젯 크기를 이용해 조절 (Wrap with Container)
                  width: double.infinity, // 컨테이너 폭이 부모를 가득 채움 (버튼 크기 최대로 늘어남)
                  margin: EdgeInsets.only(top: 24), //컨테이너 바깥 영역 여백설정
                  //height: 200, //높이
                  //color: Colors.amber, // 박스 색상

                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("로그인"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
