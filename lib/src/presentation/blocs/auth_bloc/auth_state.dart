import 'package:sample_1/src/data/models/tags.dart';

class AuthState {
  bool isLoading = true;
  bool isUserLoggedIn = false;

  AuthState copyWith({
    bool? isLoading,
    bool? isUserLoggedIn,
  }) {
    AuthState newState = AuthState();
    newState.isLoading = isLoading ?? this.isLoading;
    newState.isUserLoggedIn = isUserLoggedIn ?? this.isUserLoggedIn;

    return newState;
  }
}
