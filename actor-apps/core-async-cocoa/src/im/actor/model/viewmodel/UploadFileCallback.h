//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/viewmodel/UploadFileCallback.java
//

#ifndef _AMUploadFileCallback_H_
#define _AMUploadFileCallback_H_

#include "J2ObjC_header.h"

@protocol AMUploadFileCallback < NSObject, JavaObject >

- (void)onNotUploading;

- (void)onUploading:(jfloat)progress;

- (void)onUploaded;

@end

J2OBJC_EMPTY_STATIC_INIT(AMUploadFileCallback)

J2OBJC_TYPE_LITERAL_HEADER(AMUploadFileCallback)

#define ImActorModelViewmodelUploadFileCallback AMUploadFileCallback

#endif // _AMUploadFileCallback_H_
