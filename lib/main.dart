import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'core/routes/router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Labala',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: ExtendedNavigator.builder<RViews>(
        router: RViews(),
        initialRoute: Routes.vLogin,
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Labala',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: VDashboard(),
//     );
//   }
// }
