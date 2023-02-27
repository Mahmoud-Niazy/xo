import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo/cubit.dart';
import 'package:xo/2_players_screen.dart';

import '1_player_screen.dart';
import 'home_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> XoCubit()),
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}