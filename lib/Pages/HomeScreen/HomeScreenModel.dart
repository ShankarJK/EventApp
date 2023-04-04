import 'package:eventapp/BO/EventBO.dart';
import 'package:eventapp/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:mobx/mobx.dart';

part 'HomeScreenModel.g.dart';

// Create a HomeScreenModel
class HomeScreenModel = _HomeScreenModelBase with _$HomeScreenModel;

abstract class _HomeScreenModelBase with Store, NavigationMixin {
  // Create a variable category with  List<String> datatype and assign the value [] to it and make the variable as observable
  @observable
  List<String> category = [];

  // Create a variable category with  List<EventBO> datatype and assign the value [] to it and make the variable as observable
  @observable
  List<EventBO> eventDetails = [];

  /* Declare a method setCategory with required parameter categrory to assign the value to this.catgeory */
  @action
  void setCategory({required List<String> category}) {
    this.category = [];

    // Assign the value of paramter category to  this.category
    this.category = category;
  }

  /* Declare a method setEvents with required parameter eventDetails to assign the value to this.eventDetails */
  @action
  void setEvents({required List<EventBO> eventDetails}) {
    this.eventDetails = [];

    // Assign the value of paramter eventDetails to  this.eventDetails
    this.eventDetails = eventDetails;
  }
}
