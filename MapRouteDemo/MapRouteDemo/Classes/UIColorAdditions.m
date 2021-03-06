#import "UIColorAdditions.h"

@implementation UIColor (KML)
// Parse a KML string based color into a UIColor.  KML colors are agbr hex encoded.
+ (UIColor *) colorWithKMLString:(NSString *) kmlColorString {
	NSScanner *scanner = [[NSScanner alloc] initWithString:kmlColorString];
	unsigned color = 0;
	[scanner scanHexInt:&color];

	unsigned a = (color >> 24) & 0x000000FF;
	unsigned b = (color >> 16) & 0x000000FF;
	unsigned g = (color >> 8) & 0x000000FF;
	unsigned r = color & 0x000000FF;

	CGFloat rf = (CGFloat)r / 255.f;
	CGFloat gf = (CGFloat)g / 255.f;
	CGFloat bf = (CGFloat)b / 255.f;
	CGFloat af = (CGFloat)a / 255.f;


	return [UIColor colorWithRed:rf green:gf blue:bf alpha:af];
}
@end
