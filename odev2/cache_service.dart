class CacheServices<T> {
  //T => tipi
  void cache(String key, T obj) {
    print("$obj $key değeri ile cachelendi.");
  }

  T getFromCache(String key) {
    throw Exception();
  }
}
