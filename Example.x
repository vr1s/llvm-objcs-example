#include <UIKit/UIKit.h>

@interface SBIconView : UIView
@end

%hook SBIconView

-(void)configureForLabelAllowed:(BOOL)allowed
{
    %orig(NO);
}

%end