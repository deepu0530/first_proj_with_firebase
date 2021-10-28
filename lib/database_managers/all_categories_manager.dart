import 'package:cloud_firestore/cloud_firestore.dart';

class AllCategoriesManager {
  // final CollectionReference categoriesList =
  //     FirebaseFirestore.instance.collection('AllCategories');

  // Future<void> createCategories(String productname, String image, String disc,
  //     int cost, String uid) async {
  //   return await categoriesList.doc(uid).set({
  //     'productname': productname,
  //     'image': image,
  //     'disc': disc,
  //     'cost': cost,
  //   });
  // }

  // Future getcategories() async {
  //   List itemsList = [];
  //   try {
  //     await categoriesList.get().then((QuerySnapshot) {
  //       QuerySnapshot.docs.forEach((element) {
  //         itemsList.add(element.data);
  //       });
  //     });
  //     return itemsList;
  //   } catch (e) {
  //     print(e.toString());
  //     return null;
  //   }
  // }
}
