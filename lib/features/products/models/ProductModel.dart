// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));



class ProductModel {
  ProductModel({
    required this.success,
    required this.error,
    required this.errorCode,
    required this.msg,
    required this.suggestion,
    required this.baseUrlSite,
    required this.versionApp,
    required this.linkApp,
    required this.instituteTell,
    required this.addressContact,
    required this.emailContact,
    required this.aboutUs,
    required this.instagram,
    required this.telegram,
    required this.googlePlus,
    required this.tweeter,
    required this.whatsapp,
    required this.newVersionText,
    required this.msgShareReagent,
    required this.law,
    required this.statusDeviceId,
    required this.userPhone,
    required this.isActive,
    required this.messageCount,
    required this.smsCode,
    required this.maxUploadImgPlaces,
    required this.newBrands,
    required this.mostBrands,
    required this.banners,
    required this.allBrands,
    required this.todayDate,
  });

  int success;
  int error;
  int errorCode;
  String msg;
  List<dynamic> suggestion;
  String baseUrlSite;
  String versionApp;
  String linkApp;
  String instituteTell;
  String addressContact;
  String emailContact;
  String aboutUs;
  String instagram;
  String telegram;
  String googlePlus;
  String tweeter;
  String whatsapp;
  String newVersionText;
  String msgShareReagent;
  String law;
  int statusDeviceId;
  String userPhone;
  int isActive;
  int messageCount;
  String smsCode;
  int maxUploadImgPlaces;
  List<AllBrand> newBrands;
  List<AllBrand> mostBrands;
  List<AllBrand> banners;
  List<AllBrand> allBrands;
  String todayDate;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    success: json["success"],
    error: json["error"],
    errorCode: json["error_code"],
    msg: json["msg"],
    suggestion: List<dynamic>.from(json["suggestion"].map((x) => x)),
    baseUrlSite: json["base_url_site"],
    versionApp: json["version_app"],
    linkApp: json["link_app"],
    instituteTell: json["institute_tell"],
    addressContact: json["address_contact"],
    emailContact: json["email_contact"],
    aboutUs: json["about_us"],
    instagram: json["instagram"],
    telegram: json["telegram"],
    googlePlus: json["google_plus"],
    tweeter: json["tweeter"],
    whatsapp: json["whatsapp"],
    newVersionText: json["new_version_text"],
    msgShareReagent: json["msg_share_reagent"],
    law: json["law"],
    statusDeviceId: json["status_device_id"],
    userPhone: json["user_phone"],
    isActive: json["is_active"],
    messageCount: json["message_count"],
    smsCode: json["sms_code"],
    maxUploadImgPlaces: json["max_upload_img_places"],
    newBrands: List<AllBrand>.from(json["new_brands"].map((x) => AllBrand.fromJson(x))),
    mostBrands: List<AllBrand>.from(json["most_brands"].map((x) => AllBrand.fromJson(x))),
    banners: List<AllBrand>.from(json["banners"].map((x) => AllBrand.fromJson(x))),
    allBrands: List<AllBrand>.from(json["all_brands"].map((x) => AllBrand.fromJson(x))),
    todayDate: json["today_date"],
  );


}

class AllBrand {
  AllBrand({
    required this.id,
    required this.name,
    required this.img,
  });

  int id;
  String name;
  String img;

  factory AllBrand.fromJson(Map<String, dynamic> json) => AllBrand(
    id: json["id"],
    name: json["name"],
    img: json["img"],
  );


}
