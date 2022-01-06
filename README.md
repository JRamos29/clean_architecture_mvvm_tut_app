# Tut App (Flutter App)

## Clean Architecture / MVVM for Flutter

#

### This is a simple FLutter app, implemented with the concepts of <b>[Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)</b> and <b>[MVVM Architecture](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93viewmodel)</b> using <b>[Streams](https://dart.dev/tutorials/language/streams)</b> for state management and Flutter 2.0 (null-safety).

<p>

### Data Layer

- Data Sources (Remote, Local).
- API interface.
- Dio factory( Http implementer/logger interceptor).
- Error handler (Handle custom errors and network errors).
- Repository implementer.
- API responses (Serilaization and json conversions).
- Mappers (from data layer to domain layer).
- Apply caching on network responses.


### Domain Layer

 - Models.
 - Repository interface.
 - UseCases.
 - Either left (Failure) and right (Success).


### Presentation Layer

- MVVM (Model View ViewModel Pattern).
- UseCase Rule to connect to outside world.
- Creating Data Class Similar to Data class in Kotlin.


### Application Layer

- Application class.
- Dependency injection.
- Application Routes manager (Navigation manager).
- Application preferences (Shared preferences to save data to local storage).
- Extensions.
- Shared Functions.

#

<h3 align="center">Clean Architecture</h3>
<br />
<p align="center">
<img src="./docs/CleanArchitecture.jpeg" style="display: block; margin-left: auto; margin-right: auto; width: 70%;"/>
</p>

#

Features and packages used in the app:

- Extending Streams capabilities with [rxdart](https://pub.dev/packages/rxdart);
- Service locator (Dependency Injection) using [get_it](https://pub.dev/packages/get_it);
- Functional programming features with [dartz](https://pub.dev/packages/dartz);
- Check internet connection ([internet_connection_checker](https://pub.dev/packages/internet_connection_checker));
- Http Client for API requests using [dio](https://pub.dev/packages/dio) and [retrofit](https://pub.dev/packages/retrofit), with [pretty_dio_logger](https://pub.dev/packages/pretty_dio_logger) (logger interceptor);
- Local cache with [shared_preferences](https://pub.dev/packages/shared_preferences);
- Converting data To and From JSON using [json_serializable](https://pub.dev/packages/json_serializable)

Other third-party packages used in the app:  
    
[device_info](https://pub.dev/packages/device_info) - Detailed information about the device (make, model, etc.);<br>
[freezed](https://pub.dev/packages/freezed) - Code generation for immutable classes;<br>
[flutter_phoenix](https://pub.dev/packages/flutter_phoenix) - Easily restart your application from scratch, losing any previous state;<br>
[flutter_config](https://pub.dev/packages/flutter_config) - Plugin that exposes environment variables to your Dart code in Flutter as well as to your native code in iOS and Android;<br>
[easy_localization](https://pub.dev/packages/easy_localization) - Easy and Fast internationalizing and localization your Flutter Apps;<br>
[country_code_picker](https://pub.dev/packages/country_code_picker) - A flutter package for showing a country code selector;<br>
[image_picker](https://pub.dev/packages/image_picker) - Flutter plugin for selecting images from the Android and iOS image library, and taking new pictures with the camera.;<br>
[flutter_svg](https://pub.dev/packages/flutter_svg) - An SVG rendering and widget library for Flutter;<br>
[lottie](https://pub.dev/packages/lottie) - Render After Effects animations natively on Flutter. This package is a pure Dart implementation of a Lottie player.;<br>
[carousel_slider](https://pub.dev/packages/carousel_slider) - A carousel slider widget, support infinite scroll and custom child widget.;<br>


#

Before start the app run the following command to generate the .g and .freezed files:

```
flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
```

For help getting started with Flutter, view the
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

#