import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> signUpUser({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    emit(AuthLoading());
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(AuthSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(AuthError(errMessage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(
          AuthError(errMessage: 'The account already exists for that email.'),
        );
      } else {
        emit(AuthError(errMessage: e.code));
      }
    } catch (e) {
      emit(AuthError(errMessage: e.toString()));
    }
  }

  Future<void> singInUser({
    required String email,
    required String password,
  }) async {
    emit(AuthLoading());
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(AuthSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(AuthError(errMessage: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(AuthError(errMessage: 'Wrong password provided for that user.'));
      } else {
        emit(AuthError(errMessage: e.code));
      }
    } catch (e) {
      emit(AuthError(errMessage: e.toString()));
    }
  }
}
