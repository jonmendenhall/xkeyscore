.class Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;
.super Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;
.source "S3CryptoModuleAE.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase<",
        "Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final BIT_SIZE:I = 0x8

.field private static final DEFAULT_BYTE_SIZE:I = 0x2800


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 62
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;->enableBouncyCastle()V

    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 0

    .line 71
    invoke-direct/range {p0 .. p5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    .line 73
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoMode()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object p1

    .line 74
    sget-object p2, Lcom/amazonaws/services/s3/model/CryptoMode;->StrictAuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/amazonaws/services/s3/model/CryptoMode;->AuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-eq p1, p2, :cond_0

    .line 76
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 6

    .line 95
    new-instance v3, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v3}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 6

    .line 86
    new-instance v3, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v3}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method private assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 437
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method private decipher(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/model/S3Object;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 7

    .line 151
    new-instance v4, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getS3ObjectId()Lcom/amazonaws/services/s3/model/S3ObjectId;

    move-result-object v0

    invoke-direct {v4, p4, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;-><init>(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/S3ObjectId;)V

    .line 153
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->hasEncryptionInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->decipherWithMetadata(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    return-object p1

    .line 157
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getS3ObjectId()Lcom/amazonaws/services/s3/model/S3ObjectId;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->fetchInstructionFile(Lcom/amazonaws/services/s3/model/S3ObjectId;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 160
    :try_start_0
    invoke-virtual {v6}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->isInstructionFile()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v6

    .line 161
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->decipherWithInstructionFile(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v6, p2}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lorg/apache/commons/logging/Log;)V

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v6, p1}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lorg/apache/commons/logging/Log;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v6, p2}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lorg/apache/commons/logging/Log;)V

    throw p1

    .line 169
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->isStrict()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->isIgnoreMissingInstructionFile()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 177
    :cond_3
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->log:Lorg/apache/commons/logging/Log;

    const-string p3, "Unable to detect encryption information for object \'%s\' in bucket \'%s\'. Returning object without decryption."

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 180
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    .line 181
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v0, v2

    .line 177
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {p0, v4, p2, v1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->adjustToDesiredRange(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;[JLjava/util/Map;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->getS3Object()Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    return-object p1

    .line 170
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v4, p1}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lorg/apache/commons/logging/Log;)V

    .line 171
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Instruction file not found for S3 object with bucket name: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", key: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private decipherWithInstFileSuffix(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/model/S3Object;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 8

    .line 196
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getS3ObjectId()Lcom/amazonaws/services/s3/model/S3ObjectId;

    move-result-object v0

    .line 198
    invoke-virtual {p0, v0, p5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->fetchInstructionFile(Lcom/amazonaws/services/s3/model/S3ObjectId;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object v7

    if-nez v7, :cond_0

    .line 200
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Instruction file with suffix "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not found for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :cond_0
    :try_start_0
    invoke-virtual {v7}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->isInstructionFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    new-instance v5, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    invoke-direct {v5, p4, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;-><init>(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/S3ObjectId;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->decipherWithInstructionFile(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v7, p2}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lorg/apache/commons/logging/Log;)V

    return-object p1

    .line 208
    :cond_1
    :try_start_1
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid Instruction file with suffix "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " detected for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 213
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v7, p2}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lorg/apache/commons/logging/Log;)V

    throw p1
.end method

.method private decipherWithInstructionFile(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 9

    .line 220
    sget-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->NONE:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    .line 221
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->isStrict()Z

    move-result v1

    .line 222
    instance-of v2, p1, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;

    if-eqz v2, :cond_0

    .line 223
    check-cast p1, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;

    .line 224
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->getExtraMaterialDescription()Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    move-result-object v0

    if-nez v1, :cond_0

    .line 226
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->isKeyWrapExpected()Z

    move-result v1

    :cond_0
    move-object v6, v0

    move v7, v1

    .line 229
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->toJsonString()Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-static {p1}, Lcom/amazonaws/util/json/JsonUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 233
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object p5, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 237
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v4

    iget-object v8, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->kms:Lcom/amazonaws/services/kms/AWSKMSClient;

    move-object v2, p1

    move-object v5, p3

    .line 234
    invoke-static/range {v2 .. v8}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->fromInstructionFile(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p5

    .line 243
    invoke-virtual {p0, p5, p4}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->securityCheck(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)V

    .line 244
    invoke-direct {p0, p4, p5, p3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->decrypt(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;[J)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object p3

    .line 246
    invoke-virtual {p0, p3, p2, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->adjustToDesiredRange(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;[JLjava/util/Map;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object p1

    .line 248
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->getS3Object()Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    return-object p1
.end method

.method private decipherWithMetadata(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 9

    .line 254
    sget-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->NONE:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    .line 255
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->isStrict()Z

    move-result v1

    .line 256
    instance-of v2, p1, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;

    if-eqz v2, :cond_0

    .line 257
    check-cast p1, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;

    .line 258
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->getExtraMaterialDescription()Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    move-result-object v0

    if-nez v1, :cond_0

    .line 260
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->isKeyWrapExpected()Z

    move-result v1

    :cond_0
    move-object v6, v0

    move v7, v1

    .line 264
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 266
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v4

    iget-object v8, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->kms:Lcom/amazonaws/services/kms/AWSKMSClient;

    move-object v5, p3

    .line 264
    invoke-static/range {v2 .. v8}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->fromObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    .line 273
    invoke-virtual {p0, p1, p4}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->securityCheck(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)V

    .line 274
    invoke-direct {p0, p4, p1, p3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->decrypt(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;[J)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object p1

    const/4 p3, 0x0

    .line 276
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->adjustToDesiredRange(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;[JLjava/util/Map;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->getS3Object()Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    return-object p1
.end method

.method private decrypt(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;[J)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    .locals 3

    .line 416
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p3

    .line 417
    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    new-instance v1, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;

    .line 419
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getCipherLite()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p2

    const/16 v2, 0x800

    invoke-direct {v1, p3, p2, v2}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;I)V

    .line 421
    invoke-virtual {p3}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 417
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V

    return-object p1
.end method


# virtual methods
.method protected final adjustToDesiredRange(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;[JLjava/util/Map;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;",
            "[J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p1

    .line 306
    :cond_0
    invoke-virtual {p1, p3}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->encryptionSchemeOf(Ljava/util/Map;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object p3

    .line 308
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getInstanceLength()J

    move-result-wide v0

    .line 309
    invoke-virtual {p3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getTagLengthInBits()I

    move-result p3

    div-int/lit8 p3, p3, 0x8

    int-to-long v2, p3

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const/4 p3, 0x1

    .line 310
    aget-wide v2, p2, p3

    cmp-long v2, v2, v0

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 311
    aput-wide v0, p2, p3

    .line 312
    aget-wide v0, p2, v3

    aget-wide v4, p2, p3

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 316
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p2

    iget-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->log:Lorg/apache/commons/logging/Log;

    invoke-static {p2, p3}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lorg/apache/commons/logging/Log;)V

    .line 317
    new-instance p2, Ljava/io/ByteArrayInputStream;

    new-array p3, v3, [B

    invoke-direct {p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->setObjectContent(Ljava/io/InputStream;)V

    return-object p1

    .line 321
    :cond_1
    aget-wide v0, p2, v3

    aget-wide v4, p2, p3

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    return-object p1

    .line 326
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    .line 327
    new-instance v1, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;

    aget-wide v6, p2, v3

    aget-wide v8, p2, p3

    move-object v4, v1

    move-object v5, v0

    invoke-direct/range {v4 .. v9}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 328
    new-instance p2, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object p3

    invoke-direct {p2, v1, p3}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 331
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error adjusting output to desired byte range: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method final cipherLiteForNextPart(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 0

    .line 383
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->getCipherLite()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p1

    return-object p1
.end method

.method protected final ciphertextLength(J)J
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getTagLengthInBits()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method final computeLastPartSize(Lcom/amazonaws/services/s3/model/UploadPartRequest;)J
    .locals 4

    .line 392
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v0

    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 393
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getTagLengthInBits()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getObjectSecurely(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 4

    const-string v0, "The destination file parameter must be specified when downloading an object directly to a file"

    .line 338
    invoke-direct {p0, p2, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->getObjectSecurely(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 349
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p2, 0x2800

    .line 350
    :try_start_1
    new-array p2, p2, [B

    .line 352
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    const/4 v2, 0x0

    .line 353
    invoke-virtual {v1, p2, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 359
    :cond_1
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v1, p2}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lorg/apache/commons/logging/Log;)V

    .line 360
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p2

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->log:Lorg/apache/commons/logging/Log;

    invoke-static {p2, v0}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lorg/apache/commons/logging/Log;)V

    .line 369
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p2

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    .line 356
    :goto_1
    :try_start_2
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to store object contents to disk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 359
    :goto_2
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v0, v1}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lorg/apache/commons/logging/Log;)V

    .line 360
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p1

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->log:Lorg/apache/commons/logging/Log;

    invoke-static {p1, v0}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lorg/apache/commons/logging/Log;)V

    throw p2
.end method

.method public getObjectSecurely(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 7

    .line 109
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 112
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v3

    .line 113
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getPartNumber()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Range get and getting a part are not allowed in strict crypto mode"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_1
    invoke-static {v3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->getAdjustedCryptoRange([J)[J

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    .line 118
    aget-wide v0, v4, v0

    const/4 v2, 0x1

    aget-wide v5, v4, v2

    invoke-virtual {p1, v0, v1, v5, v6}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setRange(JJ)V

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    return-object v1

    .line 128
    :cond_3
    instance-of v2, p1, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;

    if-eqz v2, :cond_4

    .line 129
    move-object v1, p1

    check-cast v1, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;

    .line 130
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->getInstructionFileSuffix()Ljava/lang/String;

    move-result-object v1

    :cond_4
    move-object v6, v1

    if-eqz v6, :cond_6

    .line 133
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    move-object v1, p0

    move-object v2, p1

    move-object v5, v0

    .line 135
    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->decipherWithInstFileSuffix(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/model/S3Object;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    .line 134
    :cond_6
    :goto_0
    invoke-direct {p0, p1, v3, v4, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->decipher(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/model/S3Object;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p1

    .line 143
    :goto_2
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v0, v1}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lorg/apache/commons/logging/Log;)V

    .line 144
    throw p1

    .line 140
    :goto_3
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v0, v1}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lorg/apache/commons/logging/Log;)V

    .line 141
    throw p1
.end method

.method protected isStrict()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final newUploadContext(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;
    .locals 2

    .line 375
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;

    .line 376
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)V

    return-object v0
.end method

.method final updateUploadContext(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;Lcom/amazonaws/internal/SdkFilterInputStream;)V
    .locals 0

    return-void
.end method

.method final wrapForMultipart(Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;J)Lcom/amazonaws/internal/SdkFilterInputStream;
    .locals 0

    return-object p1
.end method
