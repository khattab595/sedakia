import 'package:json_annotation/json_annotation.dart'; 

part 'login_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class LoginDto {
  @JsonKey(name: 'token')
  String? token;
  @JsonKey(name: 'user_obj')
  UserObj? userObj;
  @JsonKey(name: 'site_data')
  SiteData? siteData;

  LoginDto({this.token, this.userObj, this.siteData});

   factory LoginDto.fromJson(Map<String, dynamic> json) => _$LoginDtoFromJson(json);

   Map<String, dynamic> toJson() => _$LoginDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class UserObj {
  @JsonKey(name: 'data')
  Data? data;
  @JsonKey(name: 'ID')
  int? ID;
  @JsonKey(name: 'caps')
  Caps? caps;
  @JsonKey(name: 'cap_key')
  String? capKey;
  @JsonKey(name: 'roles')
  List<String>? roles;
  @JsonKey(name: 'allcaps')
  Allcaps? allcaps;
  @JsonKey(name: 'filter')
  String? filter;

  UserObj({this.data, this.ID, this.caps, this.capKey, this.roles, this.allcaps, this.filter});

   factory UserObj.fromJson(Map<String, dynamic> json) => _$UserObjFromJson(json);

   Map<String, dynamic> toJson() => _$UserObjToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Data {
  @JsonKey(name: 'ID')
  String? ID;
  @JsonKey(name: 'user_login')
  String? userLogin;
  @JsonKey(name: 'user_pass')
  String? userPass;
  @JsonKey(name: 'user_nicename')
  String? userNicename;
  @JsonKey(name: 'user_email')
  String? userEmail;
  @JsonKey(name: 'user_url')
  String? userUrl;
  @JsonKey(name: 'user_registered')
  String? userRegistered;
  @JsonKey(name: 'user_activation_key')
  String? userActivationKey;
  @JsonKey(name: 'user_status')
  String? userStatus;
  @JsonKey(name: 'display_name')
  String? displayName;
  @JsonKey(name: 'spam')
  String? spam;
  @JsonKey(name: 'deleted')
  String? deleted;

  Data({this.ID, this.userLogin, this.userPass, this.userNicename, this.userEmail, this.userUrl, this.userRegistered, this.userActivationKey, this.userStatus, this.displayName, this.spam, this.deleted});

   factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

   Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Caps {
  @JsonKey(name: 'administrator')
  bool? administrator;

  Caps({this.administrator});

   factory Caps.fromJson(Map<String, dynamic> json) => _$CapsFromJson(json);

   Map<String, dynamic> toJson() => _$CapsToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Allcaps {
  @JsonKey(name: 'switch_themes')
  bool? switchThemes;
  @JsonKey(name: 'edit_themes')
  bool? editThemes;
  @JsonKey(name: 'activate_plugins')
  bool? activatePlugins;
  @JsonKey(name: 'edit_plugins')
  bool? editPlugins;
  @JsonKey(name: 'edit_users')
  bool? editUsers;
  @JsonKey(name: 'edit_files')
  bool? editFiles;
  @JsonKey(name: 'manage_options')
  bool? manageOptions;
  @JsonKey(name: 'moderate_comments')
  bool? moderateComments;
  @JsonKey(name: 'manage_categories')
  bool? manageCategories;
  @JsonKey(name: 'manage_links')
  bool? manageLinks;
  @JsonKey(name: 'upload_files')
  bool? uploadFiles;
  @JsonKey(name: 'import')
  bool? import;
  @JsonKey(name: 'unfiltered_html')
  bool? unfilteredHtml;
  @JsonKey(name: 'edit_posts')
  bool? editPosts;
  @JsonKey(name: 'edit_others_posts')
  bool? editOthersPosts;
  @JsonKey(name: 'edit_published_posts')
  bool? editPublishedPosts;
  @JsonKey(name: 'publish_posts')
  bool? publishPosts;
  @JsonKey(name: 'edit_pages')
  bool? editPages;
  @JsonKey(name: 'read')
  bool? read;
  @JsonKey(name: 'level_10')
  bool? level_10;
  @JsonKey(name: 'level_9')
  bool? level_9;
  @JsonKey(name: 'level_8')
  bool? level_8;
  @JsonKey(name: 'level_7')
  bool? level_7;
  @JsonKey(name: 'level_6')
  bool? level_6;
  @JsonKey(name: 'level_5')
  bool? level_5;
  @JsonKey(name: 'level_4')
  bool? level_4;
  @JsonKey(name: 'level_3')
  bool? level_3;
  @JsonKey(name: 'level_2')
  bool? level_2;
  @JsonKey(name: 'level_1')
  bool? level_1;
  @JsonKey(name: 'level_0')
  bool? level_0;
  @JsonKey(name: 'edit_others_pages')
  bool? editOthersPages;
  @JsonKey(name: 'edit_published_pages')
  bool? editPublishedPages;
  @JsonKey(name: 'publish_pages')
  bool? publishPages;
  @JsonKey(name: 'delete_pages')
  bool? deletePages;
  @JsonKey(name: 'delete_others_pages')
  bool? deleteOthersPages;
  @JsonKey(name: 'delete_published_pages')
  bool? deletePublishedPages;
  @JsonKey(name: 'delete_posts')
  bool? deletePosts;
  @JsonKey(name: 'delete_others_posts')
  bool? deleteOthersPosts;
  @JsonKey(name: 'delete_published_posts')
  bool? deletePublishedPosts;
  @JsonKey(name: 'delete_private_posts')
  bool? deletePrivatePosts;
  @JsonKey(name: 'edit_private_posts')
  bool? editPrivatePosts;
  @JsonKey(name: 'read_private_posts')
  bool? readPrivatePosts;
  @JsonKey(name: 'delete_private_pages')
  bool? deletePrivatePages;
  @JsonKey(name: 'edit_private_pages')
  bool? editPrivatePages;
  @JsonKey(name: 'read_private_pages')
  bool? readPrivatePages;
  @JsonKey(name: 'delete_users')
  bool? deleteUsers;
  @JsonKey(name: 'create_users')
  bool? createUsers;
  @JsonKey(name: 'unfiltered_upload')
  bool? unfilteredUpload;
  @JsonKey(name: 'edit_dashboard')
  bool? editDashboard;
  @JsonKey(name: 'update_plugins')
  bool? updatePlugins;
  @JsonKey(name: 'delete_plugins')
  bool? deletePlugins;
  @JsonKey(name: 'install_plugins')
  bool? installPlugins;
  @JsonKey(name: 'update_themes')
  bool? updateThemes;
  @JsonKey(name: 'install_themes')
  bool? installThemes;
  @JsonKey(name: 'update_core')
  bool? updateCore;
  @JsonKey(name: 'list_users')
  bool? listUsers;
  @JsonKey(name: 'remove_users')
  bool? removeUsers;
  @JsonKey(name: 'promote_users')
  bool? promoteUsers;
  @JsonKey(name: 'edit_theme_options')
  bool? editThemeOptions;
  @JsonKey(name: 'delete_themes')
  bool? deleteThemes;
  @JsonKey(name: 'export')
  bool? export;
  @JsonKey(name: 'manage_woocommerce')
  bool? manageWoocommerce;
  @JsonKey(name: 'view_woocommerce_reports')
  bool? viewWoocommerceReports;
  @JsonKey(name: 'edit_product')
  bool? editProduct;
  @JsonKey(name: 'read_product')
  bool? readProduct;
  @JsonKey(name: 'delete_product')
  bool? deleteProduct;
  @JsonKey(name: 'edit_products')
  bool? editProducts;
  @JsonKey(name: 'edit_others_products')
  bool? editOthersProducts;
  @JsonKey(name: 'publish_products')
  bool? publishProducts;
  @JsonKey(name: 'read_private_products')
  bool? readPrivateProducts;
  @JsonKey(name: 'delete_products')
  bool? deleteProducts;
  @JsonKey(name: 'delete_private_products')
  bool? deletePrivateProducts;
  @JsonKey(name: 'delete_published_products')
  bool? deletePublishedProducts;
  @JsonKey(name: 'delete_others_products')
  bool? deleteOthersProducts;
  @JsonKey(name: 'edit_private_products')
  bool? editPrivateProducts;
  @JsonKey(name: 'edit_published_products')
  bool? editPublishedProducts;
  @JsonKey(name: 'manage_product_terms')
  bool? manageProductTerms;
  @JsonKey(name: 'edit_product_terms')
  bool? editProductTerms;
  @JsonKey(name: 'delete_product_terms')
  bool? deleteProductTerms;
  @JsonKey(name: 'assign_product_terms')
  bool? assignProductTerms;
  @JsonKey(name: 'edit_shop_order')
  bool? editShopOrder;
  @JsonKey(name: 'read_shop_order')
  bool? readShopOrder;
  @JsonKey(name: 'delete_shop_order')
  bool? deleteShopOrder;
  @JsonKey(name: 'edit_shop_orders')
  bool? editShopOrders;
  @JsonKey(name: 'edit_others_shop_orders')
  bool? editOthersShopOrders;
  @JsonKey(name: 'publish_shop_orders')
  bool? publishShopOrders;
  @JsonKey(name: 'read_private_shop_orders')
  bool? readPrivateShopOrders;
  @JsonKey(name: 'delete_shop_orders')
  bool? deleteShopOrders;
  @JsonKey(name: 'delete_private_shop_orders')
  bool? deletePrivateShopOrders;
  @JsonKey(name: 'delete_published_shop_orders')
  bool? deletePublishedShopOrders;
  @JsonKey(name: 'delete_others_shop_orders')
  bool? deleteOthersShopOrders;
  @JsonKey(name: 'edit_private_shop_orders')
  bool? editPrivateShopOrders;
  @JsonKey(name: 'edit_published_shop_orders')
  bool? editPublishedShopOrders;
  @JsonKey(name: 'manage_shop_order_terms')
  bool? manageShopOrderTerms;
  @JsonKey(name: 'edit_shop_order_terms')
  bool? editShopOrderTerms;
  @JsonKey(name: 'delete_shop_order_terms')
  bool? deleteShopOrderTerms;
  @JsonKey(name: 'assign_shop_order_terms')
  bool? assignShopOrderTerms;
  @JsonKey(name: 'edit_shop_coupon')
  bool? editShopCoupon;
  @JsonKey(name: 'read_shop_coupon')
  bool? readShopCoupon;
  @JsonKey(name: 'delete_shop_coupon')
  bool? deleteShopCoupon;
  @JsonKey(name: 'edit_shop_coupons')
  bool? editShopCoupons;
  @JsonKey(name: 'edit_others_shop_coupons')
  bool? editOthersShopCoupons;
  @JsonKey(name: 'publish_shop_coupons')
  bool? publishShopCoupons;
  @JsonKey(name: 'read_private_shop_coupons')
  bool? readPrivateShopCoupons;
  @JsonKey(name: 'delete_shop_coupons')
  bool? deleteShopCoupons;
  @JsonKey(name: 'delete_private_shop_coupons')
  bool? deletePrivateShopCoupons;
  @JsonKey(name: 'delete_published_shop_coupons')
  bool? deletePublishedShopCoupons;
  @JsonKey(name: 'delete_others_shop_coupons')
  bool? deleteOthersShopCoupons;
  @JsonKey(name: 'edit_private_shop_coupons')
  bool? editPrivateShopCoupons;
  @JsonKey(name: 'edit_published_shop_coupons')
  bool? editPublishedShopCoupons;
  @JsonKey(name: 'manage_shop_coupon_terms')
  bool? manageShopCouponTerms;
  @JsonKey(name: 'edit_shop_coupon_terms')
  bool? editShopCouponTerms;
  @JsonKey(name: 'delete_shop_coupon_terms')
  bool? deleteShopCouponTerms;
  @JsonKey(name: 'assign_shop_coupon_terms')
  bool? assignShopCouponTerms;
  @JsonKey(name: 'administrator')
  bool? administrator;

  Allcaps({this.switchThemes, this.editThemes, this.activatePlugins, this.editPlugins, this.editUsers, this.editFiles, this.manageOptions, this.moderateComments, this.manageCategories, this.manageLinks, this.uploadFiles, this.import, this.unfilteredHtml, this.editPosts, this.editOthersPosts, this.editPublishedPosts, this.publishPosts, this.editPages, this.read, this.level_10, this.level_9, this.level_8, this.level_7, this.level_6, this.level_5, this.level_4, this.level_3, this.level_2, this.level_1, this.level_0, this.editOthersPages, this.editPublishedPages, this.publishPages, this.deletePages, this.deleteOthersPages, this.deletePublishedPages, this.deletePosts, this.deleteOthersPosts, this.deletePublishedPosts, this.deletePrivatePosts, this.editPrivatePosts, this.readPrivatePosts, this.deletePrivatePages, this.editPrivatePages, this.readPrivatePages, this.deleteUsers, this.createUsers, this.unfilteredUpload, this.editDashboard, this.updatePlugins, this.deletePlugins, this.installPlugins, this.updateThemes, this.installThemes, this.updateCore, this.listUsers, this.removeUsers, this.promoteUsers, this.editThemeOptions, this.deleteThemes, this.export, this.manageWoocommerce, this.viewWoocommerceReports, this.editProduct, this.readProduct, this.deleteProduct, this.editProducts, this.editOthersProducts, this.publishProducts, this.readPrivateProducts, this.deleteProducts, this.deletePrivateProducts, this.deletePublishedProducts, this.deleteOthersProducts, this.editPrivateProducts, this.editPublishedProducts, this.manageProductTerms, this.editProductTerms, this.deleteProductTerms, this.assignProductTerms, this.editShopOrder, this.readShopOrder, this.deleteShopOrder, this.editShopOrders, this.editOthersShopOrders, this.publishShopOrders, this.readPrivateShopOrders, this.deleteShopOrders, this.deletePrivateShopOrders, this.deletePublishedShopOrders, this.deleteOthersShopOrders, this.editPrivateShopOrders, this.editPublishedShopOrders, this.manageShopOrderTerms, this.editShopOrderTerms, this.deleteShopOrderTerms, this.assignShopOrderTerms, this.editShopCoupon, this.readShopCoupon, this.deleteShopCoupon, this.editShopCoupons, this.editOthersShopCoupons, this.publishShopCoupons, this.readPrivateShopCoupons, this.deleteShopCoupons, this.deletePrivateShopCoupons, this.deletePublishedShopCoupons, this.deleteOthersShopCoupons, this.editPrivateShopCoupons, this.editPublishedShopCoupons, this.manageShopCouponTerms, this.editShopCouponTerms, this.deleteShopCouponTerms, this.assignShopCouponTerms, this.administrator});

   factory Allcaps.fromJson(Map<String, dynamic> json) => _$AllcapsFromJson(json);

   Map<String, dynamic> toJson() => _$AllcapsToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class SiteData {
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'site_id')
  int? siteId;
  @JsonKey(name: 'path')
  String? path;
  @JsonKey(name: 'username')
  String? username;

  SiteData({this.userId, this.siteId, this.path, this.username});

   factory SiteData.fromJson(Map<String, dynamic> json) => _$SiteDataFromJson(json);

   Map<String, dynamic> toJson() => _$SiteDataToJson(this);
}

