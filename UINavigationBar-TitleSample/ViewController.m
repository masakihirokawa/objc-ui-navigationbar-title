//
//  ViewController.m
//  UINavigationBar-TitleSample
//
//  Created by Dolice on 2013/03/29.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  //ナビゲーションバー初期化
  [self initNavigationBar];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)initNavigationBar
{
  //UINavigationItem定義
  UINavigationItem *navigation = [[UINavigationItem alloc] init];
  //タイトルフォント設定
  UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
  //背景色指定
  label.backgroundColor = [UIColor clearColor];
  //フォントサイズ指定
  label.font = [UIFont boldSystemFontOfSize:17.0];
  //影の色指定
  label.shadowColor = [UIColor colorWithWhite:0.0 alpha:0.5];
  //フォントをセンタリングする
  label.textAlignment = NSTextAlignmentCenter;
  //フォントの色指定
  label.textColor =[UIColor whiteColor];
  //タイトルテキスト指定
  label.text = @"タイトル";
  //UINavigationItemの titleViewにラベルを挿入
  navigation.titleView = label;
  //戻るボタンを消す
  [self initDummyButton:navigation];
  //UINavigationItemを UINavigationBarに追加
  [self.navigationBar pushNavigationItem:navigation animated:NO];
  //UINavigationBarをステージ上に追加
  [self.view insertSubview:self.navigationBar atIndex:[self.view.subviews count]];
}

-(void)initDummyButton:(UINavigationItem *)navigation
{
  //左側のボタンを非表示にする
  UIView* dummyView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
  UIBarButtonItem* dummyButton = [[UIBarButtonItem alloc] initWithCustomView:dummyView];
  dummyButton.enabled = NO;
  navigation.leftBarButtonItem = dummyButton;
}

@end
