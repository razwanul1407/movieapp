import 'package:dartz/dartz.dart';
import 'package:movie/core/usecase/usecase.dart';
import 'package:movie/domain/tv/repositories/tv.dart';
import 'package:movie/service_locator.dart';

class SearchTVUseCase extends UseCase<Either,String> {
  
  @override
  Future<Either> call({String ? params}) async {
    return await sl<TVRepository>().searchTV(params!);
  }
  
}