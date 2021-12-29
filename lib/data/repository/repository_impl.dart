import 'package:dartz/dartz.dart';

import '../../domain/authetication_model.dart';
import '../../domain/repository.dart';
import '../datasource/remote_datasource.dart';
import '../mapper/mapper.dart';
import '../network/failure.dart';
import '../network/network_info.dart';
import '../request/request.dart';

class RepositoryImpl extends Repository {
  RemoteDataSource _remoteDataSource;
  NetworkInfo _networkInfo;

  RepositoryImpl(this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, Authentication>> login(
      LoginRequest loginRequest) async {
    if (await _networkInfo.isConnected) {
      //it's safe to call API
      final response = await _remoteDataSource.login(loginRequest);

      if (response.status == 200) {
        // return data (success)
        // return right
        return Right(response.toDomain());
      } else {
        // Return business logic error
        // return left
        return Left(Failure(
            409, response.message ?? "Business Logic Error from API side!"));
      }
    } else {
      // return conection error
      return Left(Failure(501, "Please check the internet connection!"));
    }
  }
}
