//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestDeleteMessage.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/OutPeer.h"
#include "im/actor/model/api/rpc/RequestDeleteMessage.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"
#include "java/util/List.h"

@interface APRequestDeleteMessage () {
 @public
  APOutPeer *peer_;
  id<JavaUtilList> rids_;
}

@end

J2OBJC_FIELD_SETTER(APRequestDeleteMessage, peer_, APOutPeer *)
J2OBJC_FIELD_SETTER(APRequestDeleteMessage, rids_, id<JavaUtilList>)

@implementation APRequestDeleteMessage

+ (APRequestDeleteMessage *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestDeleteMessage_fromBytesWithByteArray_(data);
}

- (instancetype)initWithAPOutPeer:(APOutPeer *)peer
                 withJavaUtilList:(id<JavaUtilList>)rids {
  APRequestDeleteMessage_initWithAPOutPeer_withJavaUtilList_(self, peer, rids);
  return self;
}

- (instancetype)init {
  APRequestDeleteMessage_init(self);
  return self;
}

- (APOutPeer *)getPeer {
  return self->peer_;
}

- (id<JavaUtilList>)getRids {
  return self->rids_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->peer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:new_APOutPeer_init()];
  self->rids_ = [values getRepeatedLongWithInt:3];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->peer_];
  [writer writeRepeatedLongWithInt:3 withJavaUtilList:self->rids_];
}

- (NSString *)description {
  NSString *res = @"rpc DeleteMessage{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"peer=", self->peer_));
  res = JreStrcat("$$", res, JreStrcat("$@", @", rids=", self->rids_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestDeleteMessage_HEADER;
}

@end

APRequestDeleteMessage *APRequestDeleteMessage_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestDeleteMessage_initialize();
  return ((APRequestDeleteMessage *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestDeleteMessage_init(), data));
}

void APRequestDeleteMessage_initWithAPOutPeer_withJavaUtilList_(APRequestDeleteMessage *self, APOutPeer *peer, id<JavaUtilList> rids) {
  (void) APRequest_init(self);
  self->peer_ = peer;
  self->rids_ = rids;
}

APRequestDeleteMessage *new_APRequestDeleteMessage_initWithAPOutPeer_withJavaUtilList_(APOutPeer *peer, id<JavaUtilList> rids) {
  APRequestDeleteMessage *self = [APRequestDeleteMessage alloc];
  APRequestDeleteMessage_initWithAPOutPeer_withJavaUtilList_(self, peer, rids);
  return self;
}

void APRequestDeleteMessage_init(APRequestDeleteMessage *self) {
  (void) APRequest_init(self);
}

APRequestDeleteMessage *new_APRequestDeleteMessage_init() {
  APRequestDeleteMessage *self = [APRequestDeleteMessage alloc];
  APRequestDeleteMessage_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestDeleteMessage)
