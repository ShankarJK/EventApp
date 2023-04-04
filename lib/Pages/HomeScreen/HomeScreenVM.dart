import 'package:eventapp/BO/EventBO.dart';
import 'package:eventapp/Pages/HomeScreen/HomeScreenModel.dart';

import '../../Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import '../../Helpers/NavigationHelper/Routes.dart';

// Create a class named HomeScreenVM which extends HomeScreenModel
class HomeScreenVM extends HomeScreenModel {
  /*  Create a constructor named HomeScreenVM()  */
  HomeScreenVM() {
    // Invoke the setCategory and pass the value to the paarameter
    setCategory(category: [
      "Sports",
      "Music",
      "Food",
      "Art",
    ]);

    /* Invoke the setEvents and pass the parameter*/
    setEvents(eventDetails: [
      EventBO(
          event: "International Band Music Concert",
          location: "36 Guild Street London, UK ",
          eventImage: "lib/Helpers/Resources/Asset/Images/image.png",
          avatarone: "lib/Helpers/Resources/Asset/Images/person.png",
          avatartwo: "lib/Helpers/Resources/Asset/Images/person1.png",
          bookMarked: true,
          daytime: "Tuesday, 4:00PM - 9:00PM",
          eventStadium: "Gala Convention Center",
          eventdate: "14 December, 2021",
          onGoing: '+20 Going',
          organizer: 'Ashfak Sayem',
          organizerImage: "lib/Helpers/Resources/Asset/Images/iconbg.png"),
      EventBO(
          event: "Jo Malone London's Mountain View",
          location: "Radius Gallery Santa Cruz, CA",
          eventImage: "lib/Helpers/Resources/Asset/Images/image1.png",
          avatarone: "lib/Helpers/Resources/Asset/Images/person.png",
          avatartwo: "lib/Helpers/Resources/Asset/Images/person1.png",
          bookMarked: false,
          daytime: "Friday, 6:00PM - 9:00PM",
          eventStadium: "Wala  Center",
          eventdate: "9 October, 2021",
          onGoing: '+20 Going',
          organizer: 'Jk Nivi',
          organizerImage: "lib/Helpers/Resources/Asset/Images/iconbg.png")
    ]);
  }

  /* Create a method  navigateEventDetails with parameter indexs */

  void navigateEventDetails(int indexs) {
    // Using navigatorstream.add methods invoke the NavigatorPush and pass the pageconfig and data as paramter
    navigationStream.add(NavigatorPush(
        pageConfig: Pages.aboutScreenConfig, data: eventDetails[indexs]));
  }
}
