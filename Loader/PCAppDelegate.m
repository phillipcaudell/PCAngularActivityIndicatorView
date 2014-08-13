//
//  TSCAppDelegate.m
//  Loader
//
//  Created by Phillip Caudell on 13/08/2014.
//

#import "PCAppDelegate.h"
#import "PCViewController.h"

@implementation PCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [PCViewController new];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}
							
@end