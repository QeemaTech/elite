// Copyright (c) 2019, the Panacea-Soft.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// Panacea-Soft license that can be found in the LICENSE file.

import '../core/vendor/viewobject/common/language.dart';

class PsConfig {
  PsConfig._();

  ///
  /// AppVersion
  /// For your app, you need to change according based on your app version

  static const String app_version = '1.0.0';

  ///
  /// Bearer Token
  ///
  static const String ps_bearer_token =
      'Bearer oM0fIICt3JzjA6ePgn0U0rJNsOYRxODJF4TPq9B2';

  ///
  /// API URL
  /// Change your backend url
  ///
  static const String ps_core_url = 'https://salegates.com';

  //'https://www.products.panacea-soft.co/psx-mpc-dev5';
  //'https://www.products.panacea-soft.co/psx-mpc-dev5';
  //'https://www.products.panacea-soft.co/psx-mpc-dev2';

  static const String ps_app_url = ps_core_url + '/api/v1.0/'; //index.php/';

  static const String ps_app_image_url =
      ps_core_url + '/public/storage/PSX_MPC/uploads/';

  static const String ps_app_image_thumbs_url =
      ps_core_url + '/public/storage/PSX_MPC/uploads/thumbnail/';

  static const String ps_app_image_thumbs_2x_url =
      ps_core_url + '/public/storage/PSX_MPC/uploads/thumbnail2x/';

  static const String ps_app_image_thumbs_3x_url =
      ps_core_url + '/public/storage/PSX_MPC/uploads/thumbnail3x/';

  ///
  /// Chat Setting
  ///
  ///
  static const String iosGoogleAppId =
      '1:981748160390:ios:0716b2d15625e103e63e07';
  static const String iosGcmSenderId = '981748160390';
  static const String iosProjectId = 'elite-cbfc6';
  static const String iosDatabaseUrl =
      'https://elite-cbfc6-default-rtdb.firebaseio.com';
  static const String iosApiKey = 'AIzaSyCtoFGkA_egvQ2smzDF5JwpYeoFj6t3kGo';

  static const String androidGoogleAppId =
      '1:981748160390:android:be4a052d1bd4fea2e63e07';
  static const String androidGcmSenderId = '981748160390';
  static const String androidProjectId = 'elite-cbfc6';
  static const String androidApiKey = 'AIzaSyDQTXPMrZDLFMYQLjfCoN8gSTnJuDsXs4Q';
  static const String androidDatabaseUrl =
      'https://elite-cbfc6-default-rtdb.firebaseio.com';

  ///
  ///Admob Setting
  ///
  // static String androidAdMobAdsIdKey = 'ca-app-pub-8907881762519005~8955368002';
  // static String androidAdMobBannerAdUnitId =
  //     'ca-app-pub-8907881762519005/3454811079';
  // static String androidAdMobNativeAdUnitId =
  //     'ca-app-pub-8907881762519005/6459962951';
  // static String androidAdMobInterstitialAdUnitId =
  //     'ca-app-pub-8907881762519005/3530832694';

  // static String iosAdMobAdsIdKey = 'ca-app-pub-8907881762519005~2523204483';
  // static String iosAdMobBannerAdUnitId =
  //     'ca-app-pub-8907881762519005/2329146257';
  // static String iosAdMobNativeAdUnitId =
  //     'ca-app-pub-8907881762519005/4241279137';
  // static String iosAdMobInterstitialAdUnitId =
  //     'ca-app-pub-8907881762519005/8180524145';

  ////if demo url
  // static bool isDemo = false;

  ///
  /// Animation Duration
  ///
  static const Duration animation_duration = Duration(milliseconds: 500);

  ///
  /// Fonts Family Config
  /// Before you declare you here,
  /// 1) You need to add font under assets/fonts/
  /// 2) Declare at pubspec.yaml
  /// 3) Update your font family name at below
  ///
  // static const String ps_default_font_family = 'Product Sans';

  static const String ps_app_db_name = 'ps_db.db';

  ///
  /// Default Language
  ///
  static final Language defaultLanguage =
      Language(languageCode: 'en', countryCode: 'US', name: 'English US');

