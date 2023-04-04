// Create a class named EventBO
class EventBO {
  // Declare a variable named event with datatype as string
  String event = "";
  // Declare a variable named location with datatype as string
  String location = "";
  // Declare a variable named eventImage with datatype as string
  String eventImage = "";
  // Declare a variable named avatarone with datatype as string
  String avatarone = "";
  // Declare a variable named avatartwo with datatype as string
  String avatartwo = "";
  // Declare a variable named bookMarked with datatype as string
  bool bookMarked = true;
  // Declare a variable named eventdate with datatype as string
  String eventdate = "";
  // Declare a variable named onGoing with datatype as string
  String onGoing = "";
  // Declare a variable named daytime with datatype as string
  String daytime = "";
  // Declare a variable named organizer with datatype as string
  String organizer;
  // Declare a variable named organizerImage with datatype as string
  String organizerImage ;
  // Declare a variable named eventStadium with datatype as string
  String eventStadium ;

  /* Declare a Constructor named EventBO with required parameter as event , loaction ,
   eventImage, avatarone, avatartwo, bookmarked ,eventdate, ongoing , daytime, organizer , eventStadium , organizerImage */

  EventBO({
    required this.event,
    required this.location,
    required this.eventImage,
    required this.avatarone,
    required this.avatartwo,
    required this.bookMarked,
    required this.eventdate,
    required this.onGoing,
    required this.daytime,
    required this.organizer,
    required this.eventStadium,
    required this.organizerImage,
  });
}
