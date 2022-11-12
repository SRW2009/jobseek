
import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class BaseCompletableUseCase<Params> extends CompletableUseCase<Params> {
  final Future Function(Params params) _function;

  BaseCompletableUseCase(this._function);

  @override
  Future<Stream<void>> buildUseCaseStream(Params? params) async {
    final controller = StreamController();
    try {
      await _function(params as Params);
      controller.close();
    } catch (e) {
      controller.addError(e);
    }
    return controller.stream;
  }
}