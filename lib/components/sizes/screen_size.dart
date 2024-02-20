import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

double resWidth(BuildContext context, double baseWidth) {
  return MediaQuery.of(context).size.width / 1366 * baseWidth;
}

double resHeight(BuildContext context, double baseHeight) {
  return MediaQuery.of(context).size.height / 1024 * baseHeight;
}

double resFont(BuildContext context, double baseFontSize) {
  return MediaQuery.of(context).size.width / 1366 * baseFontSize;
}

