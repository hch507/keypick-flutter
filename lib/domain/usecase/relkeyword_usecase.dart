import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../../data/source/remote/retrofit/rel_keyword_retrofit_client.dart';
import '../../presentation/ui/common/signature.dart';

class RelKeywordUseCase {
  late RelKeywordRestClient relKeywordRestClient;
  Signature signature =Signature();
  RelKeywordUseCase() {
    Dio dio = Dio();
    this.relKeywordRestClient = RelKeywordRestClient(dio);
  }



  void invoke(String searchTerm) async {
    DateTime now = DateTime.now();
    int timestamp = now.millisecondsSinceEpoch;
    String xTimestamp = timestamp.toString();
    print(xTimestamp);
    await relKeywordRestClient.getBlogTotal(
        "application/json",
        xTimestamp,
        "01000000000c40d694768235be69e873bf7751c0f482f571a4fbe56f728e21f79337f18493",
        "2776436",
        Signature.generate(xTimestamp, "AQAAAAAMQNaUdoI1vmnoc793UcD0irzhPxbLpNHDMOxleVvqAA=="),
        searchTerm,
        1).then((value) => debugPrint(value.keywordList[0].monthlyPcQcCnt));
  }
}