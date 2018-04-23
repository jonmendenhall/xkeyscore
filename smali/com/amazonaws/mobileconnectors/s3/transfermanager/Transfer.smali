.class public interface abstract Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;
.super Ljava/lang/Object;
.source "Transfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract addProgressListener(Lcom/amazonaws/event/ProgressListener;)V
.end method

.method public abstract addProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getProgress()Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;
.end method

.method public abstract getState()Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;
.end method

.method public abstract isDone()Z
.end method

.method public abstract removeProgressListener(Lcom/amazonaws/event/ProgressListener;)V
.end method

.method public abstract removeProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract waitForCompletion()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract waitForException()Lcom/amazonaws/AmazonClientException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
