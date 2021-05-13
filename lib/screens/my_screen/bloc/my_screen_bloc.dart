import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'my_screen_event.dart';
part 'my_screen_state.dart';

class MyScreenBloc extends Bloc<MyScreenEvent, MyScreenState> {
  MyScreenBloc() : super(MyScreenInitial());

  @override
  Stream<MyScreenState> mapEventToState(
    MyScreenEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
