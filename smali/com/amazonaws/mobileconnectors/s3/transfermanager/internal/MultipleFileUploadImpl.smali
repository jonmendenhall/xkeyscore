.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;
.super Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;
.source "MultipleFileUploadImpl.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer<",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;",
        ">;",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;"
    }
.end annotation


# instance fields
.field private final bucketName:Ljava/lang/String;

.field private final keyPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;",
            "Lcom/amazonaws/event/ProgressListenerChain;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Ljava/util/Collection;)V

    .line 41
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;->keyPrefix:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;->bucketName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyPrefix()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;->keyPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTransfers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;->subTransfers:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public waitForCompletion()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;->subTransfers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-super {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->waitForCompletion()V

    return-void
.end method
