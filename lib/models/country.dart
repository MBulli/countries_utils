
class Country {
 final  String name;
 final  String officialName;
 final  String nativeName;
 final  String alpha2Code;
 final  String alpha3Code;
 final  String numericCode;
 final  bool independent;
 final  bool unMember;
 final  List<String> topLevelDomain;
 final  Map<String, dynamic> languages;
 final  String phoneCode;
 final  String currency;
 final  String capital;
 final  String region;
 final  String subRegion;
 final  int population;
 final  double area;
 final  String flag;
 final  String olympicCode;
 final  String phoneSuffixCode;
 final  List<String> callingCodes;
 final  List<double> coordinates;

  Country(
      {this.name,
      this.officialName,
      this.nativeName,
      this.alpha2Code,
      this.alpha3Code,
      this.numericCode,
      this.independent,
      this.unMember,
      this.topLevelDomain,
      this.phoneCode,
      this.languages,
      this.currency,
      this.capital,
      this.region,
      this.subRegion,
      this.population,
      this.area,
      this.flag,
      this.olympicCode,
      this.phoneSuffixCode,
      this.callingCodes,
      this.coordinates,
      });

  factory Country.fromJosn(Map<String, dynamic> json) =>
       Country(
    name: json['name']['common'] as String,
    officialName: json['name']['official'] as String,
    nativeName: json['name']['native'].toString(),
    topLevelDomain: json['tld'].cast<String>(),
    alpha2Code: json['cca2'] as String,
    numericCode: json['ccn3'] as String,
    alpha3Code: json['cca3'] as String,
    olympicCode: json['cioc'] as String,
    independent: json['independent'] as bool,
    unMember: json['unMember'] as bool,
    currency: json['currencies'].toString(), // check this
    phoneCode: json['idd']['root'] as String,
    phoneSuffixCode: json['idd']['suffixes'].toString(),
    capital: json['capital'].toString(), //chosen only one capital
    //? alternative spelling is not added yet
    region: json['region'] as String,
    subRegion: json['subregion'] as String,
    languages: json['languages'].cast<String, dynamic>(),
    coordinates: json['latlng'].cast<double>(),
    //? translations is not added yet
    //? demonyms  is not added yet
    //? landlocked   is not added yet
    //? land borders  is not added yet
    //? timestaps is not added yet
    //? population  is not added yet
    area: (json['area'] as num)?.toDouble(), // area in km²
    flag: json['flag'] as String,
    callingCodes: json['callingCodes'].cast<String>() as List<String>,
  );

  
Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'name': instance.name,
      'officialName': instance.officialName,
      'nativeName': instance.nativeName,
      'topLevelDomain': instance.topLevelDomain,
      'alpha2Code': instance.alpha2Code,
      'numericCode': instance.numericCode,
      'alpha3Code': instance.alpha3Code,
      'independent': instance.independent,
      'unMember': instance.unMember,
      'languages': instance.languages,
      'phoneCode': instance.phoneCode,
      'currency': instance.currency,
      'capital': instance.capital,
      'region': instance.region,
      'subRegion': instance.subRegion,
      'population': instance.population,
      'coordinates': instance.coordinates,
      'area': instance.area,
      'flag': instance.flag,
    };

}
