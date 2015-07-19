//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/droidkit/bser/DataInput.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/Limits.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"

@interface BSDataInput () {
 @public
  IOSByteArray *data_;
  jint offset_;
  jint maxOffset_;
}

@end

J2OBJC_FIELD_SETTER(BSDataInput, data_, IOSByteArray *)

@implementation BSDataInput

- (instancetype)initWithByteArray:(IOSByteArray *)data {
  BSDataInput_initWithByteArray_(self, data);
  return self;
}

- (instancetype)initWithByteArray:(IOSByteArray *)data
                          withInt:(jint)offset
                          withInt:(jint)len {
  BSDataInput_initWithByteArray_withInt_withInt_(self, data, offset, len);
  return self;
}

- (IOSByteArray *)getData {
  return data_;
}

- (jint)getMaxOffset {
  return maxOffset_;
}

- (jboolean)isEOF {
  return maxOffset_ <= offset_;
}

- (jint)getOffset {
  return offset_;
}

- (jint)getRemaining {
  return maxOffset_ - offset_;
}

- (void)skipWithInt:(jint)size {
  if (offset_ + size > maxOffset_) {
    @throw new_JavaIoIOException_init();
  }
  offset_ += size;
}

- (jint)readByte {
  if (offset_ == maxOffset_) {
    @throw new_JavaIoIOException_init();
  }
  return IOSByteArray_Get(nil_chk(data_), offset_++) & (jint) 0xFF;
}

- (jint)readInt {
  if (offset_ + 4 > maxOffset_) {
    @throw new_JavaIoIOException_init();
  }
  jint res = (IOSByteArray_Get(nil_chk(data_), offset_ + 3) & (jint) 0xFF) + (LShift32((IOSByteArray_Get(data_, offset_ + 2) & (jint) 0xFF), 8)) + (LShift32((IOSByteArray_Get(data_, offset_ + 1) & (jint) 0xFF), 16)) + (LShift32((IOSByteArray_Get(data_, offset_) & (jint) 0xFF), 24));
  offset_ += 4;
  return res;
}

- (jlong)readLong {
  if (offset_ + 8 > maxOffset_) {
    @throw new_JavaIoIOException_init();
  }
  jlong a1 = IOSByteArray_Get(nil_chk(data_), offset_ + 3) & (jint) 0xFF;
  jlong a2 = IOSByteArray_Get(data_, offset_ + 2) & (jint) 0xFF;
  jlong a3 = IOSByteArray_Get(data_, offset_ + 1) & (jint) 0xFF;
  jlong a4 = IOSByteArray_Get(data_, offset_ + 0) & (jint) 0xFF;
  jlong res1 = (a1) + (LShift64(a2, 8)) + (LShift64(a3, 16)) + (LShift64(a4, 24));
  offset_ += 4;
  jlong b1 = IOSByteArray_Get(data_, offset_ + 3) & (jint) 0xFF;
  jlong b2 = IOSByteArray_Get(data_, offset_ + 2) & (jint) 0xFF;
  jlong b3 = IOSByteArray_Get(data_, offset_ + 1) & (jint) 0xFF;
  jlong b4 = IOSByteArray_Get(data_, offset_ + 0) & (jint) 0xFF;
  jlong res2 = (b1) + (LShift64(b2, 8)) + (LShift64(b3, 16)) + (LShift64(b4, 24));
  offset_ += 4;
  return res2 + (LShift64(res1, 32));
}

- (jlong)readUInt {
  if (offset_ + 4 > maxOffset_) {
    @throw new_JavaIoIOException_init();
  }
  jlong a1 = IOSByteArray_Get(nil_chk(data_), offset_ + 3) & (jint) 0xFF;
  jlong a2 = IOSByteArray_Get(data_, offset_ + 2) & (jint) 0xFF;
  jlong a3 = IOSByteArray_Get(data_, offset_ + 1) & (jint) 0xFF;
  jlong a4 = IOSByteArray_Get(data_, offset_ + 0) & (jint) 0xFF;
  offset_ += 4;
  return (a1) + (LShift64(a2, 8)) + (LShift64(a3, 16)) + (LShift64(a4, 24));
}

- (IOSByteArray *)readBytesWithInt:(jint)count {
  if (count < 0) {
    @throw new_JavaIoIOException_initWithNSString_(@"Count can't be negative");
  }
  if (count > BSLimits_MAX_BLOCK_SIZE) {
    @throw new_JavaIoIOException_initWithNSString_(@"Unable to read more than 1 MB");
  }
  if (offset_ + count > maxOffset_) {
    @throw new_JavaIoIOException_initWithNSString_(JreStrcat("$I$I", @"Too many to read, max len: ", maxOffset_, @", required len: ", (offset_ + count)));
  }
  IOSByteArray *res = [IOSByteArray newArrayWithLength:count];
  for (jint i = 0; i < count; i++) {
    *IOSByteArray_GetRef(res, i) = IOSByteArray_Get(nil_chk(data_), offset_++);
  }
  return res;
}

- (jint)readVarInt32 {
  jlong varInt = [self readVarInt];
  if (varInt > JavaLangInteger_MAX_VALUE || varInt < JavaLangInteger_MIN_VALUE) {
    @throw new_JavaIoIOException_initWithNSString_(@"Too big VarInt32");
  }
  return (jint) varInt;
}

