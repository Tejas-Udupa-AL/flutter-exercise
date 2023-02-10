import 'periodic.dart';

class question_e {
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

  void _exec() {
    var cnt = _countStream(10);
    _callBack(cnt).then((value) => null);
    print('exec exited');
  }

  void e_executor() {
    print('e question');
    _exec();
  }
}
