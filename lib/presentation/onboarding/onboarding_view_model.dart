import '../base/base_view_model.dart';

class OnBoardingViewModel extends BaseViewModel
    with OnBoardingViewModelInputs, OnBoardingViewModelOutputs {
  //* stream controllers

  // inputs
  @override
  void start() {
    // TODO: implement start
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void goNext() {
    // TODO: implement goNext
  }

  @override
  void goPrevious() {
    // TODO: implement goPrevious
  }

  @override
  void onPageChange(int index) {
    // TODO: implement onPageChange
  }
}

// inputs mean the orders that our view model will receive from our view.
abstract class OnBoardingViewModelInputs {
  void goNext(); // when user clicks on right arrow or swipe left-right.
  void goPrevious(); // when user clicks on left arrow or swipe right-left.

  void onPageChange(int index);
}

// output mean data or results that will be sent from our view model to our view.
abstract class OnBoardingViewModelOutputs {
  // TODO: will be implemented it later
}
