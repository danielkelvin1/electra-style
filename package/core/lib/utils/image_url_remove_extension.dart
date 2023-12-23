extension ImageUrlRemoveExtension on String {
  String imageUrlRemovePublic() {
    final splitString = split('/');
    splitString.removeAt(0);

    return splitString.join('/');
  }
}
