import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../responses/responses.dart';

part 'app_api.g.dart';

@RestApi()
abstract class AppServiceClient {
  //* Use api service:
  //* final service = AppServiceClient(Dio(BaseOptions(baseUrl: Constants.baseUrl)));
  factory AppServiceClient(Dio dio) => _AppServiceClient(dio);

  @POST('/customers/login')
  Future<AuthenticationResponse> login(
    @Field('email') String email,
    @Field('password') String password,
    @Field('imei') String imei,
    @Field('deviceType') String deviceType,
  );

  @POST('/customers/forgotPassword')
  Future<ForgotPasswordResponse> forgotPassword(@Field('email') String email);
}
