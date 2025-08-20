import 'package:flutter/material.dart';
import 'package:vendoo/app_routes.dart';

void main() {
  runApp(const Vendoo());
}

class Vendoo extends StatelessWidget {
  const Vendoo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: AppRoutes.router);
  }
}
