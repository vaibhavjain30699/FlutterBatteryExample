#import "FlutterpluginggPlugin.h"
#if __has_include(<flutterplugingg/flutterplugingg-Swift.h>)
#import <flutterplugingg/flutterplugingg-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutterplugingg-Swift.h"
#endif

@implementation FlutterpluginggPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterpluginggPlugin registerWithRegistrar:registrar];
}
@end
