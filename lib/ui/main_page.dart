import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_demo/bloc/user_bloc.dart';
import 'package:mvvm_demo/model/user.dart';
import 'package:mvvm_demo/ui/user_card.dart';

class MainPage extends StatelessWidget {
  final Random random = Random();

  @override
  Widget build(BuildContext context) {
    UserBloc bloc = BlocProvider.of<UserBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo MVVM"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              color:
              Colors.blueGrey;
              bloc.add(random.nextInt(10) + 1);
            },
            child: Text("Pick Random User"),
          ),
          BlocBuilder<UserBloc, User>(
              builder: (context, user) =>
                  (user is UninitializedUser) ? Container() : UserCard(user)),
        ],
      ),
    );
  }
}
