import 'dart:convert';
import 'dart:typed_data';
import 'dart:convert' show utf8, base64;

import 'package:crypto/crypto.dart';

class Signature {
  static final String method = "GET";
  static final String uri = "/keywordstool";

  static String generate(String timestamp, String secretKey) {
    print("Signature - generate() - called");
    String message = "$timestamp.$method.$uri";
    Uint8List secretKeyBytes = utf8.encode(secretKey);
    Uint8List messageBytes = utf8.encode(message);
    Hmac hmac = Hmac(sha256, secretKeyBytes);
    Digest rawHmac = hmac.convert(messageBytes);
    return base64.encode(rawHmac.bytes);
  }
}