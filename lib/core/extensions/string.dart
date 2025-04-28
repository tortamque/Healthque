extension StringExtension on String {
  String get titleCase => split(' ').map((word) => word[0].toUpperCase() + word.substring(1)).join(' ');
  String get capitalizeFirstofEach => split(' ').map((word) => word[0].toUpperCase() + word.substring(1)).join(' ');
}
