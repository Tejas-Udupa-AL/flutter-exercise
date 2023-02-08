class periodic {
  final Stream myStream = Stream.periodic(const Duration(seconds: 2), (int count) {
    return count;
  });
}
