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
    @Field('device_type') String deviceType,
  );
}





// class URLInterceptor extends Interceptor {
//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     handler.next(options.copyWith(baseUrl: Constants.baseUrl));
//   }
// }

// AppServiceClient create() {
//   final dio = Dio(BaseOptions(contentType: 'application/json'));
//   dio.interceptors.add(URLInterceptor());

//   return AppServiceClient(dio);
// }
