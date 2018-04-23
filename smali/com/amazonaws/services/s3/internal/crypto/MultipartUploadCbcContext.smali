.class final Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;
.super Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;
.source "MultipartUploadCbcContext.java"


# instance fields
.field private nextIV:[B


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)V

    return-void
.end method


# virtual methods
.method public getNextInitializationVector()[B
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;->nextIV:[B

    return-object v0
.end method

.method public setNextInitializationVector([B)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;->nextIV:[B

    return-void
.end method
