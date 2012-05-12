#ifndef __CGSTUFF_H__
#define __CGSTUFF_H__

typedef float CGFloat;
typedef float ccTime;

typedef struct CGPoint {
   CGFloat x;
   CGFloat y;
} CGPoint;

typedef struct CGSize {
   CGFloat width;
   CGFloat height;
} CGSize;

typedef struct CGRect {
   CGPoint origin;
   CGSize  size;
} CGRect;

#endif
