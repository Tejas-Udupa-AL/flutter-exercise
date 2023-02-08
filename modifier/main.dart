final a = 10;

class foo {
  static method() {
    print('single instance of this is created');
  }

  void nonStaticMethod() {
    print('This is non static method');
  }
}

void main() {
  //Final once set cant be changed
  //a = 10;
  //var: automatic type
  var a = foo();
  a.nonStaticMethod();
  //Generics
  Map<String, String> m = {'name': 'Tej', 'Id': '8'};
  print('Map: ${m}');
}
