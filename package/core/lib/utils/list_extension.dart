extension ListExtension<T> on List<T> {
  List<R> mapIndex<R>(R Function(int index, T value) callback) {
    return List.generate(length, (index) => callback(index, this[index]));
  }
}
