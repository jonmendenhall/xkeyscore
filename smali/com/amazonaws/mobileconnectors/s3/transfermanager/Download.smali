.class public interface abstract Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;
.super Ljava/lang/Object;
.source "Download.java"

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

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;
.end method

.method public abstract pause()Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/mobileconnectors/s3/transfermanager/exception/PauseException;
        }
    .end annotation
.end method
