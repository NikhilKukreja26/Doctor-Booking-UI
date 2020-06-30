import 'package:flutter/material.dart';

class DoctorInfo extends StatefulWidget {
  @override
  _DoctorInfoState createState() => _DoctorInfoState();
}

class _DoctorInfoState extends State<DoctorInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 40.0),
              Row(
                children: <Widget>[
                  Image.asset(
                    'assets/doctor_pic2.png',
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 20.0),
                  Container(
                    height: 200.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Dr. Stefeni Albert",
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 2.0),
                        Text(
                          "Heart Speailist",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 19.0,
                          ),
                        ),
                        SizedBox(
                          height: 70.0,
                        ),
                        Row(
                          children: <Widget>[
                            IconTile(
                              color: Color(0xFFFFECDD),
                              imageAssetpath: 'assets/email.png',
                            ),
                            IconTile(
                              color: Color(0xFFFEF2F0),
                              imageAssetpath: 'assets/call.png',
                            ),
                            IconTile(
                              color: Color(0xFFEBECEF),
                              imageAssetpath: 'assets/video_call.png',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 26.0),
              Text('About'),
              const SizedBox(height: 16.0),
              Text(
                "Dr. Stefeni Albert is a cardiologist in Nashville & affiliated with multiple hospitals in the  area.He received his medical degree from Duke University School of Medicine and has been in practice for more than 20 years. ",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 24.0),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset("assets/mappin.png"),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Address",
                                style: TextStyle(
                                    color: Colors.black87.withOpacity(0.7),
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width - 268,
                                  child: Text(
                                    "House # 2, Road # 5, Green Road Dhanmondi, Dhaka, Bangladesh",
                                    style: TextStyle(color: Colors.grey),
                                  ))
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset("assets/clock.png"),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Daily Practict",
                                style: TextStyle(
                                    color: Colors.black87.withOpacity(0.7),
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width - 268,
                                child: Text(
                                  '''Monday - Friday
Open till 7 Pm''',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Image.asset(
                    "assets/map.png",
                    width: 180,
                  )
                ],
              ),
              Text(
                "Activity",
                style: TextStyle(
                    color: Color(0xff242424),
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                      decoration: BoxDecoration(
                          color: Color(0xffFBB97C),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Color(0xffFCCA9B),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Image.asset("assets/list.png")),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2 - 130,
                            child: Text(
                              "List Of Schedule",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                      decoration: BoxDecoration(
                          color: Color(0xffA5A5A5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Color(0xffBBBBBB),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Image.asset("assets/list.png")),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2 - 130,
                            child: Text(
                              "Doctor's Daily Post",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 22,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconTile extends StatelessWidget {
  final String imageAssetpath;
  final Color color;

  const IconTile({Key key, @required this.imageAssetpath, @required this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      margin: const EdgeInsets.only(right: 16.0),
      height: 45.0,
      width: 45.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Image.asset(
        imageAssetpath,
        width: 20.0,
      ),
    ));
  }
}
