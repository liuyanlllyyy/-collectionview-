//
//  ViewController.m
//  卡片cell
//
//  Created by Yanni on 16/2/22.
//  Copyright © 2016年 Yanni. All rights reserved.
//

#import "ViewController.h"
#import "DWViewCell.h"
#import "DWFlowLayout.h"

#define SCREENWITH   [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height


@interface ViewController ()<UICollectionViewDelegateFlowLayout,UICollectionViewDataSource>
{
    NSArray * data;
    NSString * identifier;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    data = @[@"01",@"02",@"03",@"04",@"05",@"01",@"02",@"03",@"04",@"05",@"02"];

   identifier = @"cell";
    // Do any additional setup after loading the view, typically from a nib.
    DWFlowLayout *layout = [[DWFlowLayout alloc] init];
    self.collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, 375, 667) collectionViewLayout:layout];
    
     [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:identifier];
   // self.collectionView.collectionViewLayout = layout;
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    _collectionView.pagingEnabled = YES;
    self.view.backgroundColor = [UIColor clearColor];
   _collectionView.backgroundColor = [UIColor clearColor];
      //  [self.collectionView reloadData];
    [_collectionView autoresizesSubviews];
     [self.view addSubview:self.collectionView];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark cell的数量
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
   
    return data.count;
    
}

#pragma mark cell的视图
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
   // NSString *cellIdentifier = @"AADWViewCell";
    DWViewCell *cell =(DWViewCell *) [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
   // cell =  [cell initWithFrame:self.view.bounds];

//    if (!cell) {
//       // cell.imageView.image = [UIImage imageNamed:@"01"];
//        
//
//        
//    }
    //NSInteger row = indexPath.row;
    //[cell.imageView sizeToFit];
//cell.imageView.image = [UIImage imageNamed:[data objectAtIndex:indexPath.row]];
//    cell.imageView.image =  [[UIImageView alloc]initWithImage:[UIImage imageNamed:[data objectAtIndex:indexPath.row]]];
//
    if(indexPath.row==0)
    {
        cell.backgroundColor = [UIColor whiteColor];
    }
    else if(indexPath.row==1)
    {
        cell.backgroundColor = [UIColor greenColor];
    }
   else if (indexPath.row == 2)
    {
        cell.backgroundColor = [UIColor blueColor];
    }
   else if (indexPath.row == 3)
   {
       cell.backgroundColor = [UIColor purpleColor];
   }
   else if (indexPath.row == 4)
   {
       cell.backgroundColor = [UIColor blackColor];
   }
  //  cell.label.text = [NSString stringWithFormat:@"%ld",(long)indexPath.item];

    return cell;
}

#pragma mark cell的大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(SCREENWITH-60, SCREENHEIGHT - 64 );
}

#pragma mark cell的点击事件
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"点击图片%ld",indexPath.row);
}
//-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
//{
//    return 2;
//}
-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return UIInterfaceOrientationIsLandscape(toInterfaceOrientation);
}

@end

