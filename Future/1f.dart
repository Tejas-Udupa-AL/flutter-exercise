class question_f {
  Future<int> _futureMethod() {
    var delay = 5;
    return Future.delayed(Duration(seconds: delay), () {
      print('Delayed print f');
      return delay;
    });
  }

  Future<void> _thenMethod() async {
    _futureMethod().then((value) {
      print('Then keyword does opertaion after getting return value: $value');
    });
  }

  void _awaitMethod() async {
    var val = 0;
    val = await _futureMethod();
    print('waited for value from a method but can return value immidiatly: val=$val');
  }

  void f_executor() {
    print('Question f');
    _thenMethod();
    _awaitMethod();
  }
}
