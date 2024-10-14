//*-----(theme)
enum ThemeType {
  light,
  dark,
}

//*---------(loading status)
enum LoadingStatus {
  initial,
  loading,
  failure,
  success,
}

enum TextFormatType {
  alphabet,
  number,
}

enum PreferenceType {
  string,
  list,
}

enum BottomBarIndex {
  home(valueIndex: 0),
  favorites(valueIndex: 1),
  savedNews(valueIndex: 2);

  const BottomBarIndex({
    required this.valueIndex,
  });

  final int valueIndex;
}
