import 'package:flutter/material.dart';

class DashboardTab extends StatelessWidget {
  const DashboardTab({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'search properties',
                prefixIcon: Icon(Icons.search),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            height: _mediaQuery.size.height * 0.0008,
          ),
          Container(
            height: _mediaQuery.size.height * 0.05,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 227, 236, 254),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 8),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 11, left: 10),
                    child: Icon(
                      Icons.info,
                      color: Color.fromARGB(255, 44, 3, 230),
                      size: 24,
                    ),
                  ),
                  SizedBox(width: _mediaQuery.size.width * 0.05),
                  Text(
                    'Hurray! you have 1 Active Property',
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 33, 5, 240)),
                  ),
                ],
              ),
            ),
          ),

          //horizontal scrollable items
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            width: double.infinity,
            height: _mediaQuery.size.height * 0.17,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        width: _mediaQuery.size.width * 0.3,
                        height: _mediaQuery.size.height * 0.15,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.black.withOpacity(0.2),
                            width: 1.0,
                          ),
                        ),
                        //text and icons inside the container
                        child: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '0',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: _mediaQuery.size.height * 0.035,
                              ),
                              Row(
                                children: [
                                  Text('Total\nRooms'),
                                  SizedBox(
                                    width: _mediaQuery.size.width * 0.04,
                                  ),
                                  Icon(
                                    Icons.door_front_door,
                                    color: Colors.green,
                                    size: 31,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: _mediaQuery.size.width * 0.05),
                      Container(
                        width: _mediaQuery.size.width * 0.3,
                        height: _mediaQuery.size.height * 0.15,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.black.withOpacity(0.2),
                            width: 1.0,
                          ),
                        ),
                        //text and icons inside the container
                        child: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '0',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: _mediaQuery.size.height * 0.035,
                              ),
                              Row(
                                children: [
                                  Text('Total\nRooms'),
                                  SizedBox(
                                    width: _mediaQuery.size.width * 0.04,
                                  ),
                                  Icon(
                                    Icons.door_front_door,
                                    color: Colors.red,
                                    size: 31,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: _mediaQuery.size.width * 0.05),
                      Container(
                        width: _mediaQuery.size.width * 0.3,
                        height: _mediaQuery.size.height * 0.15,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.black.withOpacity(0.2),
                            width: 1.0,
                          ),
                        ),
                        //text and icons inside the container
                        child: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '0',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: _mediaQuery.size.height * 0.035,
                              ),
                              Row(
                                children: [
                                  Text('Total\nRooms'),
                                  SizedBox(
                                    width: _mediaQuery.size.width * 0.04,
                                  ),
                                  Icon(
                                    Icons.door_front_door,
                                    color: Colors.black54,
                                    size: 31,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: _mediaQuery.size.width * 0.05),
                      Container(
                        width: _mediaQuery.size.width * 0.3,
                        height: _mediaQuery.size.height * 0.15,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.black.withOpacity(0.2),
                            width: 1.0,
                          ),
                        ),
                        //text and icons inside the container
                        child: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '0',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: _mediaQuery.size.height * 0.035,
                              ),
                              Row(
                                children: [
                                  Text('Total\nRooms'),
                                  SizedBox(
                                    width: _mediaQuery.size.width * 0.04,
                                  ),
                                  Icon(
                                    Icons.door_front_door,
                                    color: Colors.orange,
                                    size: 31,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
