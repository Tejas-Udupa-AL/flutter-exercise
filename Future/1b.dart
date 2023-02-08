class question_b {
  Future<int> _futureMethod() {
    var delay = 5;
    return Future.delayed(Duration(seconds: delay), () {
      print('Delayed print b');
      return delay;
    });
  }

  void _futureMessage() {
    //Then: allows to execute commands based on return val of async method
    _futureMethod().then((value) {
      print('the value we received $value');
    });
  }

  void b_executor() {
    print('question b');
    _futureMessage();
  }
}
