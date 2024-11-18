


import 'package:dartz/dartz.dart';

import '../../../../../core/utils/errors/failure.dart';
import '../../models/ReligiousBooks.dart';

abstract class ReligiousBooksRepo {
  Future<Either<Failure,List<ReligiousBooks>>> fetchReligiousBooks();
  Future<Either<Failure,ReligiousBooks>> fetchReligiousBookDetails({required int id});
}