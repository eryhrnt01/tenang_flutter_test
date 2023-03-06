import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitial()) {
    on<SubmitSignIn>(
      (event, emit) async {
        emit(
          SignInLoading(),
        );
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          final firebaseAuth = FirebaseAuth.instance;

          await firebaseAuth
              .signInWithEmailAndPassword(
            email: email,
            password: password,
          )
              .then(
            (userCredential) {
              emit(SignInSuccess());
            },
          ).onError(
            (error, stackTrace) {
              emit(
                SignInFailed(
                  error.toString(),
                ),
              );
            },
          );
        }
      },
    );
  }

  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
}
