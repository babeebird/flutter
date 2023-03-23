import 'package:change_screen/screens/second_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('첫번째 화면이에요!'),
            /*
            Button 종류
            TextButton : 텍스트로만 구성된 버튼
            OutlineButton : 테두리 둘러진 버튼
            ElevatedButton : 배경색 들어간 두드러진 버튼
            ToggleButtons : 그룹 중 하나 선택할 때 사용하는 버튼
            IconButton : 아이콘이로 이뤄진 버튼으로 단일 항목을 선택, 해제할 때 사용
             */
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  // Navigator.of(context) : 현재 위젯인 Scaffold 화면에서 이동하겠다.
                  MaterialPageRoute(
                    // Navigator가 이동할 경로 지정
                    builder: (BuildContext context) => SecondScreen(
                      screenData: '첫번째 화면에서 온 데이터지롱~',
                    ),
                  ),
                );
              },
              child: Text('두번째 화면으로 넘어가기'),
            )
          ],
        ),
      ),
    );
  }
}
