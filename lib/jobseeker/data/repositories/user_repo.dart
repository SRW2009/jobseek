
import 'package:jobseek/http.dart';
import 'package:jobseek/shared/data/models/jobseeker.dart';
import 'package:jobseek/shared/domain/entities/jobseeker.dart';
import 'package:jobseek/shared/domain/repositories/user_repo.dart';

class JobSeekerRepository implements UserRepo {

  @override
  Future<JobSeeker> getUserDetail(int userId) async {
    //TODO: change static id to dynamic id
    //final response = await Http.get('/api/profile/1');
    //return JobSeekerModel.fromJson(response).toEntity();
    return JobSeeker(
      0, 'Chintia A.', 'chintiaa@student.itk.ac.id', '081234567890', 'Balikpapan',
      photoUrl: 'https://t3.ftcdn.net/jpg/03/39/45/96/360_F_339459697_XAFacNQmwnvJRqe1Fe9VOptPWMUxlZP8.jpg',
    );
  }
}