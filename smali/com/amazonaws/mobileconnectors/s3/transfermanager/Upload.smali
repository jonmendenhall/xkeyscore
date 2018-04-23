.class public interface abstract Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;
.super Ljava/lang/Object;
.source "Upload.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract abort()V
.end method

.method public abstract pause()Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/mobileconnectors/s3/transfermanager/exception/PauseException;
        }
    .end annotation
.end method

.method public abstract tryPause(Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult<",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;",
            ">;"
        }
    .end annotation
.end method

.method public abstract waitForUploadResult()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
