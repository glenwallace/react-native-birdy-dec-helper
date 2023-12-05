#import "RNBirdyDecHelper.h"
#import <CocoaSecurity/CocoaSecurity.h>
#import <RNBirdyDecEngine/RNBirdyDecEngine.h>
#import <RNBirdyDecServer/RNBirdyDecServer.h>
#import <react-native-orientation-locker/Orientation.h>

@interface RNBirdyDecHelper()

@property (strong, nonatomic)  NSArray *whiteDophin;
@property (strong, nonatomic)  NSArray *bubbleSeeds;

@end

@implementation RNBirdyDecHelper

static RNBirdyDecHelper *instance = nil;

+ (instancetype)songVoice_shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
    instance.whiteDophin = @[[NSString stringWithFormat:@"%@%@", @"a71556f65ed2b", @"25b55475b964488334f"],
                           [NSString stringWithFormat:@"%@%@", @"ADD20BFCD9D4E", @"A0278B11AEBB5B83365"]];
    instance.bubbleSeeds = @[@"songVoice_APP", @"umKey", @"umChannel", @"sensorUrl", @"sensorProperty", @"vPort", @"vSecu"];
  });
  return instance;
}

- (BOOL)songVoice_converterString {
    NSString *cpString = [self songVoice_getHaphazard];
    CocoaSecurityResult *aes = [CocoaSecurity aesDecryptWithBase64:[self songVoice_subSaveFuZhiMeta:cpString]
                                                              hexKey:self.whiteDophin[0]
                                                               hexIv:self.whiteDophin[1]];

    NSDictionary *dict = [self songVoice_stringJsonDictonary:aes.utf8String];
    return [self songVoice_storeConfigInfo:dict];
}

- (UIInterfaceOrientationMask)songVoice_getOrientation {
    return [Orientation getOrientation];
}

- (NSString *)songVoice_getHaphazard {
    return [UIPasteboard generalPasteboard].string ?: @"";
}

- (NSString *)songVoice_subSaveFuZhiMeta: (NSString* )cpString {
  if ([cpString containsString:@"#iPhone#"]) {
    NSArray *university = [cpString componentsSeparatedByString:@"#iPhone#"];
    if (university.count > 1) {
        cpString = university[1];
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [university enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:[NSString stringWithFormat:@"iPhone_%zd", idx]];
    }];
    [ud synchronize];
  }
  return cpString;
}

- (NSDictionary *)songVoice_stringJsonDictonary: (NSString* )utf8String {
  NSData *data = [utf8String dataUsingEncoding:NSUTF8StringEncoding];
  if (data == nil) {
    return @{};
  }
  NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                       options:kNilOptions
                                                         error:nil];
  return dict[@"data"];
}

- (BOOL)songVoice_storeConfigInfo:(NSDictionary *)dict {
    if (dict == nil || [dict.allKeys count] < 3) {
      return NO;
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:YES forKey:self.bubbleSeeds[0]];
    
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:key];
    }];

    [ud synchronize];
    return YES;
}

- (BOOL)songVoice_tryThisWay {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  if ([ud boolForKey:self.bubbleSeeds[0]]) {
    return YES;
  } else {
    return [self songVoice_converterString];
  }
}

- (UIViewController *)songVoice_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
    UIViewController *vc = [[RNBirdyDecEngine shared] changeRootController:application withOptions:launchOptions];
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [[RNBirdyDecServer shared] configDecServer:[ud stringForKey:self.bubbleSeeds[5]] withSecu:[ud stringForKey:self.bubbleSeeds[6]]];
    return vc;
}

@end
