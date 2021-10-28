import 'package:first_proj/utils/appcolors.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appColor,
        centerTitle: true,
        title: Text("Profile",
        style: TextStyle(
          color: AppColors.whiteColor,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        ),
      ),
     body:Container(
       padding: EdgeInsets.only(left: 20,right: 20,top: 80),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
         Center(
           child: CircleAvatar(
             radius: 60,
             backgroundColor: AppColors.appColor,
           ),
         ),
         SizedBox(height: 60,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text(
               
               "Name",
              style:TextStyle(
            color: AppColors.blackColor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
             ),
             Text("Name",
              style:TextStyle(
            color: AppColors.appColor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
             ),
           ],
         ),
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text("Email",
              style:TextStyle(
            color: AppColors.blackColor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
             ),
              Text("Email",
              style:TextStyle(
            color: AppColors.appColor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
             ),
           ],
         ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text("Gender",
              style:TextStyle(
            color: AppColors.blackColor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
             ),
              Text("Gender",
              style:TextStyle(
            color: AppColors.appColor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
             ),
           ],
         ),
       ],),
     )
    );
  }
}