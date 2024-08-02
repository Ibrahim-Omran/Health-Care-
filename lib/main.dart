import 'package:flutter/material.dart';
import 'package:health_care_app/core/di/dependency_injection.dart';
import 'package:health_care_app/core/routing/app_router.dart';
import 'doc_app.dart';

void main() {
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
// dart pub run build_runner build — delete-conflicting-outputs