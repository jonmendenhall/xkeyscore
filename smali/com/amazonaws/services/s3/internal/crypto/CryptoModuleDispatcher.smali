.class public Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;
.super Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;
.source "CryptoModuleDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule<",
        "Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;",
        ">;"
    }
.end annotation


# instance fields
.field private final ae:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

.field private final defaultCryptoMode:Lcom/amazonaws/services/s3/model/CryptoMode;

.field private final eo:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 8

    .line 71
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;-><init>()V

    .line 72
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->clone()Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    move-result-object p5

    .line 73
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoMode()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    .line 76
    invoke-virtual {p5, v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->setCryptoMode(Lcom/amazonaws/services/s3/model/CryptoMode;)V

    .line 78
    :cond_0
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->readOnly()Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    move-result-object p5

    .line 79
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoMode()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->defaultCryptoMode:Lcom/amazonaws/services/s3/model/CryptoMode;

    .line 80
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher$1;->$SwitchMap$com$amazonaws$services$s3$model$CryptoMode:[I

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->defaultCryptoMode:Lcom/amazonaws/services/s3/model/CryptoMode;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    .line 109
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 94
    :pswitch_0
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->eo:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    .line 97
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->clone()Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    move-result-object p5

    .line 99
    :try_start_0
    sget-object v0, Lcom/amazonaws/services/s3/model/CryptoMode;->AuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;

    invoke-virtual {p5, v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->setCryptoMode(Lcom/amazonaws/services/s3/model/CryptoMode;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :catch_0
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 106
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->readOnly()Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    move-result-object v6

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->ae:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    goto :goto_0

    .line 88
    :pswitch_1
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->ae:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 91
    iput-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->eo:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    goto :goto_0

    .line 82
    :pswitch_2
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAEStrict;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAEStrict;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->ae:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 85
    iput-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->eo:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abortMultipartUploadSecurely(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->defaultCryptoMode:Lcom/amazonaws/services/s3/model/CryptoMode;

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->eo:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->abortMultipartUploadSecurely(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->ae:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->abortMultipartUploadSecurely(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    :goto_0
    return-void
.end method

.method public completeMultipartUploadSecurely(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->defaultCryptoMode:Lcom/amazonaws/services/s3/model/CryptoMode;

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->eo:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    .line 137
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->completeMultipartUploadSecurely(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->ae:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 138
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->completeMultipartUploadSecurely(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public copyPartSecurely(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->defaultCryptoMode:Lcom/amazonaws/services/s3/model/CryptoMode;

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->eo:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    .line 178
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->copyPartSecurely(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->ae:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 179
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->copyPartSecurely(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getObjectSecurely(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->ae:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->getObjectSecurely(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getObjectSecurely(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->ae:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->getObjectSecurely(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    return-object p1
.end method

.method public initiateMultipartUploadSecurely(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->defaultCryptoMode:Lcom/amazonaws/services/s3/model/CryptoMode;

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->eo:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    .line 154
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->initiateMultipartUploadSecurely(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->ae:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 155
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->initiateMultipartUploadSecurely(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public putInstructionFileSecurely(Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->defaultCryptoMode:Lcom/amazonaws/services/s3/model/CryptoMode;

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->eo:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    .line 186
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->putInstructionFileSecurely(Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->ae:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 187
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->putInstructionFileSecurely(Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public putLocalObjectSecurely(Lcom/amazonaws/services/s3/model/UploadObjectRequest;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->defaultCryptoMode:Lcom/amazonaws/services/s3/model/CryptoMode;

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->eo:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->putLocalObjectSecurely(Lcom/amazonaws/services/s3/model/UploadObjectRequest;Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->ae:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->putLocalObjectSecurely(Lcom/amazonaws/services/s3/model/UploadObjectRequest;Ljava/lang/String;Ljava/io/OutputStream;)V

    :goto_0
    return-void
.end method

.method public putObjectSecurely(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->defaultCryptoMode:Lcom/amazonaws/services/s3/model/CryptoMode;

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->eo:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    .line 116
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->putObjectSecurely(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->ae:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 117
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->putObjectSecurely(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public uploadPartSecurely(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->defaultCryptoMode:Lcom/amazonaws/services/s3/model/CryptoMode;

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->eo:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;

    .line 171
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->uploadPartSecurely(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher;->ae:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;

    .line 172
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->uploadPartSecurely(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object p1

    :goto_0
    return-object p1
.end method
