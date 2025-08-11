import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../services/api/api_service.dart';

part 'log_in_event.dart';
part 'log_in_state.dart';

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  final Api api;
  LogInBloc(this.api) : super(LogInInitial()) {
    on<LogInEvent>((event, emit) async {
      if(event is Login){
        final Login old = event;
        try{
          emit(LogInLoading());
          final response = await api.login(old.email, old.password);
          print(response);
        }catch(e){
          print(e);
        }
          emit(LogInSuccess("token"));

      }
    });
  }
}
