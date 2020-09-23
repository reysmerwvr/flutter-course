
// void main() {
//   print("Ready");

//   httpGet("https://api.meli.com").then((data) {
//     print(data);
//   }).catchError((error) {
//     print(error);
//   });

//   print("Done");
// }

void main() async {
  print("Ready");

  String data = await httpGet("https://api.meli.com");

  print(data);

  print("Done");
}

Future<String> httpGet(String ulr) {
  return Future.delayed(new Duration(seconds: 3), () {
    return "Hello World";
  });
}