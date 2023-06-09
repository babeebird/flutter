import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xml/xml.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, String>> _spaces = [];

  void youth_space() async {
    /*
    var result = await Dio().get(
      "https://www.youthcenter.go.kr/opi/wantedSpace.do?pageIndex=1&display=5&pageType=1&srchAreaCpvn=003002001&openApiVlak=인증키번호",
    );
    */
    var url = 'https://www.youthcenter.go.kr/opi/wantedSpace.do';
    var result = await Dio().get(
      url,
      queryParameters: {
        'openApiVlak': "7a49a956d6d58ce8850d74f8", //인증키
        'display': 7, //출력건수(기본 10 ~ 최대 100)
        'pageIndex': 1, //조회페이지(기본 1)
        'pageType': 1, //화면타입(목록화면-1, 상세화면-2)
        //'srchSpcId' : '' , //공간ID(상세화면 조회 시 필수)
        //'srchSpnm' : '' , //공간명
        'srchAreaCpvn': '003002001', //지역코드(시,도) - 홈페이지 참고
        //'srchAreaSggn' : '', //지역코드(시,군,구) - 홈페이지 참고
      },
    );

    final spaceXml = result.data.toString();

    final document = XmlDocument.parse(spaceXml); //read XML
    final spaces = document.findAllElements('space');

    final result1 = spaces.map((node) {
      final spcName = node.findElements('spcName').single.text;
      final address = node.findElements('address').single.text;
      final spcTime = node.findElements('spcTime').single.text;
      final homepage = node.findElements('homepage').single.text;
      final telNo = node.findElements('telNo').single.text;
      final spcCost = node.findElements('spcCost').single.text;
      final foodYn = node.findElements('foodYn').single.text;

      return {
        'spcName': spcName,
        'address': address,
        'spcTime': spcTime,
        'homepage': homepage,
        'telNo': telNo,
        'spcCost': spcCost,
        'foodYn': foodYn,
      };
    }).toList();

    setState(() {
      _spaces = result1;
    });
  }

  @override
  void initState() {
    super.initState();
    youth_space();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
        ),
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Icon(CupertinoIcons.search),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "청년공간 이름을 입력하세요.",
                ),
              )
            ],
          ),
          ListView.builder(
            itemCount: _spaces.length,
            itemBuilder: (BuildContext context, int index) {
              final space = _spaces[index];
              return ListTile(
                title: Text(space['spcName']!), //Text(space['address']!),
                subtitle: Text(space['spcTime']!), //Text(space['homepage']!),
                trailing: Text(space['spcCost']!),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.arrow_left_circle_fill),
          label: '이전페이지',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.arrow_right_circle_fill),
          label: '다음페이지',
        ),
      ]),
    );
  }
}
