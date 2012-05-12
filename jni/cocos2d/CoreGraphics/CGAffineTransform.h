/* Copyright (c) 2006-2007 Christopher J. W. Lloyd

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. */

#import <CGStuff.h>

typedef struct {
   CGFloat a;
   CGFloat b;
   CGFloat c;
   CGFloat d;
   CGFloat tx;
   CGFloat ty;
} CGAffineTransform;

// const CGAffineTransform CGAffineTransformIdentity;

 CGAffineTransform CGAffineTransformMake(CGFloat a,CGFloat b,CGFloat c,CGFloat d,CGFloat tx,CGFloat ty);
 CGAffineTransform CGAffineTransformMakeRotation(CGFloat radians);
 CGAffineTransform CGAffineTransformMakeScale(CGFloat scalex,CGFloat scaley);
 CGAffineTransform CGAffineTransformMakeTranslation(CGFloat tx,CGFloat ty);

 CGAffineTransform CGAffineTransformConcat(CGAffineTransform xform,CGAffineTransform append);
 CGAffineTransform CGAffineTransformInvert(CGAffineTransform xform);

 CGAffineTransform CGAffineTransformRotate(CGAffineTransform xform,CGFloat radians);
 CGAffineTransform CGAffineTransformScale(CGAffineTransform xform,CGFloat scalex,CGFloat scaley);
 CGAffineTransform CGAffineTransformTranslate(CGAffineTransform xform,CGFloat tx,CGFloat ty);

 CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform xform);
 CGSize CGSizeApplyAffineTransform(CGSize size, CGAffineTransform xform);


