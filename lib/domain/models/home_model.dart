import 'banner_model.dart';
import 'service_model.dart';
import 'store_model.dart';

class HomeData {
  List<Service> services;
  List<Store> stores;
  List<BannerAd> banners;

  HomeData(this.services, this.stores, this.banners);
}

class HomeObject {
  HomeData data;

  HomeObject(this.data);
}
