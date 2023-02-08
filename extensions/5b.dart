//diffrent source file
class foo {
  int _someVar = 0;
  String _str = 'hello world';
}

extension boo on foo {
  int get getSomeVar => _someVar;
  String get string => _str;
}
