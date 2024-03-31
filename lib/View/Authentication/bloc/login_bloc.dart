import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginButtonPressed>(loginButtonPressed);
  }
  FutureOr<void> loginButtonPressed(
      LoginButtonPressed event, Emitter<LoginState> emit) {
    if (event is LoginButtonPressed) {
      emit(LoginSuccessState());
    }
  }
}
