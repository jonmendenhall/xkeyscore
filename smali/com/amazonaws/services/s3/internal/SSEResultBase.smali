.class public abstract Lcom/amazonaws/services/s3/internal/SSEResultBase;
.super Ljava/lang/Object;
.source "SSEResultBase.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;


# instance fields
.field private sseAlgorithm:Ljava/lang/String;

.field private sseCustomerAlgorithm:Ljava/lang/String;

.field private sseCustomerKeyMD5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSSEAlgorithm()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/SSEResultBase;->sseAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getSSECustomerAlgorithm()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/SSEResultBase;->sseCustomerAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getSSECustomerKeyMd5()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/SSEResultBase;->sseCustomerKeyMD5:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerSideEncryption()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/SSEResultBase;->sseAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final setSSEAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/SSEResultBase;->sseAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public final setSSECustomerAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/SSEResultBase;->sseCustomerAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public final setSSECustomerKeyMd5(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/SSEResultBase;->sseCustomerKeyMD5:Ljava/lang/String;

    return-void
.end method
