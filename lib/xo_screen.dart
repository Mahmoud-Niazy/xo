import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo/states.dart';

import 'cubit.dart';

class XoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<XoCubit,XoStates>(
      listener: (context,state){
        if( state is WinState){
          AwesomeDialog(
            context: context,
            animType: AnimType.scale,
            dialogType: DialogType.success,
            body: Center(child: Text(
              '${XoCubit.get(context).count %2 ==0 ? 'O' : 'X'}   Win',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
              ),
            ),),
            // title: 'This is Ignored',
            // desc:   'This is also Ignored',
            // btnOkOnPress: () {},
          )..show().then((value) {
            XoCubit.get(context).count=0;
          });
        }
        print(state);
      },
      builder: (context,state){
        var cubit = XoCubit.get(context);
        return Scaffold(
          appBar: AppBar(),
          body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: <Widget>[
              InkWell(
                onTap: (){
                  if(cubit.t1 != 'X' && cubit.t1 != 'O')
                  cubit.Play1();
                  cubit.CheckWinner();
                },
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "${cubit.t1}",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  if(cubit.t2 != 'X' && cubit.t2 != 'O')
                    cubit.Play2();
                  cubit.CheckWinner();

                },
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      cubit.t2,
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  if(cubit.t3 != 'X' && cubit.t3 != 'O')
                    cubit.Play3();
                  cubit.CheckWinner();

                },
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      cubit.t3,
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  if(cubit.t4 != 'X' && cubit.t4 != 'O')
                    cubit.Play4();
                  cubit.CheckWinner();


                },
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      cubit.t4,
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  if(cubit.t5 != 'X' && cubit.t5 != 'O')
                    cubit.Play5();
                  cubit.CheckWinner();

                },
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      cubit.t5,
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  if(cubit.t6 != 'X' && cubit.t6 != 'O')
                    cubit.Play6();
                  cubit.CheckWinner();

                },
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      cubit.t6,
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  if(cubit.t7 != 'X' && cubit.t7 != 'O')
                    cubit.Play7();
                  cubit.CheckWinner();

                },
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      cubit.t7,
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  if(cubit.t8 != 'X' && cubit.t8 != 'O')
                    cubit.Play8();
                  cubit.CheckWinner();

                },
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      cubit.t8,
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  if(cubit.t9 != 'X' && cubit.t9 != 'O')
                    cubit.Play9();
                  cubit.CheckWinner();
                },
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      cubit.t9,
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
