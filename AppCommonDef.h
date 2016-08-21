//
//  AppCommonDef.h
//  支付宝支付Demo
//
//  Created by Jeremy on 16/8/2.
//  Copyright © 2016年 Jeremy. All rights reserved.
//

#import <Foundation/Foundation.h>


//因为是之前公司的 用之前必须改

#define KAlipayPartner @"2088901017236375"
#define KAlipaySeller @"mail@touchdelight.com"
#define KAlipayPrivateKey @"MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAOLQyekT6I+QVTN68UwoD/BMbUqwotgWMdaxsH0vZjgFJt58oGqITHZjnyza+f07IyGcqLLQOueE6jK6ooTMxF5/S3/ImYAMiOqPNm54fBT2/LAOdua3PuYrabzrbiPwnT+r47+D4EWzff+jKzpFrR2OgMHY41gvfy++9DLLZZljAgMBAAECgYEAo0mmoprHiVtiSz6OKsKIvvl2kRfbFG/eD2863NTb5SaoVfIo1qkrSuvrczJuWMVTRGZw+NJ6JaUFqeG9EJgOIZK31fO5VVDjGs9fmywNrOUPC+MhLsOGCiyOqoTiN5YPhwGzx/8G/ZjrK2dj9d8AMIUTHYUfglmXk4jH3G7EiiECQQD3J9wDbdx3EKFh0siTZd/24hxamiV2GVEg3QnDnjUVAaLqfO1pfS3+YHSmWG5KSJjk7h1F50Je78WQ+HTNrAfRAkEA6u6ZCOJiLyPqH6Hek2fnwMzNXkSmnsnMkRdm6x/1EEbOEJ8B91HJNhcywltz0m06ujt7sxADFBYKtXBredDO8wJBAKMh6wVUaTUpg+umjf9EOcyht+dRYTKPSU4wtzYn4Y+I8fhmFuoO1uHU1onJSpq7SjeotyehmdxB1Jx4cdgjGVECQCZAqVxf+Bqy31k9Mw+PWJX1Au95gCPUueFaDSD1uCJpVP4x1dEeWQPcrSAmYep+bJSMQOz8C3RGzoGSh31zOW8CQHZlLc3npLLnOihIwN59idOFESlsof/SJdag3oq1lUXoRx5MZaDntCK/Jx2gkmKzw7pu5UejpG/YD7igulYcyRE="
//支付宝测试测试 回调   用之前记得必须改
#define BNB_ZHIFUBAO_NUTIFYURL @"http://www.cimp.com.cn/testcimp/index.php/Pay/notifyurl"

#define SCREEN_HEIGHT   ([[UIScreen mainScreen] bounds].size.height)
#define SCREEN_WIDTH    ([[UIScreen mainScreen] bounds].size.width)

@interface AppCommonDef : NSObject

@end
