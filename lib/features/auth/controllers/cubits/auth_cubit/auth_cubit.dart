import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> signUpUser({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    final supabase = Supabase.instance.client;
    try {
      emit(AuthLoading());
      final authResponse = await supabase.auth.signUp(
        email: email,
        password: password,
      );
      final user = authResponse.user;
      if (user != null) {
        await supabase.from('users').insert({
          'id': user.id,
          'first_name': firstName,
          'last_name': lastName,
          'email': email,
        });
      }
      emit(AuthSuccess());
    } on AuthException catch (e) {
      emit(AuthError(errMessage: e.message));
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
}
