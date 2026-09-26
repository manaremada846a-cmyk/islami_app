import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_app/commen/colors.dart';
import 'package:islami_app/models/suras_data.dart';
import 'package:islami_app/gen/assets.gen.dart';
import 'package:islami_app/screens/sura_detailes_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class QuranTab extends StatefulWidget {
  const QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  
  static const String mostRecentKey = "most_recent_ids";

  final TextEditingController searchController = TextEditingController();

  List<SurasData> filteredSuras = SurasData.allSuras;

  List<SurasData> mostRecentSuras = [];

  @override
  void initState() {
    super.initState();
    loadMostRecent();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

 
  Future<void> loadMostRecent() async {
    final prefs = await SharedPreferences.getInstance();

    
    final List<String> savedIds = prefs.getStringList(mostRecentKey) ?? [];

     final List<SurasData> loadedSuras = savedIds
        .map((idString) {
          final id = int.parse(idString);
           return SurasData.allSuras.firstWhere((sura) => sura.id == id);
        })
        .toList();

    setState(() {
      mostRecentSuras = loadedSuras;
    });
  }
 
  Future<void> saveMostRecent() async {
    final prefs = await SharedPreferences.getInstance();

     final List<String> idsToSave =
        mostRecentSuras.map((sura) => sura.id.toString()).toList();

    await prefs.setStringList(mostRecentKey, idsToSave);
  }

  void searchSuras(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredSuras = SurasData.allSuras;
      } else {
        filteredSuras = SurasData.allSuras.where((sura) {
          final matchesArabic = sura.suraNameAr.contains(query);
          final matchesEnglish =
              sura.suraNameEn.toLowerCase().contains(query.toLowerCase());
          return matchesArabic || matchesEnglish;
        }).toList();
      }
    });
  }

  void addToMostRecent(SurasData sura) {
    setState(() {
      mostRecentSuras.removeWhere((element) => element.id == sura.id);
      mostRecentSuras.insert(0, sura);

      if (mostRecentSuras.length > 10) {
        mostRecentSuras = mostRecentSuras.sublist(0, 10);
      }
    });

     saveMostRecent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(Assets.tajMahalAgraIndia1.path, fit: BoxFit.cover),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    AppColors.blackColor.withValues(alpha: 0.85),
                    AppColors.grayColor.withValues(alpha: .94),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 29),
                  child: Image.asset(Assets.imgHeader.path),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    controller: searchController,
                    onChanged: searchSuras,
                    style: TextStyle(color: AppColors.whiteColor),
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(Assets.quranSvgrepoCom1),
                      ),
                      hint: Text(
                        "Sura Name",
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: AppColors.goldColor),
                      ),
                      filled: true,
                      fillColor: AppColors.grayColor.withValues(alpha: .7),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: AppColors.goldColor),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 5),
                  child: Row(
                    children: [
                      Text(
                        "Most Recently",
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: mostRecentSuras.isEmpty
                        ? Center(
                            child: Text(
                              "لسه معندكش سور اتفتحت",
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 14,
                              ),
                            ),
                          )
                        : ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: mostRecentSuras.length,
                            itemBuilder: (context, index) {
                              final surasdata = mostRecentSuras[index];
                              return GestureDetector(
                                onTap: () {
                                  addToMostRecent(surasdata);
                                  Navigator.of(context).pushNamed(
                                    SuraDetailesScreen.appRoute,
                                    arguments: surasdata,
                                  );
                                },
                                child: SizedBox(
                                  width: 310,
                                  height: 150,
                                  child: Card(
                                    color: AppColors.goldColor,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                            left: 10,
                                          ),
                                          child: Column(
                                            spacing: 8,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                surasdata.suraNameEn,
                                                style: TextStyle(
                                                  color: AppColors.blackColor,
                                                  fontSize: 23,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Text(
                                                surasdata.suraNameAr,
                                                style: TextStyle(
                                                  color: AppColors.blackColor,
                                                  fontSize: 23,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Text(
                                                "${surasdata.ayasNunmber} Verses",
                                                style: TextStyle(
                                                  color: AppColors.blackColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5,
                                            bottom: 5,
                                          ),
                                          child: Image.asset(
                                              Assets.quranCard.path),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        "Suras List",
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: filteredSuras.isEmpty
                      ? Center(
                          child: Text(
                            "مفيش سورة بالاسم ده",
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 16,
                            ),
                          ),
                        )
                      : ListView.separated(
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return surasDataGet(filteredSuras[index], context);
                          },
                          separatorBuilder: (context, index) {
                            return Divider(
                              color: AppColors.whiteColor,
                              endIndent: 50,
                              indent: 50,
                              height: 0.5,
                            );
                          },
                          itemCount: filteredSuras.length,
                        ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  ListTile surasDataGet(SurasData surasdata, BuildContext context) {
    return ListTile(
      onTap: () {
        addToMostRecent(surasdata);
        Navigator.of(context)
            .pushNamed(SuraDetailesScreen.appRoute, arguments: surasdata);
      },
      contentPadding: EdgeInsets.only(left: 20, right: 20),
      leading: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(Assets.imgSurNumberFrame),
          Text(
            (surasdata.id).toString(),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.whiteColor,
            ),
          ),
        ],
      ),
      title: Text(
        surasdata.suraNameEn,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: AppColors.whiteColor,
        ),
      ),
      subtitle: Text(
        "${surasdata.ayasNunmber} Verses  ",
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: AppColors.whiteColor,
        ),
      ),
      trailing: Text(
        surasdata.suraNameAr,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}