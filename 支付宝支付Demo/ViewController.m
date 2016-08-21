//
//  ViewController.m
//  支付宝支付Demo
//
//  Created by Jeremy on 16/8/1.
//  Copyright © 2016年 Jeremy. All rights reserved.
//

#import "ViewController.h"
#import "DataSigner.h"
#import <AlipaySDK/AlipaySDK.h>
@interface ViewController ()
@property(retain)TNSOrder *currentOrder;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.currentOrder = [[TNSOrder alloc]init];
    self.currentOrder.tradeNO = @"123456789";
    self.currentOrder.productmoney = @"100.00";
    self.currentOrder.productName = @"买菜";
    self.currentOrder.body = @"这是订单的描述信息";
    
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"支付" forState:UIControlStateNormal];
    btn.frame = CGRectMake(SCREEN_WIDTH/2, SCREEN_HEIGHT/2, 100, 30);
    [btn addTarget:self action:@selector(zhifubaozhifu) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}
-(void)zhifubaozhifu
{
    self.currentOrder.partner = KAlipayPartner;
    self.currentOrder.sellerID = KAlipaySeller;
    self.currentOrder.notifyURL = BNB_ZHIFUBAO_NUTIFYURL;
    self.currentOrder.service = @"mobile.securitypay.pay";
    self.currentOrder.paymentType = @"1";
    self.currentOrder.inputCharset = @"utf-8";
    self.currentOrder.itBPay = @"30m";
    self.currentOrder.showURL = @"m.alipay.com";
    
    //应用注册scheme,在AlixPayDemo-Info.plist定义URL types
    NSString *appScheme = @"tonesbnb";
    
    //将商品信息拼接成字符串
    NSString *orderSpec = [self.currentOrder description];
    // NSLog(@"orderSpec = %@",orderSpec);
    
    //获取私钥并将商户信息签名,外部商户可以根据情况存放私钥和签名,只需要遵循RSA签名规范,并将签名字符串base64编码和UrlEncode
    NSString *privateKey= KAlipayPrivateKey;
    id<DataSigner> signer = CreateRSADataSigner(privateKey);
    NSString *signedString = [signer signString:orderSpec];
    
    //将签名成功字符串格式化为订单字符串,请严格按照该格式
    NSString *orderString = nil;
    if (signedString != nil) {
        orderString = [NSString stringWithFormat:@"%@&sign=\"%@\"&sign_type=\"%@\"",
                       orderSpec, signedString, @"RSA"];
        
        [[AlipaySDK defaultService] payOrder:orderString fromScheme:appScheme callback:^(NSDictionary *resultDic) {
            //     NSLog(@"reslut = %@",resultDic);
            NSString *resultStatus=[resultDic objectForKey:@"resultStatus"];
            if ([resultStatus isEqualToString:@"9000"]) {
                
                //在这里根据 resultStatus 
                
            
                
                
            }else{

            }
            
            
        }];
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
