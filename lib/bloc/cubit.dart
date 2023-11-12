
import 'package:bloc/bloc.dart';
import 'package:santos/bloc/state.dart';

class AppCubit extends Cubit<AppState>{
  AppCubit() : super(InitialState());
  // firstScreen
  bool languge = false ;
  void changeLanguge (bool value){
    languge = !languge;
    emit(LangugeState());
  }

  // login screen 3
  bool loginPassword = true;
  bool isChecked = false;
  void changeLoginPassword(){
    loginPassword =!loginPassword;
    emit(LoginPasswordState());
  }
  void changeRadio(bool value){
    isChecked = value;
    emit(RadioButtonState());
  }
  // forget Password Enter New Password
  bool forgetPassword1 = true;
  bool forgetPassword2 = true;
  void changeForgetPassword1(){
    forgetPassword1 = !forgetPassword1;
    emit(ForgetPassword1State());
  }
  void changeForgetPassword2(){
    forgetPassword2 = !forgetPassword2;
    emit(ForgetPassword2State());

  }
  // signUp Cubit
  bool AgreeToTheTerms = false;
  void changeRadioAgreeToTheTerms(bool value){
    AgreeToTheTerms = value;
    emit(RadioButtonAgreeToTheTermsState());
  }
  // bottom Navigation Bar Cubit
   int indexBottomNavBar = 4 ; // default is 0
   void changeIndexBottomNavBar(int i){
     indexBottomNavBar = i ;
     emit(IndexBottomNavBarState());
   }
   // location Details Screen
    bool checkBoxLocation = false;
   void changeCheckBoxLocation(bool value){
     checkBoxLocation = value;
     emit(ChangeCheckBoxLocation());
   }
   // my accountScreen Change password
   bool passwordNaw = true;
   bool passwordNew = true ;
   bool passwordNewAgain = true;
   void changePasswordNaw(String anyPassword){
     if(anyPassword=="passwordNaw"){
     passwordNaw = !passwordNaw;
     emit(PasswordNawState());
     }
     else if(anyPassword=="passwordNew"){
       passwordNew =!passwordNew;
       emit(PasswordNewState());
     }
     else{
       passwordNewAgain =!passwordNewAgain;
       emit(PasswordNewAgainState());
     }
   }
   // Saved Titles screen
    int addressSelected = 1 ;
   void changeAddressSelected(int addressSelected ){
     this.addressSelected = addressSelected;
     emit(AddressSelectedState());
   }
   // order Screen in bottomNavBar
    String statusOrder = "current";
   void changeStatusOrder(String value){
     statusOrder = value;
     emit(StatusOrderState());
   }
   // subService
    List<int> containerSelected = [

    ] ;
  int x = 0;
  void changeContainerColor(int containerSelected ){
      x = containerSelected;
      this.containerSelected.contains(x)?this.containerSelected.remove(x):
      this.containerSelected.add(x);
      emit(ContainerColorState());
   }
  // details service
  List<int> containerSelectedDetailsService = [

  ] ;
  int detailsService = 0;
  void changeContainerSelectedDetailsService(int containerSelectedDetailsService ){
    detailsService = containerSelectedDetailsService;
    this.containerSelectedDetailsService.contains(detailsService)?this.containerSelectedDetailsService.remove(detailsService):
    this.containerSelectedDetailsService.add(detailsService);
    emit(ContainerSelectedDetailsServiceState());
  }

  void mainServicesSliderChanged(int idx) =>
      emit(MainServicesSliderChanged(idx));
  // todo Fixo MARKET CUBIT

// bottomNavBar Cubit
  int currentIndex_FixoMarket = 4;

  void changeCurrentIndex_FixoMARKET(int value) {
    currentIndex_FixoMarket = value;
    emit(ChangeCurrentIndex_FixoMARKET());
  }

  // HomeScreenFixoMarket
  int selectedOfCategory = 1;

  void changeSelectedOfCategory(int value) {
    selectedOfCategory = value;
    emit(SelectedOfCategory());
  }

  // orders of Market , screen 130
  int numberBody = 0 ;

  void changeNumberOfBodyOrdersScreen(int newNumber) {
    numberBody = newNumber;
    emit(ChangeNumberOfBodyOrdersScreen());
  }
  // cancel order screen
  int payment_method = 0 ;
  void change_payment_method(int value){
    payment_method = value;

    emit(Payment_method_State());
  }

}