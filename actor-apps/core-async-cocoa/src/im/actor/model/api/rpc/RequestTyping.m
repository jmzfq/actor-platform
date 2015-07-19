//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestTyping.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/OutPeer.h"
#include "im/actor/model/api/TypingType.h"
#include "im/actor/model/api/rpc/RequestTyping.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface APRequestTyping () {
 @public
  APOutPeer *peer_;
  APTypingTypeEnum *typingType_;
}

@end

J2OBJC_FIELD_SETTER(APRequestTyping, peer_, APOutPeer *)
J2OBJC_FIELD_SETTER(APRequestTyping, typingType_, APTypingTypeEnum *)

@implementation APRequestTyping

+ (APRequestTyping *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestTyping_fromBytesWithByteArray_(data);
}

- (instancetype)initWithAPOutPeer:(APOutPeer *)peer
             withAPTypingTypeEnum:(APTypingTypeEnum *)typingType {
  APRequestTyping_initWithAPOutPeer_withAPTypingTypeEnum_(self, peer, typingType);
  return self;
}

- (instancetype)init {
  APRequestTyping_init(self);
  return self;
}

- (APOutPeer *)getPeer {
  return self->peer_;
}

- (APTypingTypeEnum *)getTypingType {
  return self->typingType_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->peer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:new_APOutPeer_init()];
  self->typingType_ = APTypingTypeEnum_parseWithInt_([values getIntWithInt:3]);
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->peer_];
  if (self->typingType_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeIntWithInt:3 withInt:[((APTypingTypeEnum *) nil_chk(self->typingType_)) getValue]];
}

- (NSString *)description {
  NSString *res = @"rpc Typing{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"peer=", self->peer_));
  res = JreStrcat("$$", res, JreStrcat("$@", @", typingType=", self->typingType_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestTyping_HEADER;
}

@end

APRequestTyping *APRequestTyping_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestTyping_initialize();
  return ((APRequestTyping *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestTyping_init(), data));
}

void APRequestTyping_initWithAPOutPeer_withAPTypingTypeEnum_(APRequestTyping *self, APOutPeer *peer, APTypingTypeEnum *typingType) {
  (void) APRequest_init(self);
  self->peer_ = peer;
  self->typingType_ = typingType;
}

APRequestTyping *new_APRequestTyping_initWithAPOutPeer_withAPTypingTypeEnum_(APOutPeer *peer, APTypingTypeEnum *typingType) {
  APRequestTyping *self = [APRequestTyping alloc];
  APRequestTyping_initWithAPOutPeer_withAPTypingTypeEnum_(self, peer, typingType);
  return self;
}

void APRequestTyping_init(APRequestTyping *self) {
  (void) APRequest_init(self);
}

APRequestTyping *new_APRequestTyping_init() {
  APRequestTyping *self = [APRequestTyping alloc];
  APRequestTyping_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestTyping)
