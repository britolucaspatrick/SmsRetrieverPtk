#import "SmsRetrieverPtkPlugin.h"
#if __has_include(<SmsRetrieverPtk/SmsRetrieverPtk-Swift.h>)
#import <SmsRetrieverPtk/SmsRetrieverPtk-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "SmsRetrieverPtk-Swift.h"
#endif

@implementation SmsRetrieverPtkPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSmsRetrieverPtkPlugin registerWithRegistrar:registrar];
}
@end
