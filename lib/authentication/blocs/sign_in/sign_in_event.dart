part of 'sign_in_bloc.dart';

@immutable
abstract class SignInEvent extends Equatable {
  const SignInEvent();
}

class SubmitSignIn extends SignInEvent {
  @override
  List<Object?> get props => [];
}
