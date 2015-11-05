//
//  IntegerToString.m
//  FootBallPlayer
//
//  Created by tuan.suke on 11/4/15.
//  Copyright © 2015 Cuong Trinh. All rights reserved.
//

#import "IntegerToString.h"

@interface IntegerToString ()

@end

@implementation IntegerToString

- (void)viewDidLoad {
    [super viewDidLoad];
   __block int m,j;
    NSArray* arr1s = [NSArray arrayWithObjects:@21,@2,@11,@91, nil];
    NSLog(@"Chương trình in ra số tự nhiên có 2 chữ số\nMảng có tất cả %lu số interger",(unsigned long)arr1s.count);
   __block NSString *date, *currentNum;
    
    NSMutableArray* pickedNames = [NSMutableArray new]; // Tạo mảng phụ chứa các cầu thủ được chọn
    [arr1s enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        int i = [obj intValue]; // chuyển giá trị của mảng về số nguyên
        m =0; j=0;
        if (i>0 &&i<=10) {
            goto one;
        }
         if ( i>10 && i <20)
        {
            m =i%10;
            goto two;
            
        } if ( i>20 && i<100) {
            j = i/10;
            i=i%10;
            goto three;
        }
        
    one: {  if (j !=0) {
              j=0;
            } else date = @"";
        
        switch (i) {
            case 1:currentNum = @"one"; date = [NSString stringWithFormat:@"%@%@",date,currentNum];
                break;
            case 2:currentNum = @"two"; date = [NSString stringWithFormat:@"%@%@",date,currentNum];
                break;
            case 3:currentNum = @"three"; date = [NSString stringWithFormat:@"%@%@",date,currentNum];
                break;
            case 4:currentNum = @"four"; date = [NSString stringWithFormat:@"%@%@",date,currentNum];
                break;
            case 5:currentNum = @"five"; date = [NSString stringWithFormat:@"%@%@",date,currentNum];
                break;
            case 6:currentNum = @"six"; date = [NSString stringWithFormat:@"%@%@",date,currentNum];
                break;
            case 7:currentNum = @"seven"; date = [NSString stringWithFormat:@"%@%@",date,currentNum];
                break;
            case 8:currentNum = @"eight"; date = [NSString stringWithFormat:@"%@%@",date,currentNum];
                break;
            case 9:currentNum = @"nine"; date = [NSString stringWithFormat:@"%@%@",date,currentNum];
                break;
            case 10:currentNum = @"ten"; date = [NSString stringWithFormat:@"%@%@",date,currentNum];
                break;
        }
        [pickedNames addObject:date];
            goto four;
    }
    two:
        {
            
        switch (m)
            {
                case 1:[pickedNames addObject:@"eleven"];
                    break;
                case 2:[pickedNames addObject:@"twelve"];
                    break;
                case 3:[pickedNames addObject:@"thirteen"];
                    break;
                case 4:[pickedNames addObject:@"fourteen"];
                    break;
                case 5:[pickedNames addObject:@"fifteen"];
                    break;
                case 6:[pickedNames addObject:@"sixteen"];
                    break;
                case 7:[pickedNames addObject:@"seventeen"];
                    break;
                case 8:[pickedNames addObject:@"eighteen"];
                    break;
                case 9:[pickedNames addObject:@"nineteen"];
                    break;
            }
        
        }
        three:
        {
            switch(j)
            {
                case 2:currentNum = @"twenty"; date = [NSString stringWithFormat:@"%@ ",currentNum];
                    goto one; break ;
                case 3:currentNum = @"twenty"; date = [NSString stringWithFormat:@"%@ ",currentNum];
                    goto one; break ;
                case 4:currentNum = @"fourty"; date = [NSString stringWithFormat:@"%@ ",currentNum];
                    goto one; break ;
                case 5:currentNum = @"fifty"; date = [NSString stringWithFormat:@"%@ ",currentNum];
                    goto one; break ;
                case 6:currentNum = @"sixty"; date = [NSString stringWithFormat:@"%@ ",currentNum];
                    goto one; break ;
                case 7:currentNum = @"seventy"; date = [NSString stringWithFormat:@"%@ ",currentNum];
                    goto one; break ;
                case 8:currentNum = @"eighty"; date = [NSString stringWithFormat:@"%@ ",currentNum];
                    goto one; break ;
                case 9:currentNum = @"ninety"; date = [NSString stringWithFormat:@"%@ ",currentNum];
                    goto one; break ;
                
            }
        
        }
        four : NSLog(@"");
    
    }];
    NSLog(@"Có %lu số hợp lệ",(unsigned long)pickedNames.count);
    NSLog(@"%@",pickedNames);
}
@end
