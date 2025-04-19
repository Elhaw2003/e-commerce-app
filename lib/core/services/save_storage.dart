import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SaveStorage{
  static const storage =  FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true),
  );
 static Future saveToken(String token)async{
    await storage.write(key: "token", value: token);
  }
 static Future getToken()async{
   return await storage.read(key: "token");
  }
 static Future removeToken()async{
    await storage.delete(key: "token");
  }
}