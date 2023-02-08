import '5b.dart';

//Same source file
class boo {
  int _someVar = 0;
  String _str = 'hello world';
}

extension on boo {
  int get getVar => _someVar;
  String get getString => _str;
}

void main() {
  var a = foo();
  var b = boo();
  print(a.getSomeVar);
  print(a.string);
  print(b.getVar);
  print(b.getString);
}
