import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpInitial()) {
    on<SubmitSignUp>((event, emit) async {
      if (formKey.currentState!.validate()) {
        emit(SignUpLoading());
        final fa = FirebaseAuth.instance;
        await fa
            .createUserWithEmailAndPassword(
          email: emailInput.text,
          password: passwordInput.text,
        )
            .then((userCredential) {
          emit(SignUpSuccess());
        }).catchError((error) {
          emit(SignUpFailed(error.toString()));
        });
      }
    });
  }

  String? validateEmail(String? v) {
    if (v == null || v.isEmpty) {
      return 'Email required.';
    }
    return null;
  }

  String? validatePassword(String? v) {
    if (v == null || v.isEmpty) {
      return 'Password required.';
    }

    if (v.length < 8) {
      return 'Password min 8 char';
    }
    return null;
  }

  final formKey = GlobalKey<FormState>();
  final emailInput = TextEditingController();
  //final nameInput = TextEditingController();
  final passwordInput = TextEditingController();
}
