.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListenerChain;
.super Lcom/amazonaws/event/ProgressListenerChain;
.source "S3ProgressListenerChain.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;


# direct methods
.method public varargs constructor <init>([Lcom/amazonaws/event/ProgressListener;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/amazonaws/event/ProgressListenerChain;-><init>([Lcom/amazonaws/event/ProgressListener;)V

    return-void
.end method


# virtual methods
.method public onPersistableTransfer(Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;)V
    .locals 3

    .line 38
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListenerChain;->getListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/event/ProgressListener;

    .line 39
    instance-of v2, v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;

    if-eqz v2, :cond_0

    .line 40
    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;

    .line 41
    invoke-interface {v1, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;->onPersistableTransfer(Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;)V

    goto :goto_0

    :cond_1
    return-void
.end method
