import 'package:clean_architecture_mvvm_app/domain/models/home_model.dart';
import 'package:clean_architecture_mvvm_app/domain/models/store_details_model.dart';
import 'package:dartz/dartz.dart';

import '../../data/network/failure.dart';
import '../../data/request/request.dart';
import '../models/authetication_model.dart';

abstract class Repository {
  Future<Either<Failure, Authentication>> login(LoginRequest loginRequest);
  Future<Either<Failure, String>> forgotPassword(String email);
  Future<Either<Failure, Authentication>> register(
      RegisterRequest registerRequest);
  Future<Either<Failure, HomeObject>> getHome();
  Future<Either<Failure, StoreDetails>> getStoreDetails();
}
