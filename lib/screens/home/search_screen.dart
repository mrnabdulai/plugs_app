import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/majesticons.dart';
import 'package:plugs_app/constants/colors.dart';
import 'package:plugs_app/utils/ui.dart';
import 'package:plugs_app/widgets/plugs/trending_plug_view.dart';
import 'package:plugs_app/widgets/search/search_chip.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<String> _locations = ["Kumasi", "Accra", "Tamale"];
  final List<String> _products = ["Phones", "Sneakers", "Cosmetics"];
  final List<String> _services = ["Phone Repairs", "Carpentry", "Plumbing"];
  final List<String> _chips = ["Location", "Products", "Services"];
  List<String> _searchTypeList = [];
  final List<Widget> _randomPlugsList =
      List.generate(20, (index) => TrendingPlugView());
  bool isSearching = true;
  int _selectedChipIndex = 0;

  void _setSearchType() {
    if (_selectedChipIndex == 0) {
      setState(() {
        _searchTypeList = _locations;
      });
      return;
    }

    if (_selectedChipIndex == 1) {
      setState(() {
        _searchTypeList = _products;
      });
      return;
    }
    if (_selectedChipIndex == 2) {
      setState(() {
        _searchTypeList = _services;
        return;
      });
    }
  }

  @override
  void initState() {
    _searchTypeList = _locations;
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isSearching = false;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60.h,
                padding: EdgeInsets.only(right: 24.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(56.r),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Color(0xFF000000).withOpacity(0.07),
                      offset: Offset(0.0, 6.0),
                      blurRadius: 14.0,
                    ),
                  ],
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search Dealers, Locations, Products",
                    hintStyle: TextStyle(color: Color(0xFF828282)),
                    filled: true,
                    fillColor: primaryLightBgColor,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(56.r),
                        borderSide: BorderSide.none),
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon:
                          Iconify(Majesticons.search, color: primaryIconColor),
                    ),
                  ),
                ),
              ),
              addVerticalSpace(20.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ..._chips.asMap().entries.map((chip) {
                      int idx = chip.key;
                      String text = chip.value;
                      return GestureDetector(
                        onTap: ()  async{
                          setState(() {
                            _selectedChipIndex = idx;
                            _setSearchType();
                          });
                          setState(() {
                            isSearching = true;
                          });
                          await Future.delayed(Duration(seconds: 3), () {
                            setState(() {
                              isSearching = false;
                            });
                          },);
                        },
                        child: SearchChip(
                          text: text,
                          index: idx,
                          isSelected: _selectedChipIndex == idx,
                        ),
                      );
                    }),
                  ],
                ),
              ),
              addVerticalSpace(20.h),
              Padding(
                padding: EdgeInsets.only(right: 24.w),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  decoration: BoxDecoration(
                    color: primaryLightBgColor,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      alignedDropdown: true,
                      child: DropdownButton<String>(
                          isExpanded: true,
                          borderRadius: BorderRadius.circular(20.r),
                          underline: Container(),
                          value: _searchTypeList.first,
                          alignment: Alignment.bottomCenter,
                          items: [
                            ..._searchTypeList.map(
                              (location) => DropdownMenuItem<String>(
                                value: location,
                                child: Text(
                                  location,
                                  style: TextStyle(color: primaryLightText),
                                ),
                              ),
                            ),
                          ],
                          onChanged: (value) async{
                            setState(() {
                              isSearching = true;
                            });
                            await Future.delayed(Duration(seconds: 3), () {
                              setState(() {
                                isSearching = false;
                              });
                            },);
                          }),
                    ),
                  ),
                ),
              ),
              addVerticalSpace(20.h),
              isSearching
                  ? Center(child: CircularProgressIndicator())
                  : Column(children: _randomPlugsList),
            ],
          ),
        ),
      ),
    );
  }
}
