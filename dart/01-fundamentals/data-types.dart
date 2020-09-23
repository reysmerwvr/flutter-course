void main() {

  // Numbers
  int employees = 10;
  double pi = 3.141592;
  print("$employees - $pi");

  // Strings
  String name = "To'ny";
  print(name);
  print(name[0]);
  print(name[name.length - 1]);

  // Booleans
  bool activate = true;
  print(activate);
  if (!activate) {
    print("On");
  } else {
    print("Off");
  }
  // List
  List<int> numbers = [1, 2, 3, 4, 5];
  print(numbers);

  numbers.add(6);
  print(numbers);

  // Fixed List
  List moreNums = List(10);
  print(moreNums);
  // moreNums.add(1); // Error
  moreNums[0] = 1;
  print(moreNums);

  // Map
  Map<String, dynamic> person = {
    'name': 'Charles',
    'age': 28,
    'marital_status': 'married'
  };

  print(person['name']);
  print(person['age']);

  person.addAll({ 'last_name': 'Doe' });

  print(person);
  print(person['last_name']);
}