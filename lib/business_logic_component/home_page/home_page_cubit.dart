import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:santos/data/models/order/order.dart';
import 'package:santos/data/models/services/main_services.dart';
import 'package:santos/data/models/services/sub_service.dart';

import '../../data/models/location.dart';
import '../../data/models/order/answer.dart';
import '../../data/models/services/problem_type.dart';
import '../../data/models/services/question.dart';
import '../../data/models/slider.dart';
import '../../data/repository/home_page.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  final HomePageRepository homePageRepository;

  HomePageCubit(this.homePageRepository) : super(HomePageInitial());

  void getAllSliders() => homePageRepository
      .getAllSliders()
      .then((value) => emit(SliderLoaded(value)));

  /*
    @param city: int, city ID
   */
  void getAllMainServices({city}) => homePageRepository
      .getAllMainServices(city: city)
      .then((value) => emit(MainServicesLoaded(value)));
  /*
    @param mainService: int , main service number
   */
  void getAllSubServices({mainService}) => homePageRepository
      .getAllSubServices(mainService: mainService)
      .then((value) => emit(SubServicesLoaded(value)));

  /*
    @param kwargs: map containing the searching parameters
    ex: pass the following map to get all problems inside mainService 3 and subService 10
          {
            'mainService': 3,
            'subService':10
          }

   */
  void getAllProblemType({kwargs}) => homePageRepository
      .getAllProblemType(kwargs: kwargs)
      .then((value) => emit(ProblemTypeLoaded(value)));

  /*
     @param kwargs: map containing the searching parameters
      ex: pass the following map to get all question in service 3 & 4

      {
      'service':3,
      'service':4,
      }

   */
  void getAllQuestion({kwargs}) => homePageRepository.getAllQuestion(kwargs: kwargs).then((value) => emit(QuestionLoaded(value)));


  void createOrder(List<Answer> answers, List<ProblemType> problemType,
          Location location, mainServiceNumber, description, images) =>
      homePageRepository
          .createOrder(answers, problemType, location, mainServiceNumber,
              description, images)
          .then((value) => emit(OrderCreated(value)));


}
