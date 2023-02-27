import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo/states.dart';

class XoCubit extends Cubit<XoStates>{

  XoCubit(): super(XoInitialState());
  static XoCubit get(context) => BlocProvider.of(context);

  String t1= '';
  String t2 ='';
  String t3 ='';
  String t4 ='';
  String t5 ='';
  String t6 ='';
  String t7 ='';
  String t8 ='';
  String t9 ='';

  int count = 0;





  Play1(){
    if(count %2 ==0){
      t1 = 'X' ;
      count++;
      emit(PlayState());

    }
    else{
      t1 = 'O' ;
      count++;
      emit(PlayState());
    }
  }
  Play2(){
    if(count %2 ==0){
      t2 = 'X' ;
      count++;
      emit(PlayState());

    }
    else{
      t2 = 'O' ;
      count++;
      emit(PlayState());
    }
  }
  Play3(){
    if(count %2 ==0){
      t3 = 'X' ;
      count++;
      emit(PlayState());

    }
    else{
      t3 = 'O' ;
      count++;
      emit(PlayState());
    }
  }
  Play4(){
    if(count %2 ==0){
      t4 = 'X' ;
      count++;
      emit(PlayState());

    }
    else{
      t4 = 'O' ;
      count++;
      emit(PlayState());
    }
  }
  Play5(){
    if(count %2 ==0){
      t5 = 'X' ;
      count++;
      emit(PlayState());

    }
    else{
      t5 = 'O' ;
      count++;
      emit(PlayState());
    }
  }
  Play6(){
    if(count %2 ==0){
      t6 = 'X' ;
      count++;
      emit(PlayState());

    }
    else{
      t6 = 'O' ;
      count++;
      emit(PlayState());
    }
  }
  Play7(){
    if(count %2 ==0){
      t7 = 'X' ;
      count++;
      emit(PlayState());

    }
    else{
      t7 = 'O' ;
      count++;
      emit(PlayState());
    }
  }
  Play8(){
    if(count %2 ==0){
      t8 = 'X' ;
      count++;
      emit(PlayState());

    }
    else{
      t8 = 'O' ;
      count++;
      emit(PlayState());
    }
  }
  Play9(){
    if(count %2 ==0){
      t9 = 'X' ;
      count++;
      emit(PlayState());

    }
    else{
      t9 = 'O' ;
      count++;
      emit(PlayState());
    }
  }





  CheckWinner(){
    if(
    t1==t2 && t2==t3 && t1!='' && t2!='' && t3 != ''
    ||
    t4==t5 && t5==t6 && t4!='' && t5!='' && t6 != ''
    ||
    t7==t8 && t8==t9 && t7!='' && t8!='' && t9 != ''
    ||
    t1==t4 && t4==t7 && t1!='' && t4!='' && t7 != ''
    ||
    t2==t5 && t5==t8 && t5!='' && t2!='' && t8 != ''
    ||
    t3==t6 && t6==t9 && t6!='' && t9!='' && t3 != ''
    ||
    t1==t5 &&t5==t9 && t1!='' && t5!='' && t9 != ''
    ||
    t3==t5 && t5==t7 && t5!='' && t7!='' && t3 != ''
    )
    {

       emit(WinState());
       t1= '';
       t2 ='';
       t3 ='';
       t4 ='';
       t5 ='';
       t6 ='';
       t7 ='';
       t8 ='';
       t9 ='';
       return  1;

    }
  }


  AutoPlay(){
    if(t1=='X' && t2 =='X' && t3.isEmpty){
      Play3();
      return 1;
    }
    if(t3=='X' && t2 =='X' && t1.isEmpty){
      Play1();
      return 1;
    }
    if(t3=='X' && t1 =='X' && t2.isEmpty){
      Play2();
      return 1;
    }

     if(t4=='X' && t5 =='X' && t6.isEmpty){
      Play6();
      return 1;

     }
    if(t6=='X' && t5 =='X' && t4.isEmpty){
      Play4();
      return 1;
    }
    if(t6=='X' && t4 =='X' && t5.isEmpty){
      Play5();
      return 1;
    }

     if(t8=='X' && t7 =='X' && t9.isEmpty){
      Play9();
      return 1;

     }
    if(t8=='X' && t9 =='X' && t7.isEmpty){
      Play7();
      return 1;

    }
    if(t7=='X' && t9 =='X' && t8.isEmpty){
      Play8();
      return 1;

    }

     if(t1=='X' && t4 =='X' && t7.isEmpty){
      Play7();
      return 1;

     }
    if(t7=='X' && t4 =='X' && t1.isEmpty){
      Play1();
      return 1;

    }
    if(t7=='X' && t1 =='X' && t4.isEmpty){
      Play4();
      return 1;

    }

     if(t5=='X' && t2 =='X' && t8.isEmpty){
      Play8();
      return 1;


     }
    if(t5=='X' && t8 =='X' && t2.isEmpty){
      Play2();
      return 1;
    }
    if(t2=='X' && t8 =='X' && t5.isEmpty){
      Play5();
      return 1;
    }

     if(t3=='X' && t6 =='X' && t9.isEmpty){
      Play9();
      return 1;

     }
    if(t9=='X' && t6 =='X' && t3.isEmpty){
      Play3();
      return 1;

    }
    if(t9=='X' && t3 =='X' && t6.isEmpty){
      Play6();
      return 1;

    }
      if(t1=='X' && t5 =='X' && t9.isEmpty){
      Play9();
      return 1;

      }
    if(t9=='X' && t5 =='X' && t1.isEmpty){
      Play1();
      return 1;

    }
    if(t9=='X' && t1 =='X' && t5.isEmpty){
      Play5();
      return 1;

    }
     if(t3=='X' && t5 =='X' && t7.isEmpty){
      Play7();
      return 1;
     }
    if(t7=='X' && t5 =='X' && t3.isEmpty){
      Play3();
      return 1;
    }
    if(t7=='X' && t3 =='X' && t5.isEmpty){
      Play5();
      return 1;
    }
     if(t1.isEmpty){
       Play1();
       return 1;
     }
    if(t2.isEmpty){
      Play2();
      return 1;
    }if(t3.isEmpty){
      Play3();
      return 1;
    }if(t4.isEmpty){
      Play4();
      return 1;
    }if(t5.isEmpty){
      Play5();
      return 1;
    }if(t6.isEmpty){
      Play6();
      return 1;
    }if(t7.isEmpty){
      Play7();
      return 1;
    }if(t8.isEmpty){
      Play8();
      return 1;
    }if(t9.isEmpty){
      Play9();
      return 1;
    }

  }

NoWinner(){
    if(t1.isNotEmpty&&
        t2.isNotEmpty&&
        t3.isNotEmpty&&
        t4.isNotEmpty&&
        t5.isNotEmpty&&
        t6.isNotEmpty&&
        t7.isNotEmpty&&
        t8.isNotEmpty&&
        t9.isNotEmpty&&
    state is! WinState
    ){
      emit(NoWinnerState());
      t1= '';
      t2 ='';
      t3 ='';
      t4 ='';
      t5 ='';
      t6 ='';
      t7 ='';
      t8 ='';
      t9 ='';
      return  1;
    }
}


}