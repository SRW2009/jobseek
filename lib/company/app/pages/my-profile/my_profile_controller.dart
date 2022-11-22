
import 'package:jobseek/shared/app/widgets/common/data_controller.dart';
import 'package:jobseek/shared/domain/entities/company.dart';

import 'my_profile_presenter.dart';
import 'my_profile_page.dart';

class CompanyMyProfileController extends DataController<Company, CompanyMyProfilePage> {

  final CompanyMyProfilePresenter _presenter;
  CompanyMyProfileController(userRepo)
      : _presenter = CompanyMyProfilePresenter(userRepo);

  @override
  void initListeners() {
    _presenter.getProfileCallback = getDataCallback;
  }

  @override
  void onReload() {
    setDataStateLoading();
    _presenter.getCompany(1);
  }

  void onEditImage() {}
  
  void onEditAddress() {}

  void onDeleteAddress() {}

  void onEditProfile() {}
}