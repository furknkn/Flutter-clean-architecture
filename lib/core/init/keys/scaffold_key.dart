import 'package:flutter/material.dart';

class ScaffoldKey {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  static ScaffoldKey instance = ScaffoldKey._init();
  ScaffoldKey._init();
}
