// import 'package:flutter/material.dart';
//
// class AutoPlayScreen extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }
//

























//////////////////////////////////////////////////////////////////////////////

// import 'dart:math';
//
// import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:xo/states.dart';
//
// import 'cubit.dart';
//
// class AutoPlayXoScreen extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return BlocConsumer<XoCubit,XoStates>(
//       listener: (context,state){
//         if( state is WinState){
//           AwesomeDialog(
//             context: context,
//             animType: AnimType.scale,
//             dialogType: DialogType.success,
//             body: Center(child: Text(
//               '${XoCubit.get(context).count %2 ==0 ? 'O' : 'X'}   Win',
//               style: TextStyle(
//                 fontSize: 30,
//                 color: Colors.blue,
//               ),
//             ),),
//             // title: 'This is Ignored',
//             // desc:   'This is also Ignored',
//             // btnOkOnPress: () {},
//           )..show().then((value) {
//             XoCubit.get(context).count=0;
//           });
//         }
//         print(state);
//       },
//       builder: (context,state){
//         var cubit = XoCubit.get(context);
//
//         List autoPlay =[
//           cubit.t1,
//           cubit.t2,
//           cubit.t3,
//           cubit.t4,
//           cubit.t5,
//           cubit.t6,
//           cubit.t7,
//           cubit.t8,
//           cubit.t9,
//         ];
//         List autoPlay2 =[
//           cubit.Play1,
//           cubit.Play2,
//           cubit.Play3,
//           cubit.Play4,
//           cubit.Play5,
//           cubit.Play6,
//           cubit.Play7,
//           cubit.Play8,
//           cubit.Play9,
//         ];
//
//
//         // Auto(){
//         //   for(var i =Random().nextInt(autoPlay.length-1) ; i< autoPlay.length ; i++){
//         //     if(autoPlay[i] == ''){
//         //       autoPlay2[i]();
//         //       break;
//         //     }
//         //     else{
//         //       continue;
//         //     }
//         //   }
//         // }
//
//         return Scaffold(
//           appBar: AppBar(),
//           body: GridView.count(
//             primary: false,
//             padding: const EdgeInsets.all(20),
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//             crossAxisCount: 3,
//             children: <Widget>[
//               InkWell(
//                 onTap: (){
//                   if(cubit.t1 != 'X' && cubit.t1 != 'O') {
//                     // autoPlay.remove(cubit.Play1);
//                     cubit.Play1();
//                     cubit.CheckWinner();
//                     // Auto();
//                      // var x= i;
//                     // if(state is ! WinState)
//                     // autoPlay[i]();
//                     print(autoPlay);
//                   }
//                 },
//                 child: Container(
//                   color: Colors.blue,
//                   child: Center(
//                     child: Text(
//                       "${cubit.t1}",
//                       style: TextStyle(
//                         fontSize: 50,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               InkWell(
//                 onTap: (){
//                   if(cubit.t2 != 'X' && cubit.t2 != 'O'){
//                     autoPlay.remove(cubit.Play2);
//                     cubit.Play2();
//                   cubit.CheckWinner();
//                     // Auto();
//
//
//                   }
//                 },
//                 child: Container(
//                   color: Colors.blue,
//                   child: Center(
//                     child: Text(
//                       cubit.t2,
//                       style: TextStyle(
//                         fontSize: 50,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               InkWell(
//                 onTap: (){
//                   if(cubit.t3 != 'X' && cubit.t3 != 'O'){
//                     autoPlay.remove(cubit.Play3);
//                     cubit.Play3();
//                   cubit.CheckWinner();
//                     // Auto();
//
//                   }
//                 },
//                 child: Container(
//                   color: Colors.blue,
//                   child: Center(
//                     child: Text(
//                       cubit.t3,
//                       style: TextStyle(
//                         fontSize: 50,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               InkWell(
//                 onTap: (){
//                   if(cubit.t4 != 'X' && cubit.t4 != 'O'){
//                     autoPlay.remove(cubit.Play4);
//                     cubit.Play4();
//                   cubit.CheckWinner();
//                     // Auto();
//
//                   }
//                 },
//                 child: Container(
//                   color: Colors.blue,
//                   child: Center(
//                     child: Text(
//                       cubit.t4,
//                       style: TextStyle(
//                         fontSize: 50,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               InkWell(
//                 onTap: (){
//                   if(cubit.t5 != 'X' && cubit.t5 != 'O'){
//                     autoPlay.remove(cubit.Play5);
//                     cubit.Play5();
//                   cubit.CheckWinner();
//                     // Auto();
//
//                   }
//                 },
//                 child: Container(
//                   color: Colors.blue,
//                   child: Center(
//                     child: Text(
//                       cubit.t5,
//                       style: TextStyle(
//                         fontSize: 50,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               InkWell(
//                 onTap: (){
//                   if(cubit.t6 != 'X' && cubit.t6 != 'O'){
//                     autoPlay.remove(cubit.Play6);
//                     cubit.Play6();
//                   cubit.CheckWinner();
//                     // Auto();
//
//                   }
//                 },
//                 child: Container(
//                   color: Colors.blue,
//                   child: Center(
//                     child: Text(
//                       cubit.t6,
//                       style: TextStyle(
//                         fontSize: 50,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               InkWell(
//                 onTap: (){
//                   if(cubit.t7 != 'X' && cubit.t7 != 'O'){
//                     autoPlay.remove(cubit.Play7);
//                     cubit.Play7();
//                   cubit.CheckWinner();
//                     // Auto();
//
//                   }
//                 },
//                 child: Container(
//                   color: Colors.blue,
//                   child: Center(
//                     child: Text(
//                       cubit.t7,
//                       style: TextStyle(
//                         fontSize: 50,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               InkWell(
//                 onTap: (){
//                   if(cubit.t8 != 'X' && cubit.t8 != 'O'){
//                     autoPlay.remove(cubit.Play8);
//                     cubit.Play8();
//                   cubit.CheckWinner();
//                     // Auto();
//
//                   }
//                 },
//                 child: Container(
//                   color: Colors.blue,
//                   child: Center(
//                     child: Text(
//                       cubit.t8,
//                       style: TextStyle(
//                         fontSize: 50,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               InkWell(
//                 onTap: (){
//                   if(cubit.t9 != 'X' && cubit.t9 != 'O'){
//                     autoPlay.remove(cubit.Play9);
//                     cubit.Play9();
//                   cubit.CheckWinner();
//                     // Auto();
//
//                   }
//                 },
//                 child: Container(
//                   color: Colors.blue,
//                   child: Center(
//                     child: Text(
//                       cubit.t9,
//                       style: TextStyle(
//                         fontSize: 50,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
//
//   // Auto(int x,List y){
//   //   y[x];
//   //   y.removeAt(x);
//   // }
// }

