import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo/states.dart';

import 'cubit.dart';

class XoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<XoCubit, XoStates>(
      listener: (context, state) {
        if (state is WinState) {
          AwesomeDialog(
            context: context,
            animType: AnimType.scale,
            dialogType: DialogType.success,
            body: Center(
              child: Text(
                '${XoCubit.get(context).count % 2 == 0 ? 'O' : 'X'}   Win',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                ),
              ),
            ),
            // title: 'This is Ignored',
            // desc:   'This is also Ignored',
            // btnOkOnPress: () {},
          )..show().then((value) {
              XoCubit.get(context).count = 0;
            });
        }
        print(state);
      },
      builder: (context, state) {
        var cubit = XoCubit.get(context);
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.black,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      XoCubit.get(context).count=0;
                      XoCubit.get(context).t1='';
                      XoCubit.get(context).t2='';
                      XoCubit.get(context).t3='';
                      XoCubit.get(context).t4='';
                      XoCubit.get(context).t5='';
                      XoCubit.get(context).t6='';
                      XoCubit.get(context).t7='';
                      XoCubit.get(context).t8='';
                      XoCubit.get(context).t9='';
                    },
                    child: Text(
                      'Leave',
                      style:TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  height: MediaQuery.of(context).size.width,
                  width: double.infinity,
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          if (cubit.t1 != 'X' && cubit.t1 != 'O') {
                            cubit.Play1();
                            cubit.CheckWinner();
                            cubit.NoWinner();
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
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
                        onTap: () {
                          if (cubit.t2 != 'X' && cubit.t2 != 'O') {
                            cubit.Play2();
                            cubit.CheckWinner();
                            cubit.NoWinner();
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
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
                        onTap: () {
                          if (cubit.t3 != 'X' && cubit.t3 != 'O') {
                            cubit.Play3();
                            cubit.CheckWinner();
                            cubit.NoWinner();
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
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
                        onTap: () {
                          if (cubit.t4 != 'X' && cubit.t4 != 'O') {
                            cubit.Play4();
                            cubit.CheckWinner();
                            cubit.NoWinner();
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
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
                        onTap: () {
                          if (cubit.t5 != 'X' && cubit.t5 != 'O') {
                            cubit.Play5();
                            cubit.CheckWinner();
                            cubit.NoWinner();
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
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
                        onTap: () {
                          if (cubit.t6 != 'X' && cubit.t6 != 'O') {
                            cubit.Play6();
                            cubit.CheckWinner();
                            cubit.NoWinner();
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
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
                        onTap: () {
                          if (cubit.t7 != 'X' && cubit.t7 != 'O') {
                            cubit.Play7();
                            cubit.CheckWinner();
                            cubit.NoWinner();
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
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
                        onTap: () {
                          if (cubit.t8 != 'X' && cubit.t8 != 'O') {
                            cubit.Play8();
                            cubit.CheckWinner();
                            cubit.NoWinner();
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
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
                        onTap: () {
                          if (cubit.t9 != 'X' && cubit.t9 != 'O') {
                            cubit.Play9();
                            cubit.CheckWinner();
                            cubit.NoWinner();
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
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
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
