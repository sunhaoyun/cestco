//
//  NSString+CESRSA.m
//  zhsq.cesecsh
//
//  Created by 研发部 on 2021/3/31.
//  Copyright © 2021 上海中电电子系统科技股份有限公司. All rights reserved.
//

#import "NSString+CESRSA.h"

@implementation NSString (CESRSA)


+(NSString *)encryptionWithStr:(NSString *)str{
//    NSString *originalString = @"123456 ";
    
    NSDictionary *params = @{
                             @"password" : str ? : @"",
                             @"timestamp" : [self getTimestampSince1970] ? : @"",
                             };
    NSString *jsonStr = [params mj_JSONString];
//    NSLog(@"---mj_JSONString转换手的json --%@",[params mj_JSONString]);
    //使用字符串格式的公钥私钥加密解密
    NSString *encryptStr = [RSAEncryptor encryptString:jsonStr publicKey:@"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDS+L2c/fXgayO6d9IDsZo8dPyo75Hx2OKpYmqj7JnHHOYb7iHDO6Wpql3UIKzF/nKtOZtw+5B86CUBfDICoFhKzGatgGFdAdDaANBOFS0iejZNqZYBKc+DfVh/cdL8mTl4wKbRrLaDMndjmdPtGHJf1NKXCYWn/ZDiLxVZ5bWk7QIDAQAB"];
    
//    NSLog(@"加密前:%@", str);
//    NSLog(@"加密后:%@", encryptStr);
//    NSLog(@"解密后:%@", [RSAEncryptor decryptString:encryptStr privateKey:@"MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAIcEy4rl63cg68kXqKQukyqZH3r6LxR0ZlFnlXDOBx51ya0M/J6PCvBdo77+YQ28cWPyxW/GLz1jGsZvn415WnTVshxcbttuHWWPKIO377aJ2Bp4JVdv0qFUipHfjWEH3Mq9nPCspzI0WO6XVRG/ZI0gLqiF05MxEjNecCDYjhI/AgMBAAECgYB8XIJOMXAsjfofgtcmQm/y8I76aq4qnPwRRuNyv5H3EG7uIeQc94wP0XAdX5htWoDmmpoYVeb1F+91jyLa4EfbtPJ/kNT69SPIRblwGkHhQ8Mj6I9OnXqZXMUImqjkyb11a2nIO0LP6R75p+bgLe2+izLqCmkN7uaXTeJae5TioQJBAM78TmuCBbMWiJBH9vULrE2I40dvetogoOMW/9oc8xbVj9Pc/kh54sisMIQMy+nHpKKIkfprqFzhcIj2uQD/KY0CQQCm/ceMck58jf2Tm6tUzfjf7FF8QNlkaRRYJfjst3WDXXGIXUDTyRveOADMbCaZymLP/BJzX0OrEW/G/0Pai+n7AkA3ZLiL9wEVe4tSqZ/C1rvnCCJjJMeJBsBn5ejU83hu/Pp/5Z27wbran5JgVJhh2UcLJGeE0Dj/mmmmjfjW9nKlAkEAo3WxGipd55A50n5DpJyF6/LwBHeaFK7DKlHpKxWd4vvaAUh/B5BJRil9ppyK4Gl6dephyStMGqzTxG/kZI4mdwJABOUmmMK8k//GKzxVA0j/ClQD5vsz8ODA7TjpLh6hBcr1NhIRsVlev4kpv92Ug4IBXzaPgshnMPl5iyHLMzGT4w=="]);
    
    return encryptStr;
    
    
}
//获取当前时间戳字符串 10位
+ (NSString *)getTimestampSince1970
{
    NSDate *datenow = [NSDate date];//现在时间
    NSTimeInterval interval = [datenow timeIntervalSince1970];//13位的*1000
    NSString *timeSp = [NSString stringWithFormat:@"%.0f",interval];
    return timeSp;
}



@end
