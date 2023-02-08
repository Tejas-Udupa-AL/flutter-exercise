class question_a {
  var globalScope = 10;
  void _exec() {
    var localScope = 1;
    print(globalScope);
    print(localScope);
  }

  void _exec2() {
    //print(localScope);
  }

  void a_executor() {
    _exec();
    _exec2();
  }
}
