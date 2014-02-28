#import "NotesViewController.h"
#import "NotesLayoutManager.h"

@implementation NotesViewController

- (void) loadView {
    NSTextContainer *container = [[NSTextContainer alloc] initWithSize:CGSizeMake(320, 480)];
    NSLayoutManager *manager = [[NotesLayoutManager alloc] init];
    NSTextStorage *storage = [[NSTextStorage alloc] init];
    [storage addLayoutManager:manager];
    [manager addTextContainer:container];
    
    UITextView *tv = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, 320, 480) textContainer:container];
    tv.font = [UIFont systemFontOfSize:25];
    self.view = tv;
}

@end
