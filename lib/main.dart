import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:my_view_app_001/app/app_module.dart';
import 'package:my_view_app_001/app/app_widget.dart';

void main() {
  runApp(Phoenix(
    child: ModularApp(
      module: AppModule(), 
      child: const AppWidget())));
}

