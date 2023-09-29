import 'package:halizaapp/constant/route_constants.dart';
import 'package:halizaapp/pages/AddExpenditurePage.dart';
import 'package:halizaapp/pages/AddIncomePage.dart';
import 'package:halizaapp/pages/DetailCashFlowPage.dart';
import 'package:halizaapp/pages/HomePage.dart';
import 'package:halizaapp/pages/LoginPage.dart';
import 'package:halizaapp/pages/SettingsPage.dart';
import 'package:halizaapp/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => UserProvider()),
  ], child: const MyApp()));
}

final routes = {
  loginRoute: (BuildContext context) => LoginPage(),
  homeRoute: (BuildContext context) => HomePage(),
  settingsRoute: (BuildContext context) => SettingsPage(),
  addExpenseRoute: (BuildContext context) => AddExpenditurePage(),
  addIncomeRoute: (BuildContext context) => AddIncomePage(),
  detailCashFlowRoute: (BuildContext context) => DetailCashFlowPage(),
};

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Halizan App",
      theme: ThemeData(primaryColor: Colors.deepPurple),
      routes: routes,
    );
  }
}
