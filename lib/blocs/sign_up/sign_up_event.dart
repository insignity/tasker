part of 'sign_up_bloc.dart';

@immutable
sealed class SignUpEvent {}

class SignUp extends SignUpEvent {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String phoneNumber;
  final String postalCode;

  SignUp({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.phoneNumber,
    required this.postalCode,
  });
}
