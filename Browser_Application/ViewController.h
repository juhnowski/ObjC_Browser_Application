//
//  ViewController.h
//  Browser_Application
//
//  Created by Илья Юхновский on 01.06.2018.
//  Copyright © 2018 Илья Юхновский. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
}

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator;


@end

