class question_h {
  Stream<int> _countStream(int max) async* {
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

  void h_executor() {
    _exec();
  }
}
