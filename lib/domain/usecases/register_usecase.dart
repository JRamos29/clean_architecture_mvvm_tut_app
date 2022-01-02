import 'package:clean_architecture_mvvm_app/data/network/failure.dart';
import 'package:clean_architecture_mvvm_app/data/request/request.dart';
import 'package:clean_architecture_mvvm_app/domain/models/authetication_model.dart';
import 'package:clean_architecture_mvvm_app/domain/repositories/repository.dart';
import 'package:dartz/dartz.dart';

import 'base_usecase.dart';

class RegisterUseCase
    implements BaseUseCase<RegisterUseCaseInput, Authentication> {
  Repository _repository;

  RegisterUseCase(this._repository);

  @override
  Future<Either<Failure, Authentication>> execute(
      RegisterUseCaseInput input) async {
    return await _repository.register(RegisterRequest(input.countryMobileCode,
        input.userName, input.email, input.password, input.profilePicture));
  }
}

class RegisterUseCaseInput {
  String countryMobileCode;
  String userName;
  String email;
  String password;
  String profilePicture;

  RegisterUseCaseInput(this.countryMobileCode, this.userName, this.email,
      this.password, this.profilePicture);
}
