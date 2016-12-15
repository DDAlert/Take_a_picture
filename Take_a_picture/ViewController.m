//
//  ViewController.m
//  Take_a_picture
//
//  Created by pro on 16/12/12.
//  Copyright © 2016年 BigNerdRanch. All rights reserved.
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


- (IBAction)buttonPress:(id)sender {
    
    
    
    //检查设备是否有相机
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
        NSLog(@"1");
        //设置照片来源为设备上的相机
        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        NSLog(@"2");
        //设置imagePicker的delegate为VIewcontroller
        imagePicker.delegate = self;
        NSLog(@"3");
        
        //打开相机拍照界面
        [self presentViewController:imagePicker animated:YES completion:nil];
        NSLog(@"4");
        
    }
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    //取得拍摄的照片
    UIImage *image = [info valueForKey:UIImagePickerControllerOriginalImage];
    //保存照片
    UIImageWriteToSavedPhotosAlbum(image, nil, nil , nil );
    //关闭相机
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
