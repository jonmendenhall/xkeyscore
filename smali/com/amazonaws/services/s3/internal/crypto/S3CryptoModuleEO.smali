.class Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;
.super Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;
.source "S3CryptoModuleEO.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase<",
        "Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 0

    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    .line 47
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoMode()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object p1

    sget-object p2, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-eq p1, p2, :cond_0

    .line 48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 6

    .line 67
    new-instance v3, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v3}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 6

    .line 57
    new-instance v3, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v3}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method


# virtual methods
.method final cipherLiteForNextPart(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 1

    .line 136
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;->getCipherLite()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;->getNextInitializationVector()[B

    move-result-object p1

    .line 138
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->createUsingIV([B)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic cipherLiteForNextPart(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 0

    .line 37
    check-cast p1, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->cipherLiteForNextPart(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p1

    return-object p1
.end method

.method protected final ciphertextLength(J)J
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getBlockSizeInBytes()I

    move-result v0

    int-to-long v0, v0

    .line 148
    rem-long v2, p1, v0

    sub-long/2addr v0, v2

    add-long/2addr p1, v0

    return-wide p1
.end method

.method final computeLastPartSize(Lcom/amazonaws/services/s3/model/UploadPartRequest;)J
    .locals 6

    .line 118
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 120
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v0

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v0

    .line 128
    :goto_0
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getBlockSizeInBytes()I

    move-result p1

    int-to-long v2, p1

    .line 129
    rem-long v4, v0, v2

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getObjectSecurely(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 0

    .line 83
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getObjectSecurely(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 0

    .line 75
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method final newUploadContext(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;
    .locals 2

    .line 90
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;

    .line 91
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)V

    .line 92
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getCipherLite()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->getIV()[B

    move-result-object p1

    .line 93
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;->setNextInitializationVector([B)V

    return-object v0
.end method

.method bridge synthetic newUploadContext(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->newUploadContext(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;

    move-result-object p1

    return-object p1
.end method

.method final updateUploadContext(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;Lcom/amazonaws/internal/SdkFilterInputStream;)V
    .locals 0

    .line 101
    check-cast p2, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;

    .line 102
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->getBlock()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;->setNextInitializationVector([B)V

    return-void
.end method

.method bridge synthetic updateUploadContext(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;Lcom/amazonaws/internal/SdkFilterInputStream;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->updateUploadContext(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;Lcom/amazonaws/internal/SdkFilterInputStream;)V

    return-void
.end method

.method bridge synthetic wrapForMultipart(Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;J)Lcom/amazonaws/internal/SdkFilterInputStream;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->wrapForMultipart(Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;J)Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;

    move-result-object p1

    return-object p1
.end method

.method final wrapForMultipart(Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;J)Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;
    .locals 8

    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getBlockSizeInBytes()I

    move-result v0

    .line 110
    new-instance v7, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;

    int-to-long v0, v0

    sub-long v3, p2, v0

    move-object v1, v7

    move-object v2, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    return-object v7
.end method
