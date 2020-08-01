import 'dart:collection';

class StackX<T> {
  final _list = ListQueue<T>();

  bool get isEmpty => _list.isEmpty;

  bool get isNotEmpty => _list.isNotEmpty;

  push(T element) => _list.addLast(element);

  bool contains(T element) => _list.contains(element);

  T pop() {
    final T element = _list.last;
    _list.removeLast();
    return element;
  }

  top() => _list.last;

  List<T> addAll(Iterable elements) {
    _list.addAll(elements);
    return _list.toList();
  }
}
