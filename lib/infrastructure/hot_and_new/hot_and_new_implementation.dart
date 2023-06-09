import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/hot_and_new_resp/hot_and_new_service.dart';
import 'package:netflix/domain/hot_and_new_resp/models/hot_and_new_resp.dart';

@LazySingleton(as: HotAndNewService)
class HotAndNewImplementation implements HotAndNewService{
  @override
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewMovieData() async{
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.hotandnewMovie,
        
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result =HotAndNewResp .fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailures());
      }
    } on DioError catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailures());
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailures());
    }
  }

  @override
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewTvData() async{
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.hotandnewTv,
        
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result =HotAndNewResp .fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailures());
      }
    } on DioError catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailures());
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailures());
    }
  }
  }

