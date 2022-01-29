import 'package:bloc/bloc.dart';
import 'package:flutter1_app/CounterScreen/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{

  CounterCubit() : super(CounterIntialState());
  static  CounterCubit get(context) => BlocProvider.of(context);
  int counter=1;
  void minus(){
    counter--;
    emit(CounterMinusState());

  }
  void plus(){
    counter++;
    emit(CounterPlusState());
  }
  void rest(){
    counter=0;
    emit(CounterRestsState());
  }
}