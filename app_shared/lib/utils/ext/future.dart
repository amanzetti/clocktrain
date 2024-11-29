import 'package:dartz/dartz.dart';

extension FutureEitherExtensions<L, R> on Future<Either<L, R>> {
  Future<void> foldAsync(Function(L) onLeft, Function(R) onRight) {
    return then((either) => either.fold(onLeft, onRight));
  }
}