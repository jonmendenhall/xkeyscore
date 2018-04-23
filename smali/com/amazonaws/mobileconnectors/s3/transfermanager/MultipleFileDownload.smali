.class public interface abstract Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileDownload;
.super Ljava/lang/Object;
.source "MultipleFileDownload.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract abort()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBucketName()Ljava/lang/String;
.end method

.method public abstract getKeyPrefix()Ljava/lang/String;
.end method
