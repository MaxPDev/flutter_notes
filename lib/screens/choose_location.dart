import 'package:flutter/material.dart';

import 'package:fr_piscadev_reminder/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
	    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
	    WorldTime(url: 'Europe/Athens', location: 'Athens', flag: 'greece.png'),
	    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
	    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
	    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
	    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
	    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
	    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
	  ];

  void updateTime(index) async {
    // This is not instance creation, only storing a selected instance from the list
    WorldTime instance = locations[index];
    await instance.getTime();
    print(instance.location);
    print('${instance.time} ${instance.location}');

    if (!mounted) return;
    Navigator.pop(context, {
        'location': instance.location,
        'flag': instance.flag,
        'time': instance.time,
        'isDayTime': instance.isDayTime
    });
  }


  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],

      // Add automatically a back arrow
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose location'),
        centerTitle: true,
        elevation: 0,
      ),

      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              // ListTile : Liste prét faites
              child: ListTile(
                onTap: () {
                  updateTime(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
                // dense:true,
              )
            ),
          );
        }
        )



    );
  }
}