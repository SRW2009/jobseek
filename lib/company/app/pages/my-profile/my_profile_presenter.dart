
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/domain/entities/company.dart';
import 'package:jobseek/shared/domain/usecases/get_user_detail.dart';

class CompanyMyProfilePresenter extends Presenter {
  late Function(Company?) getProfileCallback;

  final GetUserDetailUseCase _getCompanyUseCase;
  CompanyMyProfilePresenter(applierRepo)
      : _getCompanyUseCase = GetUserDetailUseCase(applierRepo);

  void getCompany(int companyId) => _getCompanyUseCase.execute(_GetCompanyObserver(this), companyId);

  @override
  void dispose() {
    _getCompanyUseCase.dispose();
  }
}

class _GetCompanyObserver implements Observer<Company> {
  final CompanyMyProfilePresenter _presenter;

  _GetCompanyObserver(this._presenter);

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