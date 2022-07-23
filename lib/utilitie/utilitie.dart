
import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool>    getconction()async{
  bool con=false;
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile) {
    // I am connected to a mobile network.
    con=true;
  } else if (connectivityResult == ConnectivityResult.wifi) {
    con=true;
    // I am connected to a wifi network.
  }
  return con;
}