- (jlong)readVarInt {
  jlong value = 0;
  jlong i = 0;
  jlong b;
  do {
    if (offset_ == maxOffset_) {
      @throw new_JavaIoIOException_init();
    }
    b = IOSByteArray_Get(nil_chk(data_), offset_++) & (jint) 0xFF;
    if ((b & (jint) 0x80) != 0) {
      value |= LShift64((b & (jint) 0x7F), i);
      i += 7;
      if (i > 70) {
        @throw new_JavaIoIOException_init();
      }
    }
    else {
      break;
    }
  }
  while (YES);
  return value | (LShift64(b, i));
}

- (IOSByteArray *)readProtoBytes {
  jlong len = [self readVarInt];
  if (len < 0) {
    @throw new_JavaIoIOException_init();
  }
  if (len > BSLimits_MAX_BLOCK_SIZE) {
    @throw new_JavaIoIOException_init();
  }
  return [self readBytesWithInt:(jint) len];
}

- (IOSLongArray *)readProtoLongs {
  jlong len = [self readVarInt];
  if (len < 0) {
    @throw new_JavaIoIOException_init();
  }
  if (len > BSLimits_MAX_PROTO_REPEATED) {
    @throw new_JavaIoIOException_init();
  }
  IOSLongArray *res = [IOSLongArray newArrayWithLength:(jint) len];
  for (jint i = 0; i < res->size_; i++) {
    *IOSLongArray_GetRef(res, i) = [self readLong];
  }
  return res;
}

- (NSString *)readProtoString {
  IOSByteArray *data = [self readProtoBytes];
  return [NSString stringWithBytes:data charsetName:@"UTF-8"];
}

- (jboolean)readProtoBool {
  return [self readByte] != 0;
}

- (jint)readASN1Length {
  jint length = [self readByte];
  if (length < 0) {
    @throw new_JavaIoIOException_initWithNSString_(@"EOF found when length expected");
  }
  if (length == (jint) 0x80) {
    return -1;
  }
  if (length > 127) {
    jint size = length & (jint) 0x7f;
    if (size > 4) {
      @throw new_JavaIoIOException_initWithNSString_(JreStrcat("$I", @"DER length more than 4 bytes: ", size));
    }
    length = 0;
    for (jint i = 0; i < size; i++) {
      jint next = [self readByte];
      length = (LShift32(length, 8)) + next;
    }
    if (length < 0) {
      @throw new_JavaIoIOException_initWithNSString_(@"corrupted stream - negative length found");
    }
  }
  return length;
}

- (jint)readASN1Tag {
  jint tag = [self readByte];
  if (tag == 0) {
    @throw new_JavaIoIOException_init();
  }
  return tag;
}

- (jint)readASN1TagNumberWithInt:(jint)tag {
  jint tagNo = tag & (jint) 0x1f;
  if (tagNo == (jint) 0x1f) {
    tagNo = 0;
    jint b = [self readByte];
    if ((b & (jint) 0x7f) == 0) {
      @throw new_JavaIoIOException_initWithNSString_(@"corrupted stream - invalid high tag number found");
    }
    while ((b >= 0) && ((b & (jint) 0x80) != 0)) {
      tagNo |= (b & (jint) 0x7f);
      LShiftAssignInt(&tagNo, 7);
      b = [self readByte];
    }
    if (b < 0) {
      @throw new_JavaIoIOException_initWithNSString_(@"EOF found inside tag value.");
    }
    tagNo |= (b & (jint) 0x7f);
  }
  return tagNo;
}

@end

void BSDataInput_initWithByteArray_(BSDataInput *self, IOSByteArray *data) {
  (void) NSObject_init(self);
  if (data == nil) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"data can't be null");
  }
  self->data_ = data;
  self->offset_ = 0;
  self->maxOffset_ = ((IOSByteArray *) nil_chk(data))->size_;
}

BSDataInput *new_BSDataInput_initWithByteArray_(IOSByteArray *data) {
  BSDataInput *self = [BSDataInput alloc];
  BSDataInput_initWithByteArray_(self, data);
  return self;
}

void BSDataInput_initWithByteArray_withInt_withInt_(BSDataInput *self, IOSByteArray *data, jint offset, jint len) {
  (void) NSObject_init(self);
  if (data == nil) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"data can't be null");
  }
  if (offset < 0) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"Offset can't be negative");
  }
  if (len < 0) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"Length can't be negative");
  }
  if (((IOSByteArray *) nil_chk(data))->size_ < offset + len) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$I$I", @"Inconsistent lengths, total: ", data->size_, @", offset: ", offset, @", len: ", len));
  }
  self->data_ = data;
  self->offset_ = offset;
  self->maxOffset_ = offset + len;
}

BSDataInput *new_BSDataInput_initWithByteArray_withInt_withInt_(IOSByteArray *data, jint offset, jint len) {
  BSDataInput *self = [BSDataInput alloc];
  BSDataInput_initWithByteArray_withInt_withInt_(self, data, offset, len);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(BSDataInput)
