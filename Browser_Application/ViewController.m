//
//  ViewController.m
//  Browser_Application
//
//  Created by Илья Юхновский on 01.06.2018.
//  Copyright © 2018 Илья Юхновский. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://%@",self.searchBar.text]]]];
    [self.webView addSubview:self.indicator];
    [self.searchBar resignFirstResponder];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:(1.0/2.0) target:self selector:@selector(loading) userInfo:nil repeats:YES];
}

-(void)loading {
    if (!self.webView.loading) {
        [self.indicator stopAnimating];
    } else {
        [self.indicator startAnimating];
    }
}

-(void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {

    self.searchBar.text = nil;
    [self.searchBar resignFirstResponder];
}

@end
