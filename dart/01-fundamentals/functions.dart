void main() {
  String message = greeting(text: "Hello", name: "George");
  print(message);
}


String greeting({ String text, String name }) {
  // print("Hello");
  return "$text $name";
}

String greeting2({ String text, String name }) => "$text $name";