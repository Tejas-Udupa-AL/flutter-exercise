import 'dart:async';

class question_b {
  Stream<int> countStream(int max) async* {
    for (int i = 1; i <= max; i++) {
      yield i;
    }
  }

  void exec() async {
    int sum = 0;

    var mapped = await countStream(10).map((event) => 'Data $event');
    mapped.forEach(print);
    var skipped = await countStream(10).skip(4);
    skipped.forEach((element) {
      print('skipped $element');
    });
    await for (final value in countStream(10).skipWhile((element) => element < 4)) {
      sum += value;
    }
    print('skipeWhile: $sum');
    sum = 0;
    await for (final value in countStream(10).take(2)) {
      sum += value;
    }
    print('take: $sum');
    final customStream = countStream(10).where((event) => event > 3 && event <= 6);
    customStream.listen(print);
  }

  void b_executor() {
    exec();
  }
}
