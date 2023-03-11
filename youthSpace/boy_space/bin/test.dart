import 'package:boy_space/scraping.dart' as scraping;

/*void main(List<String> arguments) async {
  print(await scraping.initiate());
}*/
void main() async {
  String url = "https://eunjin3786.pythonanywhere.com/question/all/";
  var response = await http.get(url);
  var statusCode = response.statusCode;
  var responseHeaders = response.headers;
  var responseBody = response.body;

  print("statusCode: ${statusCode}");
  print("responseHeaders: ${responseHeaders}");
  print("responseBody: ${responseBody}");

  //runApp(MyApp());
}
