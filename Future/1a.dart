class question_a {
  final Future<String> _asyncData = Future<String>.delayed(
    const Duration(seconds: 2),
    () => 'Async data a',
  );

  Future<int> _futureMethod() {
    var delay = 5;
    return Future.delayed(Duration(seconds: delay), () {
      print('Delayed print $delay secs');
      return delay;
    });
  }

//Future with async keyword which delays return of value until the value to be returned is avaliable
  Future<String> _futureAsync() async {
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

  void a_executor() {
    print('question a');
    _futureAsync();
  }
}
