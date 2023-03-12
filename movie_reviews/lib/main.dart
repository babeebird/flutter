import 'package:flutter/material.dart';

void main() {
  // main()은 플러터 내장함수로, 앱 최초 실행 시 동작
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // MyApp 위젯은 StatelessWidget을 상속
  // StatelessWidget의 하위에 있는 것은 모두 immutable, final 으로 변경 불가능
  const MyApp({Key? key}) : super(key: key);
  // MayApp 생성자의 인자인 key는 : 상속해준 클래스의 key를 value로 가짐

  @override //상속받은 클래스(StatelessWidget)의 메서드(Widget build()) 재정의하겠음
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp위젯은 Material Design을 사용
      debugShowCheckedModeBanner: false, //디버그 배너 표시하지 않도록 설정
      home: HomePage(), //홈페이지(젤 먼저 보이는 페이지) 보여주기
      //theme:
      //title:
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 영화 제목, 사진 데이터
    List<Map<String, dynamic>> dataList = [
      {
        "category": "더 퍼스트 슬램덩크",
        "imgUrl":
            "https://cdn.pixabay.com/photo/2013/05/02/21/23/basketball-108622_960_720.jpg",
      },
      {
        "category": "더 글로리",
        "imgUrl":
            "https://cdn.pixabay.com/photo/2013/08/20/15/47/poppies-174276_960_720.jpg",
      },
      {
        "category": "에브리씽 에브리웨어\n올앳원스",
        "imgUrl":
            "https://movie-phinf.pstatic.net/20230217_188/1676599847794aO7NN_JPEG/movie_image.jpg?type=m203_290_2",
      },
      {"category": "마녀2", "imgUrl": "https://i.ibb.co/CKMrv91/The-Witch.jpg"},
    ];

    // 화면에 보이는 영역
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // 그림자 정도 설정
        backgroundColor: Colors.white,
        centerTitle: false,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Movie Reviews",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          // 오른쪽 상단
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person_outline),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              // 텍스트 입력창
              decoration: InputDecoration(
                hintText: "영화 제목을 입력해주세요.",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          Divider(
            height: 1,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: dataList.length,
                  itemBuilder: (context, index) {
                    String category = dataList[index]['category'];
                    String imgUrl = dataList[index]['imgUrl'];

                    return Card(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.network(
                            imgUrl,
                            width: double.infinity, // 폭 전체 채우기
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            // 이미지 위에 반투명검은바탕 씌우기 (그림자효과)
                            width: double.infinity,
                            height: 200,
                            color: Colors.black.withOpacity(0.5),
                          ),
                          Text(
                            category,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                            ),
                          ),
                        ],
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
