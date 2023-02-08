class question_g {
  Future<int> _futureMethod() {
    var delay = 5;
    return Future.delayed(Duration(seconds: delay), () {
      print('Delayed print g');
      return delay;
    });
  }

  Future<String> _cathcWhileAwait() async {
    late String val;
    try {
      //await puts it into queue for execution and then collects return value which can be used for further opertions after completion of the async method
      await _futureMethod().then((value) {
        val = 'the value is $value';
      });
    } catch (error) {
      val = 'error';
    }
    return val;
  }

  void g_executor() {
    print('Question g');
    _cathcWhileAwait();
  }
}
