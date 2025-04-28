abstract class AsyncUseCase<Type, Params> {
  Future<Type> call(Params params);
}

abstract class UseCase<Type, Params> {
  Type call(Params params);
}