  /// For default language change, please check
  /// LanguageFragment for language code and country code
  /// ..............................................................
  /// Language             | Language Code     | Country Code
  /// ..............................................................
  /// "English"            | "en"              | "US"
  /// "Arabic"             | "ar"              | "DZ"
  /// "India (Hindi)"      | "hi"              | "IN"
  /// "German"             | "de"              | "DE"
  /// "Spanish"           | "es"              | "ES"
  /// "French"             | "fr"              | "FR"
  /// "Indonesian"         | "id"              | "ID"
  /// "Italian"            | "it"              | "IT"
  /// "Japanese"           | "ja"              | "JP"
  /// "Korean"             | "ko"              | "KR"
  /// "Malay"              | "ms"              | "MY"
  /// "Portuguese"         | "pt"              | "PT"
  /// "Russian"            | "ru"              | "RU"
  /// "Thai"               | "th"              | "TH"
  /// "Turkish"            | "tr"              | "TR"
  /// "Chinese"            | "zh"              | "CN"
  /// ..............................................................
  ///
  static final List<Language> psSupportedLanguageList = <Language>[
    Language(languageCode: 'en', countryCode: 'US', name: 'English'),
    Language(languageCode: 'ar', countryCode: 'DZ', name: 'Arabic'),
    Language(languageCode: 'hi', countryCode: 'IN', name: 'Hindi'),
    Language(languageCode: 'de', countryCode: 'DE', name: 'German'),
    Language(languageCode: 'es', countryCode: 'ES', name: 'Spainish'),
    Language(languageCode: 'fr', countryCode: 'FR', name: 'French'),
    Language(languageCode: 'id', countryCode: 'ID', name: 'Indonesian'),
    Language(languageCode: 'it', countryCode: 'IT', name: 'Italian'),
    Language(languageCode: 'ja', countryCode: 'JP', name: 'Japanese'),
    Language(languageCode: 'ko', countryCode: 'KR', name: 'Korean'),
    Language(languageCode: 'ms', countryCode: 'MY', name: 'Malay'),
    Language(languageCode: 'pt', countryCode: 'PT', name: 'Portuguese'),
    Language(languageCode: 'ru', countryCode: 'RU', name: 'Russian'),
    Language(languageCode: 'th', countryCode: 'TH', name: 'Thai'),
    Language(languageCode: 'tr', countryCode: 'TR', name: 'Turkish'),
    Language(languageCode: 'zh', countryCode: 'CN', name: 'Chinese'),
  ];

  ///
  /// Tmp Image Folder Name
  ///
  static const String tmpImageFolderName = 'PSXMPC';

  ///
  /// set showLog [True] to enable log
  ///
  static bool showLog = false;

  // static void printLog(Object? object, {bool important = false}) {
  //   if (showLog & important)
  //     // red
  //     print('\u001b[31m $object \u001b[0m');
  //   else
  //     // green
  //     print('\u001b[32m $object \u001b[0m');
  // }

  ///
  ///
  ///
  // static DataConfiguration defaultDataConfig = DataConfiguration(
  //     dataSourceType: DataSourceType.FULL_CACHE,
  //     storePeriod: const Duration(days: 1));

  ///
  ///Loading Shimmer Item Count
  ///
  // static int loadingShimmerItemCount = 3;

  ///
  ///Recent Search Keyword Limit
  ///
  //static int recentSearchKeywordLimit = 2;

  ///
  ///
  ///
  // static int phoneListCount = 3;

  ///
  ///CategorySortingListViewContainer Witget List
  ///
  ///
  static const List<String> categoryVerticalList = <String>[
    'category_vertical_list',
  ];
  static const List<String> orderDetailView = <String>[
    'order_list',
  ];
  static const List<String> homeWidgetList = <String>[
    'search_header',
    'blog_product_slider',
    'draggable_widget',
    'buy_pakcage',
    'category_horizontal_list',
    'paid_ad_product',
    'latest_vendor_list',
    'recent_item',
    'vendor_application_card',
    'top_seller_horizontal_list',
    'nearest_product',
    'discount_product',
    'popular_product',
    'item_list_from_followers',
    'user_unread_message',
  ];
  static const List<String> blogDetailsWidgetList = <String>[
    'blog_detail',
  ];
  static const List<String> productDetailsWidgetList = <String>[
    'product_expandable_appbar',
    'product_title_with_edit_favorite',
    'product_price',
    'product_location',
    'product_description',
    'product_details_info',
    'product_safety_tips_tile',
    'product_terms_and_condition',
    'product_faq_tile',
    'product_statistic_tile',
    'product_contact_list',
    'product_seller_info_tile',
    'product_vendor_info_tile',
    'related_product_list',
  ];
  static const List<String> profileDetailsWidgetList = <String>[
    'profile_detail',
    'profile_vendor_application_card',
    'profile_my_vendor',
    'paid_product_list',
    'active_product_list',
    'pending_product_list_widget',
    'soldout_product_list',
    'rejected_listing_data',
    'disabled_listing_data',
  ];
  static const List<String> productListWithFilterWidgetList = <String>[
    'filter_nav_items',
    'filter_item_list_view',
    'ps_admob_banner_widget',
  ];

  static const List<String> vendorListWithFilterWidgetList = <String>[
    'filter_vendor_nav',
    'filter_vendor_list_view'
  ];

  ///
  /// Item Entry Cache Control Setting
  ///
  static const bool cacheInItemEntry = false;
}
