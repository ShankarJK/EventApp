import 'package:eventapp/BO/EventBO.dart';
import 'package:eventapp/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:eventapp/Helpers/NavigationHelper/NavigationHelper.dart';
import 'package:flutter/material.dart';


import '../../Helpers/NavigationHelper/Routes.dart';
import 'AboutScreenVM.dart';

// Create statefulwidget for AboutScreen
class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key, required this.value});
  // Declare a variable value of type EventBO
  final EventBO value;

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  // Create a instance of class AboutScreenVM
  late final AboutScreenVM _inst = AboutScreenVM(event: widget.value);

  /* Invoke the initstate() */
  @override
  void initState() {
    super.initState();

    // Using navigationstream and create a lister event
    _inst.navigationStream.stream.listen((event) {
      // Checks for the condition event is NavigatorPop
      if (event is NavigatorPop) {
        // Using context.pop() we pass the pageconfig to navigate
        context.pop(pageConfig: Pages.homeScreenConfig);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xff000000)),
        backgroundColor: const Color(0xffffffff),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Color(0xff000000),
          ),
          // Invoke navigatesback()
          onPressed: _inst.navigatesback,
        ),
        title: const Text(
          "Event Details",
          style: TextStyle(
              color: Color(0xff000000),
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              // Checks for the event.bookmarked == true
              _inst.event.bookMarked == true
                  ? Icons.bookmark_rounded
                  : Icons.bookmark_border_rounded,
              color: const Color(0xff000000),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "lib/Helpers/Resources/Asset/Images/bg.png",
            filterQuality: FilterQuality.high,
            cacheHeight: 200,
            cacheWidth: 400,
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15, top: 30, bottom: 0),
            child: SizedBox(
              height: 500,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Text(
                    // Consume the value of event.event
                    _inst.event.event,
                    style: const TextStyle(
                        color: Color(0xff120D26),
                        fontSize: 30,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Container(
                              alignment: Alignment.topLeft,
                              height: 48,
                              width: 48,
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  color: const Color(0xffe5e5e5),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                  "lib/Helpers/Resources/Asset/Images/Calendar.png")),
                          title: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  // Consume the value of event.eventdate
                                  _inst.event.eventdate.toString(),
                                  style: const TextStyle(
                                      color: Color(0xff120D26),
                                      letterSpacing: 1,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  // Consume the value of event.daytime
                                  _inst.event.daytime.toString(),
                                  style: const TextStyle(
                                      color: Color(0xff747688),
                                      letterSpacing: 1,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        ListTile(
                          leading: Container(
                              height: 48,
                              width: 48,
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  color: const Color(0xffe5e5e5),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                  "lib/Helpers/Resources/Asset/Images/Location.png")),
                          title: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  // Consume the value of event.eventStadium
                                  _inst.event.eventStadium.toString(),
                                  style: const TextStyle(
                                      color: Color(0xff120D26),
                                      letterSpacing: 1,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  // Consume the value of event.location
                                  _inst.event.location.toString(),
                                  style: const TextStyle(
                                      color: Color(0xff747688),
                                      letterSpacing: 1,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        ListTile(
                          leading: Container(
                            height: 48,
                            width: 48,
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                color: const Color(0xffe5e5e5),
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: AssetImage(
                                    // Consume the value of event.organizerImage
                                    _inst.event.organizerImage))),
                          ),
                          title: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  // Consume the value of event.organizer
                                  _inst.event.organizer.toString(),
                                  style: const TextStyle(
                                      color: Color(0xff120D26),
                                      letterSpacing: 1,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Organizer",
                                  style: TextStyle(
                                      color: Color(0xff747688),
                                      letterSpacing: 1,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          trailing: Container(
                            alignment: Alignment.center,
                            height: 28,
                            width: 60,
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                color: const Color(0xffe5e5e5),
                                borderRadius: BorderRadius.circular(5)),
                            child: const Text(
                              "Follow",
                              style: TextStyle(
                                  color: Color(0xff5669FF), fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Text(
                    "About Event",
                    style: TextStyle(
                        color: Color(0xff120D26),
                        letterSpacing: 1,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. Read More...",
                    style: TextStyle(
                        color: Color(0xff120D26),
                        letterSpacing: 1,
                        wordSpacing: 1,
                        height: 1.6,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xff5669FF),
        onPressed: () {},
        label: Row(
          children: const [
            Text(
              "Buy Ticket \$120",
              style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
            ),
            SizedBox(
              width: 15,
            ),
            CircleAvatar(
                radius: 15,
                backgroundColor: Color(0xff3D56F0),
                child: Icon(
                  Icons.arrow_forward_rounded,
                  size: 20,
                ))
          ],
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  /* Invoke the dispose() */
  @override
  void dispose() {
    // Using navigationStream.Close() close the stream
    _inst.navigationStream.close();
    super.dispose();
  }

}
