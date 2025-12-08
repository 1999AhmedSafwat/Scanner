
import 'package:flutter/material.dart';

import '../barcode/view.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor:scheme.primary ,
        centerTitle: true,
        title: Text(
          "Details",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications_none,
              color: Colors.white,
            ),
          )
        ],
        leading: Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.white,
        ),
        toolbarHeight: 50,
      ),
      body:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12,),
            Center(child: Container(
                width: 275,
                height: 52,
                decoration: BoxDecoration(
                    color: scheme.primary ,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Truck Here!",
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12,color: Colors.white),
                      ),
                      SizedBox(height: 4,),
                      Text(
                        "Shipping Code: XXXJOIW225626",
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10,color: Colors.white.withOpacity(0.60)),
                      ),
                    ],
                  ),
                ),
              ),),
            SizedBox(height: 12,),
            Center(child: Container(child: Image.asset("assets/images/Truck1.png",height: 141,width: 307,fit: BoxFit.cover,),)),
            SizedBox(height: 12,),

            Row(
              children: [
              Expanded(child: Text("Truck Information",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,),)),
              GestureDetector(onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => QRScannerPage(),));
              }, child: Text("Repeat Scan",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xffff6666)),)),SizedBox(width: 4,),
                Image.asset("assets/images/closecircle.png"),

            ],),
            SizedBox(height: 12,),
            Row(
              children: [
                Expanded(child: Text("Truck Manufacturer",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,),)),
                Text("Truck Plate Number",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,)
                  ,),SizedBox(width: 4,),


              ],),
            SizedBox(height: 12,),
            Row(

              children: [
                Expanded(child: Text("Mercedes-Benz",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,),)),
                Text("7282",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,)
                  ,),SizedBox(width: 4,),


              ],),
            SizedBox(height: 12,),
            Row(

              children: [
                Expanded(child: Text("Truck Manufacturer",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,),)),
                Text("Truck Plate Letter",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,)
                  ,),SizedBox(width: 4,),


              ],),
            SizedBox(height: 12,),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text("Blue",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,),)),
                Text("ASDT",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,)
                  ,),SizedBox(width: 4,),


              ],),
          SizedBox(height: 12,),
          Text("Trip Status-",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),

            Row(children: [Column(children: [              Column(children: [Container(width: 40,height: 40,decoration: BoxDecoration(color: Color(0xfff5f9ff),shape: BoxShape.circle,),child: Image.asset("assets/images/iconcar.png",width: 24,height: 24,),)],)
            ],),SizedBox(width: 12,),
              Column(children: [
                Text("Successfully  Received",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                SizedBox(height: 2,),
                Text("Oct 13, 22 18:05 07PM",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),SizedBox(height: 12,),
                Container(color:Colors.grey,height: 20,width: 100,)

              ],)
            ],)
          ],
        ),
      ),
    );
  }
}
