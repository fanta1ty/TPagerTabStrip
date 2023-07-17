#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-missing-property-synthesis"
#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN


extern const CGPathRef FXPageControlDotShapeCircle;
extern const CGPathRef FXPageControlDotShapeSquare;
extern const CGPathRef FXPageControlDotShapeTriangle;


@protocol FXPageControlDelegate;


IB_DESIGNABLE @interface FXPageControl : UIControl

- (void)setUp;
- (CGSize)sizeForNumberOfPages:(NSInteger)pageCount;
- (void)updateCurrentPageDisplay;

@property (nonatomic, weak) IBOutlet id <FXPageControlDelegate> delegate;

@property (nonatomic, assign) IBInspectable NSInteger currentPage;
@property (nonatomic, assign) IBInspectable NSInteger numberOfPages;
@property (nonatomic, assign) IBInspectable BOOL defersCurrentPageDisplay;
@property (nonatomic, assign) IBInspectable BOOL hidesForSinglePage;
@property (nonatomic, assign, getter = isWrapEnabled) IBInspectable BOOL wrapEnabled;
@property (nonatomic, assign, getter = isVertical) IBInspectable BOOL vertical;

@property (nonatomic, assign) IBInspectable CGPathRef dotShape;
@property (nonatomic, assign) IBInspectable CGFloat dotSize;
@property (nonatomic, assign) IBInspectable CGFloat dotShadowBlur;
@property (nonatomic, assign) IBInspectable CGSize dotShadowOffset;
@property (nonatomic, assign) IBInspectable CGFloat dotBorderWidth;
@property (nonatomic, strong, nullable) IBInspectable UIImage *dotImage;
@property (nonatomic, strong, nullable) IBInspectable UIColor *dotColor;
@property (nonatomic, strong, nullable) IBInspectable UIColor *dotShadowColor;
@property (nonatomic, strong, nullable) IBInspectable UIColor *dotBorderColor;

@property (nonatomic, assign) IBInspectable CGPathRef selectedDotShape;
@property (nonatomic, assign) IBInspectable CGFloat selectedDotSize;
@property (nonatomic, assign) IBInspectable CGFloat selectedDotShadowBlur;
@property (nonatomic, assign) IBInspectable CGSize selectedDotShadowOffset;
@property (nonatomic, assign) IBInspectable CGFloat selectedDotBorderWidth;
@property (nonatomic, strong, nullable) IBInspectable UIImage *selectedDotImage;
@property (nonatomic, strong, nullable) IBInspectable UIColor *selectedDotColor;
@property (nonatomic, strong, nullable) IBInspectable UIColor *selectedDotShadowColor;
@property (nonatomic, strong, nullable) IBInspectable UIColor *selectedDotBorderColor;

@property (nonatomic, assign) IBInspectable CGFloat dotSpacing;

@end


@protocol FXPageControlDelegate <NSObject>
@optional

- (nullable UIImage *)pageControl:(FXPageControl *)pageControl imageForDotAtIndex:(NSInteger)index;
- (CGPathRef)pageControl:(FXPageControl *)pageControl shapeForDotAtIndex:(NSInteger)index;
- (UIColor *)pageControl:(FXPageControl *)pageControl colorForDotAtIndex:(NSInteger)index;

- (nullable UIImage *)pageControl:(FXPageControl *)pageControl selectedImageForDotAtIndex:(NSInteger)index;
- (CGPathRef)pageControl:(FXPageControl *)pageControl selectedShapeForDotAtIndex:(NSInteger)index;
- (UIColor *)pageControl:(FXPageControl *)pageControl selectedColorForDotAtIndex:(NSInteger)index;

@end


NS_ASSUME_NONNULL_END


#pragma clang diagnostic pop
