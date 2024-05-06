import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_1/src/data/models/tags.dart';
import 'package:sample_1/src/data/repositories/Repository.dart';
import 'package:sample_1/src/data/repositories/tags_repo.dart';
import 'package:sample_1/src/presentation/blocs/tags_bloc/tags_event.dart';
import 'package:sample_1/src/presentation/blocs/tags_bloc/tags_state.dart';

class TagsBloc extends Bloc<TagsEvent, TagsState> {
  static TagsBloc? _instance;

  static TagsBloc get instance {
    _instance ??= TagsBloc._();
    return _instance!;
  }

  Repository? _repository;

  TagsBloc._() : super(TagsState()) {
    _repository=Repository(tagsRepo: TagsRepo());
    on<InitializeTagsEvent>(initialize);
  }

  FutureOr<void> initialize(
      InitializeTagsEvent event, Emitter<TagsState> emit) async {

     await _repository!.tagsRepo.getTags().then((value){
      if(value!=null){
        emit(state.copyWith(
          isLoading: false,
          tags: value.tags,
        ));
      }
    });

  }
}
