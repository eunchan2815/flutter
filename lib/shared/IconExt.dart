import 'package:flutter/material.dart';

enum AppIcon {
  home(path: 'assets/icons/home.png'),
  bell(path: 'assets/icons/bell.png'),
  boomMark(path: 'assets/icons/bookmark.png'),
  profile(path: 'assets/icons/person.png'),
  search(path: 'assets/icons/search.png'),
  logout(path: 'assets/icons/LogOut.png'),
  chevron_Right(path: 'assets/icons/chevronRight.png'),
  chevron_Left(path: 'assets/icons/chevronLeft.png'),
  shoppingCart(path: 'assets/icons/cart.png');

  final String path;

  const AppIcon({required this.path});
}

extension AppIconExtension on AppIcon {
  Image toIcon({
    bool fill = false,
    double? width,
    double? height,
    BoxFit? fit,
    Color? color,
  }) {
    final String actualPath = fill ? _filledPathIfExists() ?? path : path;

    return Image.asset(
      actualPath,
      width: width,
      height: height,
      fit: fit,
      color: color,
    );
  }

  String? _filledPathIfExists() {
    if (!path.endsWith(".png")) return null;

    final filledPath = path.replaceFirst(".png", ".fill.png");
    return filledPath;
  }
}
