import 'package:mobx/mobx.dart';

import '../../BO/EventBO.dart';
import '../../Helpers/NavigationHelper/Mixin/NavigationMixin.dart';

part 'AboutScreenModel.g.dart';

// Create a AboutScreenModel

class AboutScreenModel = _AboutScreenModelBase with _$AboutScreenModel;

abstract class _AboutScreenModelBase with Store, NavigationMixin {

  // Create a instance event of class EventBO with pass value to the constructor
  late EventBO event;
  
}
