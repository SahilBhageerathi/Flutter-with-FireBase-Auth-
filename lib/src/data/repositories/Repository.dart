import 'package:sample_1/src/data/repositories/auth_repo.dart';
import 'package:sample_1/src/data/repositories/tags_repo.dart';

class Repository {
  Repository({
    required this.tagsRepo,
    required this.authRepo,
  });

  TagsRepo tagsRepo;
  AuthRepo authRepo;
}
