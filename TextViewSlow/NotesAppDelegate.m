#import "NotesAppDelegate.h"
#import "NotesViewController.h"

@interface NotesAppDelegate ()
@property(nonatomic, retain) NotesViewController *editor;
@end

@implementation NotesAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] ;

    
    self.editor = [[NotesViewController alloc] init];
    
    [self.window setRootViewController:self.editor];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}
@end
