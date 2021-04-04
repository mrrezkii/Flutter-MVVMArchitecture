import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_demo/bloc/user_bloc.dart';
import 'package:mvvm_demo/model/user.dart';
import 'package:mvvm_demo/ui/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => UserBloc(UninitializedUser()),
        child: MainPage(),
      ),
    );
  }
}
