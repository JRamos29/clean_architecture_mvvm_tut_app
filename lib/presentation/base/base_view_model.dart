abstract class BaseViewModel extends BaseViewMoodelInputs
    with BaseViewMoodelOutputs {
  // shared variables and functions that will be used through any view model.
}

abstract class BaseViewMoodelInputs {
  void start(); // will be called when initializing view model
  void dispose(); // will be called when view model is disposed.
}

abstract class BaseViewMoodelOutputs {}
