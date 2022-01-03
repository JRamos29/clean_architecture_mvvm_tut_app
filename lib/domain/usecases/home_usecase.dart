import 'package:clean_architecture_mvvm_app/data/network/failure.dart';
import 'package:clean_architecture_mvvm_app/domain/models/home_model.dart';
import 'package:clean_architecture_mvvm_app/domain/repositories/repository.dart';
import 'package:dartz/dartz.dart';

import 'base_usecase.dart';

class HomeUseCase extends BaseUseCase<void, HomeObject> {
  Repository _repository;

  HomeUseCase(this._repository);

  @override
  Future<Either<Failure, HomeObject>> execute(void input) async {
    return await _repository.getHome();
  }
}
