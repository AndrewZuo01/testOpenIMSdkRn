
#ifdef RCT_NEW_ARCH_ENABLED
#import "RNOpenImSdkRnSpec.h"

@interface OpenImSdkRn : NSObject <NativeOpenImSdkRnSpec>
#else
#import <React/RCTBridgeModule.h>

@interface OpenImSdkRn : NSObject <RCTBridgeModule>
#endif

@end
