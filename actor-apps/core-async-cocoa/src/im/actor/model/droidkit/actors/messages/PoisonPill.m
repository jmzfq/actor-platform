//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/droidkit/actors/messages/PoisonPill.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/messages/PoisonPill.h"

@interface ImActorModelDroidkitActorsMessagesPoisonPill ()

- (instancetype)init;

@end

__attribute__((unused)) static void ImActorModelDroidkitActorsMessagesPoisonPill_init(ImActorModelDroidkitActorsMessagesPoisonPill *self);

__attribute__((unused)) static ImActorModelDroidkitActorsMessagesPoisonPill *new_ImActorModelDroidkitActorsMessagesPoisonPill_init() NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(ImActorModelDroidkitActorsMessagesPoisonPill)

ImActorModelDroidkitActorsMessagesPoisonPill *ImActorModelDroidkitActorsMessagesPoisonPill_INSTANCE_;

@implementation ImActorModelDroidkitActorsMessagesPoisonPill

- (instancetype)init {
  ImActorModelDroidkitActorsMessagesPoisonPill_init(self);
  return self;
}

- (NSString *)description {
  return @"PoisonPill";
}

+ (void)initialize {
  if (self == [ImActorModelDroidkitActorsMessagesPoisonPill class]) {
    ImActorModelDroidkitActorsMessagesPoisonPill_INSTANCE_ = new_ImActorModelDroidkitActorsMessagesPoisonPill_init();
    J2OBJC_SET_INITIALIZED(ImActorModelDroidkitActorsMessagesPoisonPill)
  }
}

@end

void ImActorModelDroidkitActorsMessagesPoisonPill_init(ImActorModelDroidkitActorsMessagesPoisonPill *self) {
  (void) NSObject_init(self);
}

ImActorModelDroidkitActorsMessagesPoisonPill *new_ImActorModelDroidkitActorsMessagesPoisonPill_init() {
  ImActorModelDroidkitActorsMessagesPoisonPill *self = [ImActorModelDroidkitActorsMessagesPoisonPill alloc];
  ImActorModelDroidkitActorsMessagesPoisonPill_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelDroidkitActorsMessagesPoisonPill)
