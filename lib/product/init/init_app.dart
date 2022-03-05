
import 'package:firebase_core/firebase_core.dart';

void initializeApp(){
initFirebase();
}

void initFirebase() async{
  await Firebase.initializeApp();
}