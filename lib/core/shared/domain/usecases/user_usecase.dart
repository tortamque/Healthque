import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/core/usecases/usecase.dart';

class GetUserUsecase implements UseCase<User?, void> {
  final UserRepository _repository;

  GetUserUsecase(this._repository);

  @override
  User? call(void params) => _repository.getUser();
}

class SaveUserUsecase implements AsyncUseCase<void, User> {
  final UserRepository _repository;

  SaveUserUsecase(this._repository);

  @override
  Future<void> call(User params) => _repository.saveUser(params);
}
