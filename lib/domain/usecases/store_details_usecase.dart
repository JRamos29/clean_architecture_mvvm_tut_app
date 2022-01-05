import 'package:clean_architecture_mvvm_app/data/network/failure.dart';
import 'package:clean_architecture_mvvm_app/domain/models/store_details_model.dart';
import 'package:clean_architecture_mvvm_app/domain/repositories/repository.dart';
import 'package:dartz/dartz.dart';

import 'base_usecase.dart';

class StoreDetailsUseCase extends BaseUseCase<void, StoreDetails> {
  Repository repository;

  StoreDetailsUseCase(this.repository);

  @override
  Future<Either<Failure, StoreDetails>> execute(void input) {
    return repository.getStoreDetails();
  }
}
