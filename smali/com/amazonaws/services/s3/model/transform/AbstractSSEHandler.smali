.class abstract Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "AbstractSSEHandler.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSSEAlgorithm()Ljava/lang/String;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->sseResult()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :cond_0
    invoke-interface {v0}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getSSECustomerAlgorithm()Ljava/lang/String;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->sseResult()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {v0}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->getSSECustomerAlgorithm()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getSSECustomerKeyMd5()Ljava/lang/String;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->sseResult()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 62
    :cond_0
    invoke-interface {v0}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->getSSECustomerKeyMd5()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final setSSEAlgorithm(Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->sseResult()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->setSSEAlgorithm(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setSSECustomerAlgorithm(Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->sseResult()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->setSSECustomerAlgorithm(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setSSECustomerKeyMd5(Ljava/lang/String;)V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->sseResult()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->setSSECustomerKeyMd5(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected abstract sseResult()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;
.end method
