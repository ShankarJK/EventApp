import 'package:eventapp/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:eventapp/Helpers/NavigationHelper/NavigationHelper.dart';
import 'package:eventapp/Pages/HomeScreen/HomeScreenVM.dart';
import 'package:flutter/material.dart';
import "package:flutter/services.dart";

// Create a statefulwidget for homescreen
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Create a instance of class HomeScreenVM
  final HomeScreenVM instance = HomeScreenVM();

  /* Invoke the initState() */
  @override
  void initState() {
    super.initState();

    //Using navigationstream and create a lister event
    instance.navigationStream.stream.listen((event) {
      // Checks for the condition event is NavigatorPush

      if (event is NavigatorPush) {
        // Using context.Push() pass the pageconfig and data
        context.push(pageConfig: event.pageConfig, data: event.data);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(children: [
            Container(
              height: 220,
              width: 475,
              decoration: const BoxDecoration(
                  color: Color(0xff4A43EC),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(27),
                      bottomRight: Radius.circular(27))),
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 24, right: 24),
                child: Column(children: [
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 17),
                            child: Image.asset(
                              "lib/Helpers/Resources/Asset/Images/menu.png",
                              height: 18,
                              width: 20,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Current Location",
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300),
                                    textAlign: TextAlign.center,
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down_sharp,
                                    color: Color(0xffFCFCFC),
                                    size: 29,
                                  )
                                ],
                              ),
                              const Text(
                                "New York, USA",
                                style: TextStyle(
                                    color: Color(0xffF4F4FE),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: CircleAvatar(
                              radius: 18,
                              backgroundColor: const Color(0xff5c56ee),
                              child: Image.asset(
                                "lib/Helpers/Resources/Asset/Images/notification.png",
                                width: 16,
                                height: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "lib/Helpers/Resources/Asset/Images/search.png",
                                height: 22,
                                width: 22,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 20,
                                width: 1,
                                decoration: const BoxDecoration(
                                    color: Color(0xff7974E7)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "Search...",
                                style: TextStyle(
                                    color: Color(0xff807bf2), fontSize: 20),
                              ),
                            ],
                          ),
                          Chip(
                            padding: const EdgeInsets.all(5),
                            backgroundColor: const Color(0xff5D56F3),
                            label: const Text(
                              "Filters",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            ),
                            avatar: Image.asset(
                                "lib/Helpers/Resources/Asset/Images/dropdown.png"),
                          )
                        ],
                      ),
                    ],
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 195.0),
              child: Center(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 50,
                  width: 350,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,

                      //Consume the category to find its length
                      itemCount: instance.category.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: [
                            Chip(
                                elevation: 2.3,
                                shadowColor: const Color(0xff2E2E4F),
                                padding: const EdgeInsets.all(5),
                                avatar: Image.asset(
                                    width: 18,
                                    height: 18,

                                    // Consume the category and checks for the instance.category[index] == "Sports" to assign the image
                                    instance.category[index] == "Sports"
                                        ? "lib/Helpers/Resources/Asset/Images/ball.png"
                                        : instance.category[index] == "Music"
                                            ? "lib/Helpers/Resources/Asset/Images/music.png"
                                            : instance.category[index] == "Food"
                                                ? "lib/Helpers/Resources/Asset/Images/food.png"
                                                : instance.category[index] ==
                                                        "Arts"
                                                    ? "lib/Helpers/Resources/Asset/Images/color.png"
                                                    : "lib/Helpers/Resources/Asset/Images/color.png"),
                                backgroundColor: Color(
                                    // Consume the category and checks for the  instance.category[index] == "Sports" to assign the color

                                    instance.category[index] == "Sports"
                                        ? 0xffF0635A
                                        : instance.category[index] == "Music"
                                            ? 0xffF59762
                                            : instance.category[index] == "Food"
                                                ? 0xff29D697
                                                : instance.category[index] ==
                                                        "Arts"
                                                    ? 0xff46CDFB
                                                    : 0xff46CDFB),
                                label: Text(
                                  // Consume the category [index]
                                  instance.category[index],
                                  style: const TextStyle(color: Colors.white),
                                )),
                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        );
                      }),
                ),
              ),
            ),
          ]),
          Padding(
            padding:
                const EdgeInsets.only(left: 24, right: 24, top: 28, bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Upcoming Events",
                  style: TextStyle(
                      color: Color(0xff120D26),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  children: const [
                    Text(
                      "See All",
                      style: TextStyle(color: Color(0xff747688), fontSize: 14),
                    ),
                    Icon(Icons.arrow_right, color: Color(0xff747688))
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 300,
            width: 400,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                //Consume the eventdetails and get its length
                itemCount: instance.eventDetails.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Card(
                        shadowColor: const Color.fromARGB(30, 80, 85, 136),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: const Color(0xffFFFFFF),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {
                            // Invoke the navigateEventDetails and pass the index as paramter
                            instance.navigateEventDetails(index);
                          },
                          child: Container(
                            height: 270,
                            width: 245,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 270,
                                  width: 245,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 135,
                                        width: 220,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                              filterQuality: FilterQuality.high,
                                              image: AssetImage(
                                                  // Consume the eventdetails to check instance.eventDetails[index] == "International Band Music Concert"
                                                  instance.eventDetails[index]
                                                              .event ==
                                                          "International Band Music Concert"
                                                      ? instance
                                                          .eventDetails[index]
                                                          .eventImage
                                                      : instance
                                                                  .eventDetails[
                                                                      index]
                                                                  .event ==
                                                              "Jo Malone London's Mountain View"
                                                          ? instance
                                                              .eventDetails[
                                                                  index]
                                                              .eventImage
                                                          : instance
                                                              .eventDetails[
                                                                  index]
                                                              .eventImage),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 45,
                                                width: 45,
                                                decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xfffff6f2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: const [
                                                    Text(
                                                      "10",
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                            Color(0xffF0635A),
                                                      ),
                                                    ),
                                                    Text("JUNE",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color:
                                                              Color(0xffF0635A),
                                                        )),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                  height: 35,
                                                  width: 35,
                                                  padding:
                                                      const EdgeInsets.all(4),
                                                  decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xfffff6f2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Icon(
                                                    // Consume the eventDetails and checks for the eventDetails[index].bookmarked == true
                                                    instance.eventDetails[index]
                                                                .bookMarked ==
                                                            true
                                                        ? Icons.bookmark_rounded
                                                        : instance
                                                                    .eventDetails[
                                                                        index]
                                                                    .bookMarked ==
                                                                false
                                                            ? Icons
                                                                .bookmark_border_rounded
                                                            : Icons
                                                                .bookmark_border_rounded,
                                                    color:
                                                        const Color(0xffF0635A),
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Column(
                                          children: [
                                            Text(
                                              overflow: TextOverflow.ellipsis,
                                              //Consume the eventDetails[index].event
                                              instance.eventDetails[index].event
                                                  .toString(),
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                CircleAvatar(
                                                  radius: 12,
                                                  backgroundImage: AssetImage(
                                                      //Consume the eventDetails[index].avatarone
                                                      instance
                                                          .eventDetails[index]
                                                          .avatarone),
                                                ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                CircleAvatar(
                                                  radius: 14,
                                                  backgroundImage: AssetImage(
                                                      //Consume the eventDetails[index].avatartwo
                                                      instance
                                                          .eventDetails[index]
                                                          .avatartwo),
                                                ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                Text(
                                                  instance.eventDetails[index]
                                                      .onGoing,
                                                  style: const TextStyle(
                                                      color: Color(0xff3F38DD),
                                                      fontSize: 12),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  size: 20,
                                                  Icons.location_on_rounded,
                                                  color: Color(0xff716E90),
                                                ),
                                                const SizedBox(
                                                  width: 3,
                                                ),
                                                Text(
                                                  //Consume the eventDetails[index].location
                                                  instance.eventDetails[index]
                                                      .location,
                                                  style: const TextStyle(
                                                      color: Color(0xff716E90),
                                                      fontSize: 13),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                          ),
                        ),
                      )
                    ],
                  );
                }),
          ),
          const SizedBox(
            height: 29,
          ),
          Stack(
            children: [
              Container(
                height: 140,
                width: 330,
                decoration: BoxDecoration(
                  color: const Color(0xffd6feff),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "Invite your friends",
                              style: TextStyle(
                                  color: Color(0xff120D26),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Get \$20 for ticket",
                              style: TextStyle(
                                  color: Color(0xff484D70),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 1),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 32,
                              width: 72,
                              decoration: BoxDecoration(
                                  color: const Color(0xff00F8FF),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Text(
                                textAlign: TextAlign.center,
                                "INVITE",
                                style: TextStyle(
                                    color: Color(0xffFFFFFF), fontSize: 12),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Positioned(
                bottom: -45,
                right: 0,
                child: Image.asset(
                  filterQuality: FilterQuality.high,
                  "lib/Helpers/Resources/Asset/Images/invite.png",
                  height: 190,
                  width: 190,
                  cacheWidth: 190 * 2,
                  cacheHeight: 150 * 2,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

/* Invoke the dispose() */
  @override
  void dispose() {
    // Using navigationStream.Close() close the stream
    instance.navigationStream.close();
    super.dispose();
  }

}
