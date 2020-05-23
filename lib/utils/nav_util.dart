import 'package:flutter/material.dart';

Future push(BuildContext context, Widget page, {replace: false}) {
  if (replace) {
    return Navigator.pushReplacement(context, MaterialPageRoute(builder: (
      BuildContext context,
    ) {
      return page;
    }));
  }
  return Navigator.push(context, MaterialPageRoute(builder: (
    BuildContext context,
  ) {
    return page;
  }));
}

void pop(BuildContext context) {
  Navigator.pop(context);
}
