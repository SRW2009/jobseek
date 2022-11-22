
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/app/utils/data_state_enum.dart';

abstract class DataController<D, V extends View> extends Controller {
  V? widget;
  D? data;
  DataStateEnum dataState = DataStateEnum.none;

  void getDataCallback(D? data) {
    if (data==null) {
      setDataStateError();
    } else if (data is List && data.isEmpty) {
      setDataStateNone();
    } else {
      this.data = data;
      setDataStateSuccess();
    }
  }

  @override
  void onInitState() {
    WidgetsFlutterBinding.ensureInitialized().endOfFrame.whenComplete(() {
      widget = getContext().findAncestorWidgetOfExactType<V>();
      onReload();
    });
  }

  void setDataStateLoading() {
    dataState=DataStateEnum.loading;
    refreshUI();
  }
  void setDataStateNone() {
    dataState=DataStateEnum.none;
    refreshUI();
  }
  void setDataStateSuccess() {
    dataState=DataStateEnum.success;
    refreshUI();
  }
  void setDataStateError() {
    dataState=DataStateEnum.error;
    refreshUI();
  }

  void onReload();
}