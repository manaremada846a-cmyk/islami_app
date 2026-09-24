import 'package:islami_app/data/suras_lists.dart';

class SurasData {
int id;
String suraNameAr;
String suraNameEn;
String ayasNunmber;
SurasData({required this.id,required this.suraNameAr,required this.suraNameEn,required this.ayasNunmber});
 static List <SurasData>get allSuras{
  List<SurasData> dataList=[];
 
   for (int i=0;i<SurasLists.arabiSuras.length;i++){
 SurasData obj=SurasData(id: i+1, suraNameAr: SurasLists.arabiSuras[i], suraNameEn: SurasLists.englishSurahs[i], ayasNunmber: SurasLists.AyaNumber[i]);
 dataList.add(obj);

   } return  dataList;
}

 

}