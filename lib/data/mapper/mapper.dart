// Converts the response into non nullable object (model)

import 'package:clean_architecture_mvvm_app/app/extensions.dart';
import 'package:clean_architecture_mvvm_app/data/responses/responses.dart';
import 'package:clean_architecture_mvvm_app/domain/models/authetication_model.dart';
import 'package:clean_architecture_mvvm_app/domain/models/contacts_model.dart';
import 'package:clean_architecture_mvvm_app/domain/models/customer_model.dart';

const EMPTY = '';
const ZERO = 0;

extension CustomerResponseMapper on CustomerResponse? {
  Customer toDomain() {
    return Customer(
        this?.id?.orEmpty() ?? EMPTY,
        this?.name?.orEmpty() ?? EMPTY,
        this?.numberOfNotificationsame?.orZero() ?? ZERO);
  }
}

extension ContactsResponseMapper on ContactsResponse? {
  Contacts toDomain() {
    return Contacts(this?.phone?.orEmpty() ?? EMPTY,
        this?.link?.orEmpty() ?? EMPTY, this?.email?.orEmpty() ?? EMPTY);
  }
}

extension AuthenticationResponseMapper on AuthenticationResponse? {
  Authentication toDomain() {
    return Authentication(
        this?.customer?.toDomain(), this?.contacts?.toDomain());
  }
}
