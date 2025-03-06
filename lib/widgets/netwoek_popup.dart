import 'package:flutter/material.dart';

class DeviceNotConnectedPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.black26, offset: Offset(0, 10), blurRadius: 10),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text(
              "Your Device is not \n connected",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 20),
          Image.asset(
            'assets/error.png',
            height: 170,
          ),
          SizedBox(height: 20),
          Text(
            "Connect your device with",
            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
                    color: Colors.blue.shade500,
                  ),
                  child: Icon(Icons.bluetooth,color: Colors.white,),
                ),
              ),
              SizedBox(width: 1,),
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
                    color: Colors.blue.shade500,
                  ),
                  child: Icon(Icons.wifi,color: Colors.white,),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}