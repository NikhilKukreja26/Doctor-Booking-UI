import 'package:flutter/material.dart';

import '../data/data.dart';
import '../models/speciality_model.dart';
import '../views/doctor_info.dart';

String selectedCategory = 'Adults';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> categories = [
    "Adults",
    "Childrens",
    "Womens",
    "Mens",
  ];

  List<SpecialityModel> specailityModel;

  @override
  void initState() {
    super.initState();
    specailityModel = getSpeciality();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 50.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Find Your\nConsulation',
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 40.0),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                height: 50.0,
                decoration: BoxDecoration(
                  color: Color(0xFFEFEFEF),
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: Row(
                  children: <Widget>[
                    const Icon(Icons.search),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Text(
                      'Search',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 19.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30.0),
              const Text(
                'Categories',
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                height: 30.0,
                child: ListView.builder(
                  itemCount: categories.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, int index) => CategoriesTile(
                    category: categories[index],
                    isSelected: selectedCategory == categories[index],
                    context: this,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 250.0,
                child: ListView.builder(
                  itemCount: specailityModel.length,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) => SpecialListTile(
                    imageAssetPath: specailityModel[index].imageAssetPath,
                    speciality: specailityModel[index].speciality,
                    noOfDoctors: specailityModel[index].noOfDoctors,
                    backColor: specailityModel[index].backgroundColor,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Doctors',
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              DoctorsTile(),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesTile extends StatefulWidget {
  final String category;
  final bool isSelected;
  _HomePageState context;

  CategoriesTile({Key key, this.category, this.isSelected, this.context})
      : super(key: key);

  @override
  _CategoriesTileState createState() => _CategoriesTileState();
}

class _CategoriesTileState extends State<CategoriesTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.context.setState(() {
          selectedCategory = widget.category;
        });
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        margin: const EdgeInsets.only(left: 8.0),
        height: 30.0,
        decoration: BoxDecoration(
          color: widget.isSelected ? Color(0xFFFFD0AA) : Colors.white,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Text(
          widget.category,
          style: TextStyle(
            color: widget.isSelected ? Color(0xFFFC9535) : Color(0xFFA1A1A1),
          ),
        ),
      ),
    );
  }
}

class SpecialListTile extends StatelessWidget {
  final String imageAssetPath;
  final String speciality;
  final int noOfDoctors;
  final Color backColor;

  const SpecialListTile({
    Key key,
    @required this.imageAssetPath,
    @required this.speciality,
    @required this.noOfDoctors,
    @required this.backColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      margin: const EdgeInsets.only(right: 16.0),
      padding: const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
      decoration: BoxDecoration(
        color: backColor,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            speciality,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 6.0),
          Text(
            '$noOfDoctors Doctors',
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
          Image.asset(
            imageAssetPath,
            height: 160,
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
  }
}

class DoctorsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DoctorInfo(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0),
        decoration: BoxDecoration(
          color: Color(0xffFFEEE0),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: <Widget>[
            Image.asset(
              'assets/doctor_pic.png',
              height: 50.0,
            ),
            const SizedBox(width: 17.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Dr. Stefeni Albert",
                  style: TextStyle(color: Color(0xffFC9535), fontSize: 19),
                ),
                const SizedBox(height: 2.0),
                Text(
                  "Heart Speailist",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            Spacer(),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 9.0),
              decoration: BoxDecoration(
                color: Color(0xFFFBB97C),
                borderRadius: BorderRadius.circular(13.0),
              ),
              child: Text(
                'Call',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
