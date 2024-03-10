
import 'package:get/get.dart';
import 'package:the29029restaurant/data/response/status.dart';
import 'package:the29029restaurant/models/home/user_list_model.dart';
import 'package:the29029restaurant/repository/home_repository/hone_repository.dart';

class HomeController extends GetxController {

  final _api = HomeRepository();


  final rxRequestStatus = Status.LOADING.obs ;
  final userList =PartyMenuModel().obs ;
  RxString error = ''.obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value ;
  void setUserList(PartyMenuModel _value) => userList.value = _value ;
  void setError(String _value) => error.value = _value ;


  void userListApi(){
  //  setRxRequestStatus(Status.LOADING);
Map data={
  "party_menu":"party_menu_api"
};
    _api.party_menu_api(data).then((value){
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, stackTrace){
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);

    });
  }

  void refreshApi(){
    Map data={
      "party_menu":"party_menu_api"
    };
      setRxRequestStatus(Status.LOADING);

    _api.party_menu_api(data).then((value){
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, stackTrace){
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);

    });
  }
}