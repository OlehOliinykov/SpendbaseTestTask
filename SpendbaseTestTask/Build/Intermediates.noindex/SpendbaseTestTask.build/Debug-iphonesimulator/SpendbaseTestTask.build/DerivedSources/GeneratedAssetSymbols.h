#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The resource bundle ID.
static NSString * const ACBundleID AC_SWIFT_PRIVATE = @"noNameCompany.SpendbaseTestTask";

/// The "BackgroundGray" asset catalog color resource.
static NSString * const ACColorNameBackgroundGray AC_SWIFT_PRIVATE = @"BackgroundGray";

/// The "darkMauve" asset catalog color resource.
static NSString * const ACColorNameDarkMauve AC_SWIFT_PRIVATE = @"darkMauve";

/// The "account" asset catalog image resource.
static NSString * const ACImageNameAccount AC_SWIFT_PRIVATE = @"account";

/// The "card" asset catalog image resource.
static NSString * const ACImageNameCard AC_SWIFT_PRIVATE = @"card";

/// The "euroFlag" asset catalog image resource.
static NSString * const ACImageNameEuroFlag AC_SWIFT_PRIVATE = @"euroFlag";

/// The "home" asset catalog image resource.
static NSString * const ACImageNameHome AC_SWIFT_PRIVATE = @"home";

/// The "placeholder" asset catalog image resource.
static NSString * const ACImageNamePlaceholder AC_SWIFT_PRIVATE = @"placeholder";

/// The "transactions" asset catalog image resource.
static NSString * const ACImageNameTransactions AC_SWIFT_PRIVATE = @"transactions";

#undef AC_SWIFT_PRIVATE