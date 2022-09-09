import 'package:mobx/mobx.dart';

part 'add_item_screen_store.g.dart';

class AddTodoStore = _TodoAddItems with _$AddTodoStore;

abstract class _TodoAddItems with Store {
  @observable
  String item_name = "";
  @observable
  String item_des = "";
  @observable
  String msg = "";

  @action
  validateInputs() async {
    if (item_name.isEmpty) {
      msg = "This is empty";
    } else {
      msg = "This is not empty";
    }
  }
}