///////////////////////////////////////////////////////////////////////

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo/states.dart';

import 'cubit.dart';

class AutoPlayXoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<XoCubit,XoStates>(
      listener: (context,state){
        print(state);
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
            // XoCubit.get(context).t1='';
            // XoCubit.get(context).t2='';
            // XoCubit.get(context).t3='';
            // XoCubit.get(context).t4='';
            // XoCubit.get(context).t5='';
            // XoCubit.get(context).t6='';
            // XoCubit.get(context).t7='';
            // XoCubit.get(context).t8='';
            // XoCubit.get(context).t9='';
          });
        }
        if(state is NoWinnerState){
          AwesomeDialog(
            context: context,
            animType: AnimType.scale,
            dialogType: DialogType.success,
            body: Center(child: Text(
              'No winner',
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
            // XoCubit.get(context).t1='';
            // XoCubit.get(context).t2='';
            // XoCubit.get(context).t3='';
            // XoCubit.get(context).t4='';
            // XoCubit.get(context).t5='';
            // XoCubit.get(context).t6='';
            // XoCubit.get(context).t7='';
            // XoCubit.get(context).t8='';
            // XoCubit.get(context).t9='';
          });
        }
        print(state);
      },
      builder: (context,state){
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
                        onTap: (){
                          if(cubit.t1 != 'X' && cubit.t1 != 'O') {
                            cubit.Play1();
                            cubit.CheckWinner() == 1
                                ? cubit.CheckWinner()
                                : cubit.AutoPlay();
                            cubit.CheckWinner();
                            cubit.NoWinner();
                          }
                          // if(state is! WinState) {
                          //   cubit.AutoPlay();
                          // }
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
                        onTap: (){
                          if(cubit.t2 != 'X' && cubit.t2 != 'O') {
                            cubit.Play2();
                            cubit.CheckWinner() == 1
                                ? cubit.CheckWinner()
                                : cubit.AutoPlay();
                            cubit.CheckWinner();
                            cubit.NoWinner();
                          }
                          // if(state is! WinState) {
                          //   cubit.AutoPlay();
                          // }
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
                        onTap: (){
                          if(cubit.t3 != 'X' && cubit.t3 != 'O') {
                            cubit.Play3();
                            cubit.CheckWinner() == 1
                                ? cubit.CheckWinner()
                                : cubit.AutoPlay();
                            cubit.CheckWinner();
                            cubit.NoWinner();
                          }

                          // if(state is! WinState) {
                          //   cubit.AutoPlay();
                          // }
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
                        onTap: (){
                          if(cubit.t4 != 'X' && cubit.t4 != 'O') {
                            cubit.Play4();
                            cubit.CheckWinner() == 1
                                ? cubit.CheckWinner()
                                : cubit.AutoPlay();
                            cubit.CheckWinner();
                            cubit.NoWinner();
                          }

                          // if(state is! WinState) {
                          //   cubit.AutoPlay();
                          // }
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
                        onTap: (){
                          if(cubit.t5 != 'X' && cubit.t5 != 'O') {
                            cubit.Play5();
                            cubit.CheckWinner() == 1
                                ? cubit.CheckWinner()
                                : cubit.AutoPlay();
                            cubit.CheckWinner();
                            cubit.NoWinner();
                          }

                          // if(state is! WinState) {
                          //   cubit.AutoPlay();
                          // }
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
                        onTap: (){
                          if(cubit.t6 != 'X' && cubit.t6 != 'O') {
                            cubit.Play6();
                            cubit.CheckWinner() == 1
                                ? cubit.CheckWinner()
                                : cubit.AutoPlay();
                            cubit.CheckWinner();
                            cubit.NoWinner();
                          }
                          // if(state is! WinState) {
                          //   cubit.AutoPlay();
                          // }
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
                        onTap: (){
                          if(cubit.t7 != 'X' && cubit.t7 != 'O') {
                            cubit.Play7();
                            cubit.CheckWinner() == 1
                                ? cubit.CheckWinner()
                                : cubit.AutoPlay();
                            cubit.CheckWinner();
                            cubit.NoWinner();
                          }
                          // if(state is! WinState) {
                          //   cubit.AutoPlay();
                          // }
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
                        onTap: (){
                          if(cubit.t8 != 'X' && cubit.t8 != 'O') {
                            cubit.Play8();
                            cubit.CheckWinner() == 1
                                ? cubit.CheckWinner()
                                : cubit.AutoPlay();
                            cubit.CheckWinner();
                            cubit.NoWinner();
                          }
                          // if(state is! WinState) {
                          //   cubit.AutoPlay();
                          // }
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
                        onTap: (){
                          if(cubit.t9 != 'X' && cubit.t9 != 'O') {
                            cubit.Play9();
                            cubit.CheckWinner() == 1
                                ? cubit.CheckWinner()
                                : cubit.AutoPlay();
                            cubit.CheckWinner();
                            cubit.NoWinner();
                          }
                          // if(state is! WinState) {
                          //   cubit.AutoPlay();
                          // }
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
