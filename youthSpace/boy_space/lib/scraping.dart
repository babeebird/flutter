import 'dart:convert';
import "package:http/http.dart" as http;
import "package:html/parser.dart";
import "package:html/dom.dart";
import "dart:async";

Future initiate() async {
  var client = Client();
  Response response = await client
      .get('https://www.youthcenter.go.kr/youngSpc/youngSpcList.do' as Uri);
  // Use html parser and query selector
  var document = parse(response.body);
  List<Element> links = document.querySelectorAll('div.thumb');

  List<Map<String, dynamic>> linkMap = [];

  for (var link in links) {
    linkMap.add({
      'title': link.text,
      'href': link.attributes['href'],
    });
  }
}
