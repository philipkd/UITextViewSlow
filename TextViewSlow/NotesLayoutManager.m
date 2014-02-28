#import "NotesLayoutManager.h"

@implementation NotesLayoutManager
- (void) drawGlyphsForGlyphRange:(NSRange)glyphsToShow atPoint:(CGPoint)origin {
    NSLog(@"drawGlyphsForGlyphRange:(loc: %d, len: %d)", glyphsToShow.location, glyphsToShow.length);
    [super drawGlyphsForGlyphRange:glyphsToShow atPoint:origin];
}

@end
