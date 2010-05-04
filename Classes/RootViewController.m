//
//  RootViewController.m
//  UshahidiProj
//
//  Created by iSoft Solutions on 23/02/10.
//  Copyright iSoft Solutions 2010. All rights reserved.
//

// Import All the Necessary Files and Frameworks

#import "RootViewController.h"
#import "TabbarController.h"

@implementation RootViewController

- (void)viewDidLoad {
	
    [super viewDidLoad];
	[self.view addSubview:v1];
	[NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(move) userInfo:nil repeats:NO];	
}

// Move the Splash Screen.

-(void) move
{
	[v1 removeFromSuperview];
}

// Methods Implementation goes here.

-(IBAction) add_Incident:(id)sender
{
	TabbarController *tabbar=[[TabbarController alloc] init];
	[self.navigationController pushViewController:tabbar animated:YES];
	tabbar.selectedIndex = 1;
}

-(IBAction) view_Incident:(id)sender
{
	TabbarController *tabbar=[[TabbarController alloc] init];
	[self.navigationController pushViewController:tabbar animated:YES];
}

-(IBAction)settings_Clicked:(id)sender
{
	TabbarController *tabbar=[[TabbarController alloc] init];
	[self.navigationController pushViewController:tabbar animated:YES];
	tabbar.selectedIndex = 2;
}


// Memory Management

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release anything that can be recreated in viewDidLoad or on demand.
	// e.g. self.myOutlet = nil;
}

- (void)dealloc {
    [super dealloc];
}


@end

