import 'package:dartz/dartz.dart';

import '../data/network/failure.dart';
import '../data/request/request.dart';
import 'authetication_model.dart';

abstract class Repository {
  Future<Either<Failure, Authentication>> login(LoginRequest loginRequest);
}
