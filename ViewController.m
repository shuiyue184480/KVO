//
//  ViewController.m
//  KVO
//
//  Created by 田云龙 on 2022/1/5.
//

#import "ViewController.h"
#import "LGViewController.h"
#import "LGPerson.h"
#import <objc/runtime.h>

@interface ViewController ()
@property (nonatomic, strong) LGPerson *person;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn setTitle:@"push" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(jumpAction) forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(100, 100, 50, 30);
    [self.view addSubview:btn];
    
    // Do any additional setup after loading the view.
}

- (void)jumpAction{
    LGViewController * LGVC = [[LGViewController alloc] init];
    [self presentViewController:LGVC animated:YES completion:^{
        
    }];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self printClasses:[LGPerson class]];
}

#pragma mark - 遍历类以及子类
- (void)printClasses:(Class)cls{
    
    /// 注册类的总数
    int count = objc_getClassList(NULL, 0);
    /// 创建一个数组， 其中包含给定对象
    NSMutableArray *mArray = [NSMutableArray arrayWithObject:cls];
    /// 获取所有已注册的类
    Class* classes = (Class*)malloc(sizeof(Class)*count);
    objc_getClassList(classes, count);
    for (int i = 0; i<count; i++) {
        if (cls == class_getSuperclass(classes[i])) {
            [mArray addObject:classes[i]];
        }
    }
    free(classes);
    NSLog(@"ViewController == classes = %@", mArray);
}


@end
