//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core-crypto/src/main/java/org/bouncycastle/math/field/GF2Polynomial.java
//


#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/bouncycastle/math/field/GF2Polynomial.h"
#include "org/bouncycastle/util/Arrays.h"

@implementation OrgBouncycastleMathFieldGF2Polynomial

- (instancetype)initWithIntArray:(IOSIntArray *)exponents {
  OrgBouncycastleMathFieldGF2Polynomial_initWithIntArray_(self, exponents);
  return self;
}

- (jint)getDegree {
  return IOSIntArray_Get(exponents_, ((IOSIntArray *) nil_chk(exponents_))->size_ - 1);
}

- (IOSIntArray *)getExponentsPresent {
  return OrgBouncycastleUtilArrays_cloneWithIntArray_(exponents_);
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) {
    return YES;
  }
  if (!([obj isKindOfClass:[OrgBouncycastleMathFieldGF2Polynomial class]])) {
    return NO;
  }
  OrgBouncycastleMathFieldGF2Polynomial *other = (OrgBouncycastleMathFieldGF2Polynomial *) check_class_cast(obj, [OrgBouncycastleMathFieldGF2Polynomial class]);
  return OrgBouncycastleUtilArrays_areEqualWithIntArray_withIntArray_(exponents_, ((OrgBouncycastleMathFieldGF2Polynomial *) nil_chk(other))->exponents_);
}

- (NSUInteger)hash {
  return OrgBouncycastleUtilArrays_hashCodeWithIntArray_(exponents_);
}

@end

void OrgBouncycastleMathFieldGF2Polynomial_initWithIntArray_(OrgBouncycastleMathFieldGF2Polynomial *self, IOSIntArray *exponents) {
  (void) NSObject_init(self);
  self->exponents_ = OrgBouncycastleUtilArrays_cloneWithIntArray_(exponents);
}

OrgBouncycastleMathFieldGF2Polynomial *new_OrgBouncycastleMathFieldGF2Polynomial_initWithIntArray_(IOSIntArray *exponents) {
  OrgBouncycastleMathFieldGF2Polynomial *self = [OrgBouncycastleMathFieldGF2Polynomial alloc];
  OrgBouncycastleMathFieldGF2Polynomial_initWithIntArray_(self, exponents);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathFieldGF2Polynomial)
