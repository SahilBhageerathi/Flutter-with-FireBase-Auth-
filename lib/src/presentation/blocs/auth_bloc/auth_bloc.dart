import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_1/src/data/models/login_response.dart';
import 'package:sample_1/src/data/models/logout_response.dart';
import 'package:sample_1/src/data/repositories/Repository.dart';
import 'package:sample_1/src/data/repositories/auth_repo.dart';
import 'package:sample_1/src/data/repositories/tags_repo.dart';
import 'package:sample_1/src/presentation/blocs/auth_bloc/auth_event.dart';
import 'package:sample_1/src/presentation/blocs/auth_bloc/auth_state.dart';
import 'package:sample_1/src/presentation/routing/router.gr.dart';
import 'package:sample_1/src/utils/shared_preference.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  static AuthBloc? _instance;

  static AuthBloc get instance {
    _instance ??= AuthBloc._();
    return _instance!;
  }

  Repository? _repository;

  AuthBloc._() : super(AuthState()) {
    _repository = Repository(tagsRepo: TagsRepo(), authRepo: AuthRepo());
    on<LoginEvent>(userLogIn);
    on<LogoutEvent>(userLogout);
  }

  FutureOr<void> userLogIn(LoginEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(
      isLoading: true,
    ));
    LoginResponse loginDetails =
        await _repository!.authRepo.login(event.email, event.password);
    await SharedPreferenceData.setToken(loginDetails.accessToken);
    if(loginDetails.accessToken.isNotEmpty){
      event.navigateCallback();
    }

    emit(state.copyWith(
      isLoading: false,
    ));

  }

  FutureOr<void> userLogout(LogoutEvent event, Emitter<AuthState> emit) async {
    LogoutResponse res = await _repository!.authRepo.logout();

    if (res.message.isNotEmpty) {
      await SharedPreferenceData.clearAllData();
      event.navigateCallback();
    }
  }
}
