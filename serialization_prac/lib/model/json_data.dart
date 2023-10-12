import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class JsonData {
  int? id;
  String? uid;
  String? city;
  String? streetName;
  String? streetAddress;
  String? secondaryAddress;
  String? buildingNumber;
  String? mailBox;
  String? community;
  String? zipCode;
  String? zip;
  String? postcode;
  String? timeZone;
  String? streetSuffix;
  String? citySuffix;
  String? cityPrefix;
  String? state;
  String? stateAbbr;
  String? country;
  String? countryCode;
  double? latitude;
  double? longitude;
  String? fullAddress;

  JsonData({
    this.id,
    this.uid,
    this.city,
    this.streetName,
    this.streetAddress,
    this.secondaryAddress,
    this.buildingNumber,
    this.mailBox,
    this.community,
    this.zipCode,
    this.zip,
    this.postcode,
    this.timeZone,
    this.streetSuffix,
    this.citySuffix,
    this.cityPrefix,
    this.state,
    this.stateAbbr,
    this.country,
    this.countryCode,
    this.latitude,
    this.longitude,
    this.fullAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'uid': uid,
      'city': city,
      'street_name': streetName,
      'street_address': streetAddress,
      'secondary_address': secondaryAddress,
      'building_number': buildingNumber,
      'mail_box': mailBox,
      'community': community,
      'zip_code': zipCode,
      'zip': zip,
      'postcode': postcode,
      'time_zone': timeZone,
      'street_suffix': streetSuffix,
      'city_suffix': citySuffix,
      'city_prefix': cityPrefix,
      'state': state,
      'state_abbr': stateAbbr,
      'country': country,
      'country_code': countryCode,
      'latitude': latitude,
      'longitude': longitude,
      'full_address': fullAddress,
    };
  }

  factory JsonData.fromMap(Map<String, dynamic> map) {
    return JsonData(
      id: map['id'] != null ? map['id'] as int : null,
      uid: map['uid'] != null ? map['uid'] as String : null,
      city: map['city'] != null ? map['city'] as String : null,
      streetName:
          map['street_name'] != null ? map['street_name'] as String : null,
      streetAddress: map['street_address'] != null
          ? map['street_address'] as String
          : null,
      secondaryAddress: map['secondary_address'] != null
          ? map['secondary_address'] as String
          : null,
      buildingNumber: map['building_number'] != null
          ? map['building_number'] as String
          : null,
      mailBox: map['mail_box'] != null ? map['mail_box'] as String : null,
      community: map['community'] != null ? map['community'] as String : null,
      zipCode: map['zip_code'] != null ? map['zip_code'] as String : null,
      zip: map['zip'] != null ? map['zip'] as String : null,
      postcode: map['postcode'] != null ? map['postcode'] as String : null,
      timeZone: map['time_zone'] != null ? map['time_zone'] as String : null,
      streetSuffix:
          map['street_suffix'] != null ? map['street_suffix'] as String : null,
      citySuffix:
          map['city_suffix'] != null ? map['city_suffix'] as String : null,
      cityPrefix:
          map['city_prefix'] != null ? map['city_prefix'] as String : null,
      state: map['state'] != null ? map['state'] as String : null,
      stateAbbr: map['state_abbr'] != null ? map['state_abbr'] as String : null,
      country: map['country'] != null ? map['country'] as String : null,
      countryCode:
          map['country_code'] != null ? map['country_code'] as String : null,
      latitude: map['latitude'] != null ? map['latitude'] as double : null,
      longitude: map['longitude'] != null ? map['longitude'] as double : null,
      fullAddress:
          map['full_address'] != null ? map['full_address'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory JsonData.fromJson(String source) =>
      JsonData.fromMap(json.decode(source) as Map<String, dynamic>);
}
