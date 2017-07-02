#import "LocaleDirectionAwareButton.h"

@implementation LocaleDirectionAwareButton

- (void)awakeFromNib {
    [super awakeFromNib];
    
    if ([NSLocale characterDirectionForLanguage:[[NSLocale localeWithLocaleIdentifier:[[NSBundle mainBundle] preferredLocalizations][0]] objectForKey:NSLocaleLanguageCode]] == NSLocaleLanguageDirectionRightToLeft) {
        
        UIEdgeInsets titleInsets = self.titleEdgeInsets;
        self.titleEdgeInsets = UIEdgeInsetsMake(titleInsets.top, titleInsets.right, titleInsets.bottom, titleInsets.left);
        
        UIEdgeInsets imageInsets = self.imageEdgeInsets;
        self.imageEdgeInsets = UIEdgeInsetsMake(imageInsets.top, imageInsets.right, imageInsets.bottom, imageInsets.left);
        
        UIEdgeInsets contentInsets = self.contentEdgeInsets;
        self.contentEdgeInsets = UIEdgeInsetsMake(contentInsets.top, contentInsets.right, contentInsets.bottom, contentInsets.left);
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
