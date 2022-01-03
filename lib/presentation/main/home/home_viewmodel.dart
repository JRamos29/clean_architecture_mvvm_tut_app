import 'dart:async';

import 'package:clean_architecture_mvvm_app/domain/models/banner_model.dart';
import 'package:clean_architecture_mvvm_app/domain/models/service_model.dart';
import 'package:clean_architecture_mvvm_app/domain/models/store_model.dart';
import 'package:clean_architecture_mvvm_app/domain/usecases/home_usecase.dart';
import 'package:clean_architecture_mvvm_app/presentation/base/base_viewmodel.dart';
import 'package:rxdart/rxdart.dart';

class HomeViewModel extends BaseViewModel {
  HomeUseCase _homeUseCase;

  StreamController _bannersStreamController = BehaviorSubject<List<BannerAd>>();
  StreamController _servicesStreamController = BehaviorSubject<List<Service>>();
  StreamController _storesStreamController = BehaviorSubject<List<Store>>();

  HomeViewModel(this._homeUseCase);

  @override
  void start() {
    // TODO: implement start
  }

  @override
  void dispose() {
    _bannersStreamController.close();
    _servicesStreamController.close();
    _storesStreamController.close();
    super.dispose();
  }
}
