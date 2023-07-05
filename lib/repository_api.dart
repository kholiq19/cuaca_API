import 'package:dio/dio.dart';
import 'package:weather_api/weather_response_model.dart';

class RepositoryApi {
  Future<WeatherResponseModel> getWeather({String path = ''}) async {
    try {
      var response = await Dio().get(
          'https://national-weather-service.p.rapidapi.com/zones/%7Btype%7D/%7BzoneId%7D/forecast');
      return WeatherResponseModel.fromJson(response.data);
    } on DioError catch (e) {
      return WeatherResponseModel.fromJson(e.response);
    }
  }
}
