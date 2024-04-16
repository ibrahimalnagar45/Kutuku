import 'package:flutter/material.dart';

const Color kcolor = Colors.blue;
const List<Event> events = [];

class CollageView extends StatelessWidget {
  const CollageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.privacy_tip_rounded,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const SearchView();
                  },
                ));
              },
              icon: const Icon(
                Icons.search,
              ),
            ),
            IconButton(
              highlightColor: kcolor,

              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => const AddEventSheet(),
                );
              },
              icon: const Icon(
                Icons.add,
              ),
              // selectedIcon: Icon(Icons.check),
            ),
          ],
        )
      ],
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: Colors.blue,
      //   child: const Icon(Icons.add),
      // ),
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          'Collage Notifier',
          style: TextStyle(
            color: kcolor,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                  height: MediaQuery.of(context).size.height - 150,
                  child: EnventsListView()),
            )
          ],
        ),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  const EventCard({
    super.key,
    required this.event,
    this.onTap,
  });
  final Event event;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 0, 100, 182).withOpacity(.3),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // boxShadow: [
                //   BoxShadow(
                //     offset: Offset(200, 0),
                //     color: const Color.fromARGB(255, 0, 100, 182).withOpacity(.3),
                //   )
                // ],
                // gradient: const LinearGradient(
                //   colors: [kcolor],
                //   begin: Alignment.centerLeft,
                //   end: Alignment.centerRight,
                // ),
                // // image: DecorationImage(
                // //   image:
                // //       AssetImage(event.image ?? 'assets/images/onboarding3.jpeg'),
                // ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  event.image ?? 'assets/images/no_image.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      event.title!,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 2, 56, 100),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${event.dateTime!.day}:${event.dateTime!.hour}:${event.dateTime!.minute}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EnventsListView extends StatelessWidget {
  EnventsListView({super.key});
  // remmber the const keyword for the constructor
  final List<Event> events = [
    Event(
      title: 'makeup',
      description: 'make make up easy',
      dateTime: DateTime.now(),
    ),
    Event(
      image: 'assets/images/onboarding1.jpeg',
      title: 'makeup',
      description: 'make make up easy',
      dateTime: DateTime.now(),
    ),
    Event(
      image: 'assets/icons/1.png',
      title: 'makeup',
      description: 'make make up easy',
      dateTime: DateTime.now(),
    ),
    Event(
      image: 'assets/images/onboarding1.jpeg',
      title: 'makeup',
      description: 'make make up easy',
      dateTime: DateTime.now(),
    ),
    Event(
      image: 'assets/images/onboarding1.jpeg',
      title: 'makeup',
      description: 'make make up easy',
      dateTime: DateTime.now(),
    ),
    Event(
      image: 'assets/images/onboarding1.jpeg',
      title: 'makeup',
      description: 'make make up easy',
      dateTime: DateTime.now(),
    ),
    Event(
      title: 'makeup',
      description: 'make make up easy',
      dateTime: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: events.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return EventDetailsView(
                    event: events[index],
                  );
                },
              ));
            },
            child: EventCard(
              event: events[index],
            ),
          ),
        );
      },
    );
  }
}

class EventDetailsView extends StatelessWidget {
  const EventDetailsView({super.key, required this.event});
  final Event event;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          event.title!,
          style: const TextStyle(
            color: kcolor,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(event.image!),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                '${event.dateTime!.day}:${event.dateTime!.hour}:${event.dateTime!.minute}',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              event.description!,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AddEventSheet extends StatefulWidget {
  const AddEventSheet({super.key});

  @override
  State<AddEventSheet> createState() => _AddEventSheetState();
}

class _AddEventSheetState extends State<AddEventSheet> {
  String? title, des;
  DateTime? time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView(
        children: [
          const Center(
            child: Text(
              'Add New Event',
              style: TextStyle(
                color: kcolor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          TextFormField(
            style: const TextStyle(color: kcolor),
            onSaved: (value) {
              title = value;
            },
            cursorColor: kcolor,
            cursorWidth: .8,
            decoration: InputDecoration(
              hintText: 'Event Title',
              hintFadeDuration: const Duration(milliseconds: 500),
              contentPadding: const EdgeInsets.only(left: 20),
              border: outLineInputBorder(),
              // enabledBorder: outLineInputBorder(),
              // disabledBorder: outLineInputBorder(),
              focusedBorder: outLineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            onSaved: (value) {
              des = value;
            },
            cursorColor: kcolor,
            cursorWidth: .8,
            decoration: InputDecoration(
              hintText: 'Event Description',
              hintFadeDuration: const Duration(milliseconds: 500),
              contentPadding: const EdgeInsets.only(left: 20),
              border: outLineInputBorder(),
              // enabledBorder: outLineInputBorder(),
              // disabledBorder: outLineInputBorder(),
              focusedBorder: outLineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            onSaved: (value) {
              time = value as DateTime;
            },
            cursorColor: kcolor,
            cursorWidth: .8,
            decoration: InputDecoration(
              hintText: 'Event Time',
              hintFadeDuration: const Duration(milliseconds: 500),
              contentPadding: const EdgeInsets.only(left: 20),
              border: outLineInputBorder(),
              // enabledBorder: outLineInputBorder(),
              // disabledBorder: outLineInputBorder(),
              focusedBorder: outLineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              events.add(
                Event(title: title, description: des, dateTime: time),
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              height: 60,
              decoration: BoxDecoration(
                color: kcolor,
                borderRadius: BorderRadius.circular(28),
              ),
              child: const Center(
                child: Text(
                  'Add',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search Events',
          style: TextStyle(
            color: kcolor,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            TextFormField(
              // onSaved: (value) {
              //   title = value;
              // },
              style: const TextStyle(color: kcolor),
              cursorColor: kcolor,
              cursorWidth: .8,
              decoration: InputDecoration(
                hintText: 'Search For An Event',
                hintFadeDuration: const Duration(milliseconds: 500),
                contentPadding: const EdgeInsets.only(left: 20),
                border: outLineInputBorder(),
                // enabledBorder: outLineInputBorder(),
                // disabledBorder: outLineInputBorder(),
                focusedBorder: outLineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

OutlineInputBorder outLineInputBorder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(color: kcolor, width: .8),
    borderRadius: BorderRadius.circular(
      28,
    ),
  );
}


class Event {
  String? image;
  String? title;
  String? description;
  DateTime? dateTime;

  Event({
    this.image,
    this.title,
    this.description,
    this.dateTime,
  });
}
