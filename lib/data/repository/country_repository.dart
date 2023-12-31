
import 'package:santos/data/models/country.dart';
import 'package:santos/data/web_services/country_web_services.dart';

import '../models/city.dart';

class CountryRepository {
  final CountryWebServices countryWebServices;

  CountryRepository(this.countryWebServices);

  Future<List<Country>> getAllCountries() async {
    final countriesData = await countryWebServices.getAllCountries();
    return countriesData.map((country) => Country.fromJson(country)).toList();
  }
  Future<List<City>> getAllCities() async {
    final countriesData = await countryWebServices.getAllCities();
    return countriesData.map((city) => City.fromJson(city)).toList();
  }
}
