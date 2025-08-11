part of 'log_in_bloc.dart';

@immutable
sealed class LogInEvent {}

class Login extends LogInEvent{
  final String email;
  final String password;

  Login(this.email, this.password);
}

class ResetPassword extends LogInEvent{
  final String email;

  ResetPassword(this.email);
}