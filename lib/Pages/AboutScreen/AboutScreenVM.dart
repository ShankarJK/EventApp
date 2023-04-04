import 'package:eventapp/BO/EventBO.dart';
import 'package:eventapp/Pages/AboutScreen/AboutScreen.dart';
import 'package:flutter/material.dart';
import 'package:eventapp/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'AboutScreenModel.dart';

// Create a class AboutScreenVM which extends AboutScreenModel

class AboutScreenVM extends AboutScreenModel {

  /* Create a constructor AboutScreenVM and assign the value of parameter to the event */

  AboutScreenVM({required EventBO event}) {
   this.event = event;
  }

  /* Declare a method named navigatesback() to navigate to previous page*/

  void navigatesback() {

    // Using navigatorstream.add methods invoke the Navigatorpop
    navigationStream.add(NavigatorPop());
  }

}
