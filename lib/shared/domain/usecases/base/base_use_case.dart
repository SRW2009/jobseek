
import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class BaseUseCase<Response, Params> extends UseCase<Response, Params> {
  final Future<Response> Function(Params params) _function;

  BaseUseCase(this._function);

  @override
  Future<Stream<Response>> buildUseCaseStream(Params? params) async {
    final controller = StreamController<Response>();
    try {
      Response response = await _function(params as Params);
      controller.add(response);
      controller.close();
    } catch (e) {
      controller.addError(e);
    }
    return controller.stream;
  }
}