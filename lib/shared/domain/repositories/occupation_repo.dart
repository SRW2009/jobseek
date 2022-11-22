
import 'package:jobseek/shared/domain/entities/occupation.dart';

abstract class OccupationRepo {
  Future<List<Occupation>> getOccupations(int specializationId);
}