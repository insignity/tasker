import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../services/api/api_service.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final Api api;
  SignUpBloc(this.api) : super(SignUpInitial()) {
    on<SignUpEvent>((event, emit) async {
      if (event is SignUp) {
        final SignUp input = event;
        // final response = await api.
        //TODO finish bloc
        emit(SignUpInitial());
      }
    });
  }
}
