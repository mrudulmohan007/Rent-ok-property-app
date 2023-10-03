import 'package:flutter/material.dart';

class DashboardTab extends StatefulWidget {
  const DashboardTab({super.key});

  @override
  State<DashboardTab> createState() => _DashboardTabState();
}

class _DashboardTabState extends State<DashboardTab> {
  bool showMoreOptions = false;
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Search properties',
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: _mediaQuery.size.height * 0.0008,
                ),
                Container(
                  height: _mediaQuery.size.height * 0.08,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 227, 236, 254),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 8),
                    child: Row(
                      children: [
                        Icon(
                          Icons.info,
                          color: Color.fromARGB(255, 44, 3, 230),
                          size: 24,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Hurray! you have 1 Active Property',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 33, 5, 240),
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
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
                                        Text('Under\nNotice'),
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
                                        Text('Vacant\nBeds'),
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
                                        Text('Total\nBookings'),
                                        SizedBox(
                                          width: _mediaQuery.size.width * 0.01,
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
                SizedBox(
                  height: _mediaQuery.size.height * 0.05,
                ),
                Container(
                  width: 350,
                  height: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(
                        style: BorderStyle.solid, color: Colors.white),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                child: Icon(
                                  Icons.home,
                                  color: Colors.grey,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Achu",
                                    style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "0 Rooms/ 0 beds",
                                    style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "6915547520A",
                                    style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 13, 2, 216),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Current",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        height: 1,
                        color: Colors.grey.shade500,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        width: double.infinity,
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          physics: AlwaysScrollableScrollPhysics(),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 300,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    // text and icons inside the container
                                    child: Padding(
                                      padding: const EdgeInsets.all(11.0),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.bed_outlined,
                                                color: Colors.green,
                                                size: 30,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text('Filled Beds'),
                                            ],
                                          ),
                                          Text(
                                            '0',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 16), // Adjust the spacing
                                  Container(
                                    width: 300,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    // text and icons inside the container
                                    child: Padding(
                                      padding: const EdgeInsets.all(11.0),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.bed_outlined,
                                                color: Colors.red,
                                                size: 30,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text('Vacant Beds'),
                                            ],
                                          ),
                                          Text(
                                            '0',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  Container(
                                    width: 300,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    // text and icons inside the container
                                    child: Padding(
                                      padding: const EdgeInsets.all(11.0),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.bed_outlined,
                                                color: Colors.yellow,
                                                size: 30,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text('Under Notice'),
                                            ],
                                          ),
                                          Text(
                                            '0',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  Container(
                                    width: 300,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    // text and icons inside the container
                                    child: Padding(
                                      padding: const EdgeInsets.all(11.0),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.group_outlined,
                                                color: Colors.purple,
                                                size: 30,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text('Tenants Beds'),
                                            ],
                                          ),
                                          Text(
                                            '0',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  if (showMoreOptions)
                                    Column(
                                      children: [
                                        Container(
                                          width: 300,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          // Add more options here
                                          child: Padding(
                                            padding: const EdgeInsets.all(11.0),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.monetization_on,
                                                      color: Colors.green,
                                                      size: 30,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text('Collections'),
                                                  ],
                                                ),
                                                Text(
                                                  '₹0',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 16),
                                        Container(
                                          width: 300,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          // text and icons inside the container
                                          child: Padding(
                                            padding: const EdgeInsets.all(11.0),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.group_outlined,
                                                      color: Colors.pinkAccent,
                                                      size: 30,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text('Leads'),
                                                  ],
                                                ),
                                                Text(
                                                  '0',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                  SizedBox(width: 16),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        showMoreOptions = !showMoreOptions;
                                      });
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          showMoreOptions
                                              ? 'Show Less'
                                              : 'View More',
                                          style: TextStyle(
                                            color: Colors.blue,
                                            decoration:
                                            TextDecoration.underline,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 350,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            color: Color.fromARGB(255, 13, 2, 216)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.share,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Share My Website',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            // Positioned(
            //     bottom: 120,
            //     right: 16,
            //     child: Container(
            //       width: 150,
            //       height: 30,
            //       decoration: BoxDecoration(
            //         color: Color.fromARGB(255, 44, 3, 230),
            //         borderRadius: BorderRadius.circular(15),
            //       ),
            //       child: Center(
            //         child: Text(
            //           'Add new Property',
            //           style: TextStyle(
            //             color: Colors.white
            //           ),
            //         ),
            //       ),
            //     ))
          ],
        ),
      ),
    );
  }
}
