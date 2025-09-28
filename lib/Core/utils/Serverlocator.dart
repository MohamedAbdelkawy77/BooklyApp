import 'package:bookly_app/Features/Home/Data/Api/ApiServers2.dart';
import 'package:bookly_app/Features/Home/Data/HomeRepo/ImpleHomeRepo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

var getit = GetIt.instance;
void setupSingelton() {
  getit.registerSingleton<Apiservers2>(Apiservers2(dio: Dio()));

  getit.registerSingleton<Implehomerepo>(
      Implehomerepo(apiservers2: getit.get<Apiservers2>()));
}
