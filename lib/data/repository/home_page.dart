
import 'package:santos/data/models/services/problem_type.dart';
import 'package:santos/data/models/services/question.dart';
import 'package:santos/data/models/services/sub_service.dart';

import '../models/location.dart';
import '../models/order/answer.dart';
import '../models/order/order.dart';
import '../models/services/main_services.dart';
import '../models/slider.dart';
import '../web_services/home_page_web_services.dart';

class HomePageRepository {
  final HomePageWebServices homePageWebServices;

  HomePageRepository(this.homePageWebServices);

  Future<List<Slider>> getAllSliders() async {
    var data = await homePageWebServices.getAllSliders();
    return data.map((e) => Slider.fromJson(e)).toList();
  }

  Future<List<MainService>> getAllMainServices({city}) async {
    var data = await homePageWebServices.getAllMainServices(city: city);
    return data.map((e) => MainService.fromJson(e)).toList();
  }

  Future<List<SubService>> getAllSubServices({mainService}) async {
    var data =
        await homePageWebServices.getAllSubService(mainService: mainService);
    return data.map((e) => SubService.fromJson(e)).toList();
  }

  Future<List<ProblemType>> getAllProblemType({kwargs}) async {
    var data = await homePageWebServices.getAllProblemType(kwargs: kwargs);
    return data.map((e) => ProblemType.fromJson(e)).toList();
  }

  Future<List<Question>> getAllQuestion({kwargs}) async {
    var data = await homePageWebServices.getAllQuestion(kwargs: kwargs);
    return data.map((e) => Question.fromJson(e)).toList();
  }

  Future<Order> createOrder(List<Answer> answers, List<ProblemType> problemType,
      Location location, mainService, description, images) async {
    var data = await homePageWebServices.createOrder(
        answers, problemType, location, mainService, description, images);

    var problems = List<Map<String, dynamic>>.from(data['problemType']);
    List<ProblemType> problemTypes = [];
    for (var problem in problems) {
      var id = problem['problemType'];
      var problemTypeJson = await homePageWebServices.getProblemTypeById(id);
      ProblemType _problemType = ProblemType.fromJson(problemTypeJson);
      _problemType.addLateFeature(problem);
      problemTypes.add(_problemType);
    }

    Order order = Order.fromJson(data);
    order.problemType = problemTypes;
    return order;
  }
//TODO(1) down payment
//TODO(2) retry request
//TODO(3) exit request
//TODO(4) get all order
//TODO(5) form answer
}
