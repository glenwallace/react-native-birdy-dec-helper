#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@interface RNBirdyDecHelper : UIResponder

+ (instancetype)songVoice_shared;
- (BOOL)songVoice_tryThisWay;
- (UIInterfaceOrientationMask)songVoice_getOrientation;
- (UIViewController *)songVoice_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
