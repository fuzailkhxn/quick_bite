import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:provider/provider.dart';
import 'package:quick_bite/components/my_receipt.dart';
import 'package:quick_bite/models/restaurant.dart';
import 'package:quick_bite/services/database/firestore.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {
  // get access to db
  FirestoreService db = FirestoreService();

  @override
  void initState() {
    super.initState();

    //if we get to this page, submit order to firestore db
    String receipt =context.read<Restaurant>().displayCartReceipt();
    db.saveOrderToDatabase(receipt);
  }

  _callNumber() async{
  const number = '9167861331'; //set the number here
  final res = await FlutterPhoneDirectCaller.callNumber(number);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: const Column(
        children: [
          MyReceipt(),
        ],
      ),
    );
  }

  //custom  bottom nav bar - message / call delivey  driver
  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          //  profile pic of driver
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),
          ),

          const SizedBox(width: 10),

          //driver details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Fuzail Khan",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Text(
                "Driver",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),

          const Spacer(),

          Row(
            children: [
              //message  button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.message),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              const SizedBox(width: 10),
              //call button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    _callNumber();
                  },
                  icon: const Icon(Icons.call),
                  color: Colors.green,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
