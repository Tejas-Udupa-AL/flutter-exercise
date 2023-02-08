class question_f {
  Stream<int> _countStream(int max) async* {
    await Future.delayed(Duration(seconds: 10), () {
      print('hello');
    });
    for (int i = 1; i <= max; i++) {
      yield i;
    }
  }

  Future<void> _callBack(Stream<int> stream) async {
    var sum = 0;
    await for (final value in stream) {
      sum += value;
    }
    print(sum);
  }

  void _exec() async {
    var cnt = _countStream(10);
    _callBack(cnt);
  }

  void f_executor() {
    print('f question');
    _exec();
  }
}
