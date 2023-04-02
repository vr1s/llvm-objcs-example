#include <UIKit/UIKit.h>

@interface SBIconView : UIView 
{
    BOOL _allowsLabelArea;
    CGFloat _iconImageAlpha;
}

-(void)configureForLabelAllowed:(BOOL)allowed;

@end

@group iOS13Plus 

@hook SBIconView

-(void)configureForLabelAllowed:(BOOL)allowed
{
    @orig(NO);
    _allowsLabelArea = NO;
    _iconImageAlpha = 0.5;
}

@end

@end

#ifndef kCFCoreFoundationVersionNumber_iOS_13_0
#define kCFCoreFoundationVersionNumber_iOS_13_0 1665.15
#endif

__attribute__((constructor))
void initFunc(void)
{
  if (kCFCoreFoundationVersionNumber >= kCFCoreFoundationVersionNumber_iOS_13_0){
    @init(iOS13Plus);
  }
  
}