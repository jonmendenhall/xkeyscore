.class public interface abstract Lcom/amazonaws/services/s3/internal/ServiceUtils$RetryableS3DownloadTask;
.super Ljava/lang/Object;
.source "ServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/internal/ServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RetryableS3DownloadTask"
.end annotation


# virtual methods
.method public abstract getS3ObjectStream()Lcom/amazonaws/services/s3/model/S3Object;
.end method

.method public abstract needIntegrityCheck()Z
.end method
