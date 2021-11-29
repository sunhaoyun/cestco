//
//  NSString+CESRSA.h
//  zhsq.cesecsh
//
//  Created by 研发部 on 2021/3/31.
//  Copyright © 2021 上海中电电子系统科技股份有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RSAEncryptor.h"


@interface NSString (CESRSA)

+(NSString *)encryptionWithStr:(NSString *)str;

@end


