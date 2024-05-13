import 'package:sample_1/src/data/models/tags.dart';

class TagsState {
  bool isLoading = true;
  List<Tag>? tags;

  TagsState copyWith({
    bool? isLoading,
    List<Tag>? tags,
  }) {
    TagsState newState = TagsState();
    newState.isLoading = isLoading ?? this.isLoading;
    newState.tags = tags ?? this.tags;
    return newState;
  }
}
