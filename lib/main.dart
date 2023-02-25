import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo/cubit.dart';
import 'package:xo/xo_screen.dart';

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
        home: XoScreen(),
      ),
    );
  }
}