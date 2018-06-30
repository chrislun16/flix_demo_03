//
//  movieTrailerViewController.m
//  flix_demo_03
//
//  Created by Ezra Bekele on 6/29/18.
//  Copyright © 2018 flix_demo_03. All rights reserved.
//

#import "movieTrailerViewController.h"
#import "DetailsViewController.h"

@interface movieTrailerViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;



@end

NSString *urlString = @"https://www.youtube.com/watch?v=\"";

@implementation movieTrailerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *begString = @"https://api.themoviedb.org/3/movie/";
    NSNumber *movieId = self.movie[@"id"];
    NSString *endString = @"/videos?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed&language=en-US";
    NSString *fullGetNowPlaying = [[begString stringByAppendingString:movieId.stringValue]stringByAppendingString:endString];
    NSURL *fullGetNowPlayingURL = [NSURL URLWithString:fullGetNowPlaying];
    NSURLRequest *request = [NSURLRequest requestWithURL:fullGetNowPlayingURL cachePolicy:NSURLRequestReloadIgnoringLocalCacheData timeoutInterval:10.0];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration] delegate:nil delegateQueue:[NSOperationQueue mainQueue]];
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        NSLog(@"%@",dataDictionary);
        
        NSArray *results = dataDictionary[@"results"];
        NSString *key = results[0][@"key"];
        
        NSString *youtubeBaseString = @"https://www.youtube.com/watch?v=";
        NSString *fullYoutubeString = [youtubeBaseString stringByAppendingString:key];
        NSURL *fullYoutubeURL = [NSURL URLWithString:fullYoutubeString];
        
        //NSURL *key = self.movie[@""];
        
        // Place the URL in a URL Request.
        NSURLRequest *requestTwo = [NSURLRequest requestWithURL:fullYoutubeURL
                                                     cachePolicy:NSURLRequestReloadIgnoringLocalCacheData
                                                 timeoutInterval:10.0];
        // Load Request into WebView.
        [self.webView loadRequest:requestTwo];
        
        }
    ];
    [task resume];

        
    
    

    
   
    
}


- (IBAction)onTapReturn:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
