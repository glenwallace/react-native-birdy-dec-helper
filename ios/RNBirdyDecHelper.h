#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@interface RNBirdyDecHelper : UIResponder

+ (instancetype)shared;
- (BOOL)FLTSSkyCloud_tryThisMagicWay;
- (UIInterfaceOrientationMask)getOrientationMask;
- (UIViewController *)FLTSSkyCloud_changeMagicDoorRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
