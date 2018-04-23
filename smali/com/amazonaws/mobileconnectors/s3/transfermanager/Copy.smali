.class public interface abstract Lcom/amazonaws/mobileconnectors/s3/transfermanager/Copy;
.super Ljava/lang/Object;
.source "Copy.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract waitForCopyResult()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
