
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/domain/entities/applier.dart';
import 'package:jobseek/shared/domain/entities/company.dart';
import 'package:jobseek/shared/domain/entities/specialization.dart';
import 'package:jobseek/shared/domain/usecases/get_appliers.dart';
import 'package:jobseek/shared/domain/usecases/get_specializations.dart';
import 'package:jobseek/shared/domain/usecases/get_user_detail.dart';

class CompanyHomePresenter extends Presenter {
  late Function(List<Applier>?) getAppliersCallback;
  late Function(List<Specialization>?) getSpecializationsCallback;
  late Function(Company?) getProfileCallback;

  final GetAppliersUseCase _getAppliersUseCase;
  final GetSpecializationsUseCase _getSpecializationsUseCase;
  final GetUserDetailUseCase _getUserDetailUseCase;
  CompanyHomePresenter(applierRepo, specializationRepo, userRepo)
      : _getAppliersUseCase = GetAppliersUseCase(applierRepo),
        _getSpecializationsUseCase = GetSpecializationsUseCase(specializationRepo),
        _getUserDetailUseCase = GetUserDetailUseCase(userRepo);

  void getAppliers(int specializationId) => _getAppliersUseCase.execute(_GetAppliersObserver(this), specializationId);
  void getSpecializations() => _getSpecializationsUseCase.execute(_GetSpecializationsObserver(this));
  void getProfile(int userId) => _getUserDetailUseCase.execute(_GetUserDetailObserver(this), userId);

  @override
  void dispose() {
    _getAppliersUseCase.dispose();
    _getSpecializationsUseCase.dispose();
    _getUserDetailUseCase.dispose();
  }
}

class _GetAppliersObserver implements Observer<List<Applier>> {
  final CompanyHomePresenter _presenter;

  _GetAppliersObserver(this._presenter);

  @override
  void onComplete() {}

  @override
  void onError(e) {
    print(e);
    _presenter.getAppliersCallback(null);
  }

  @override
  void onNext(List<Applier>? response) {
    _presenter.getAppliersCallback(response);
  }
}

class _GetSpecializationsObserver implements Observer<List<Specialization>> {
  final CompanyHomePresenter _presenter;

  _GetSpecializationsObserver(this._presenter);

  @override
  void onComplete() {}

  @override
  void onError(e) {
    print(e);
    _presenter.getSpecializationsCallback(null);
  }

  @override
  void onNext(List<Specialization>? response) {
    _presenter.getSpecializationsCallback(response);
  }
}

class _GetUserDetailObserver implements Observer<Company> {
  final CompanyHomePresenter _presenter;

  _GetUserDetailObserver(this._presenter);

  @override
  void onComplete() {}

  @override
  void onError(e) {
    print(e);
    _presenter.getProfileCallback(null);
  }

  @override
  void onNext(Company? response) {
    _presenter.getProfileCallback(response);
  }
}