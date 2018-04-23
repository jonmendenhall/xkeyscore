.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartCallable;
.super Ljava/lang/Object;
.source "CopyPartCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazonaws/services/s3/model/PartETag;",
        ">;"
    }
.end annotation


# instance fields
.field private final request:Lcom/amazonaws/services/s3/model/CopyPartRequest;

.field private final s3:Lcom/amazonaws/services/s3/AmazonS3;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/services/s3/model/CopyPartRequest;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 40
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartCallable;->request:Lcom/amazonaws/services/s3/model/CopyPartRequest;

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/s3/model/PartETag;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartCallable;->request:Lcom/amazonaws/services/s3/model/CopyPartRequest;

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->copyPart(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyPartResult;->getPartETag()Lcom/amazonaws/services/s3/model/PartETag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartCallable;->call()Lcom/amazonaws/services/s3/model/PartETag;

    move-result-object v0

    return-object v0
.end method
