import 'package:bloc/bloc.dart';
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
}
