.class public abstract Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;
.super Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;
.source "S3CryptoModuleBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;",
        ">",
        "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule<",
        "TT;>;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_BUFFER_SIZE:I = 0x800

.field private static final IS_MULTI_PART:Z = true

.field private static final MAX_RETRY_COUNT:I = 0x9


# instance fields
.field protected final contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

.field protected final cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

.field protected final cryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

.field protected final kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

.field protected final kms:Lcom/amazonaws/services/kms/AWSKMSClient;

.field protected final log:Lorg/apache/commons/logging/Log;

.field protected final multipartUploadContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final s3:Lcom/amazonaws/services/s3/internal/S3Direct;


# direct methods
.method protected constructor <init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;-><init>()V

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object p3

    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->log:Lorg/apache/commons/logging/Log;

    .line 108
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 109
    invoke-static {p3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->multipartUploadContexts:Ljava/util/Map;

    .line 120
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->isReadOnly()Z

    move-result p3

    if-nez p3, :cond_0

    .line 121
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The cryto configuration parameter is required to be read-only"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_0
    iput-object p4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    .line 124
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    .line 125
    iput-object p5, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 126
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoMode()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->from(Lcom/amazonaws/services/s3/model/CryptoMode;)Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    .line 127
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->getContentCryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 128
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->kms:Lcom/amazonaws/services/kms/AWSKMSClient;

    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;-><init>()V

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->log:Lorg/apache/commons/logging/Log;

    .line 108
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 109
    invoke-static {p2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->multipartUploadContexts:Ljava/util/Map;

    .line 138
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    .line 139
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    .line 140
    iput-object p4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 141
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoMode()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->from(Lcom/amazonaws/services/s3/model/CryptoMode;)Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    .line 142
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->getContentCryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    const/4 p1, 0x0

    .line 143
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->kms:Lcom/amazonaws/services/kms/AWSKMSClient;

    return-void
.end method

.method private buildContentCryptoMaterial(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 8

    .line 534
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getIVLengthInBytes()I

    move-result v0

    new-array v2, v0, [B

    .line 535
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 537
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->isKMSEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    invoke-static {p1, p3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->mergeMaterialDescriptions(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/AmazonWebServiceRequest;)Ljava/util/Map;

    move-result-object v0

    .line 540
    new-instance v1, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;-><init>()V

    .line 541
    invoke-virtual {v1, v0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->withEncryptionContext(Ljava/util/Map;)Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;

    move-result-object v1

    .line 542
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getCustomerMasterKeyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->withKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 543
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getKeySpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->withKeySpec(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;

    move-result-object p1

    .line 545
    invoke-virtual {p3}, Lcom/amazonaws/AmazonWebServiceRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->withGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    .line 546
    invoke-virtual {p3}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/amazonaws/AmazonWebServiceRequest;->withRequestMetricCollector(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 547
    iget-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->kms:Lcom/amazonaws/services/kms/AWSKMSClient;

    invoke-virtual {p3, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->generateDataKey(Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;)Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;

    move-result-object p1

    .line 548
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    .line 549
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getPlaintext()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/BinaryUtils;->copyAllBytesFrom(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 550
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getKeyGeneratorAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 551
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/util/BinaryUtils;->copyAllBytesFrom(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    .line 552
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    new-instance v3, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;

    invoke-direct {v3, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;-><init>([BLjava/util/Map;)V

    invoke-static {p3, v2, v1, p2, v3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->wrap(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1

    .line 558
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->generateCEK(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    move-result-object v1

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    iget-object v6, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->kms:Lcom/amazonaws/services/kms/AWSKMSClient;

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    .line 557
    invoke-static/range {v1 .. v7}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->create(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1
.end method

.method private ccmFromJson(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 4

    .line 893
    invoke-static {p1}, Lcom/amazonaws/util/json/JsonUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 892
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 894
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 897
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->kms:Lcom/amazonaws/services/kms/AWSKMSClient;

    const/4 v3, 0x0

    .line 894
    invoke-static {p1, v0, v1, v3, v2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->fromInstructionFile(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1
.end method

.method private contentCryptoMaterialOf(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 4

    .line 867
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->hasEncryptionInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 871
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->kms:Lcom/amazonaws/services/kms/AWSKMSClient;

    .line 869
    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->fromObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1

    .line 877
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->getS3ObjectId()Lcom/amazonaws/services/s3/model/S3ObjectId;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->fetchInstructionFile(Lcom/amazonaws/services/s3/model/S3ObjectId;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 879
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S3 object is not encrypted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 882
    :cond_1
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->isInstructionFile()Z

    move-result v1

    if-nez v1, :cond_2

    .line 883
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid instruction file for S3 object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 886
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->toJsonString()Ljava/lang/String;

    move-result-object p1

    .line 887
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->ccmFromJson(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1
.end method

.method static getAdjustedCryptoRange([J)[J
    .locals 6

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 933
    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    cmp-long v1, v1, v4

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 936
    new-array v1, v1, [J

    .line 937
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->getCipherBlockLowerBound(J)J

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 938
    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->getCipherBlockUpperBound(J)J

    move-result-wide v4

    aput-wide v4, v1, v3

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getCipherBlockLowerBound(J)J
    .locals 4

    const-wide/16 v0, 0x10

    .line 944
    rem-long v2, p0, v0

    sub-long/2addr p0, v2

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    move-wide p0, v0

    :cond_0
    return-wide p0
.end method

.method private static getCipherBlockUpperBound(J)J
    .locals 4

    const-wide/16 v0, 0x10

    .line 957
    rem-long v2, p0, v0

    sub-long v2, v0, v2

    add-long/2addr p0, v2

    add-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    :cond_0
    return-wide p0
.end method

.method private newContentCryptoMaterial(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 0

    .line 495
    invoke-interface {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->getEncryptionMaterials()Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object p1

    if-nez p1, :cond_0

    .line 497
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p2, "No material available from the encryption material provider"

    invoke-direct {p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 499
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->buildContentCryptoMaterial(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1
.end method

.method private newContentCryptoMaterial(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/util/Map;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/security/Provider;",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ")",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;"
        }
    .end annotation

    .line 478
    invoke-interface {p1, p2}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 482
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->buildContentCryptoMaterial(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1
.end method

.method private newS3CipherLiteInputStream(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;J)Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;
    .locals 5

    .line 652
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    .line 653
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_1

    .line 659
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/amazonaws/internal/ReleasableInputStream;->wrap(Ljava/io/InputStream;)Lcom/amazonaws/internal/ReleasableInputStream;

    move-result-object v3

    goto :goto_0

    .line 661
    :cond_1
    new-instance v3, Lcom/amazonaws/internal/ResettableInputStream;

    invoke-direct {v3, v0}, Lcom/amazonaws/internal/ResettableInputStream;-><init>(Ljava/io/File;)V

    :goto_0
    move-object v2, v3

    :goto_1
    const-wide/16 v3, -0x1

    cmp-long v3, p3, v3

    if-lez v3, :cond_2

    .line 670
    new-instance v3, Lcom/amazonaws/util/LengthCheckInputStream;

    const/4 v4, 0x0

    invoke-direct {v3, v2, p3, p4, v4}, Lcom/amazonaws/util/LengthCheckInputStream;-><init>(Ljava/io/InputStream;JZ)V

    move-object v2, v3

    .line 673
    :cond_2
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getCipherLite()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p2

    .line 675
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->markSupported()Z

    move-result p3

    const/16 p4, 0x800

    if-eqz p3, :cond_3

    .line 676
    new-instance p3, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;

    invoke-direct {p3, v2, p2, p4}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;I)V

    return-object p3

    .line 679
    :cond_3
    new-instance p3, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;

    invoke-direct {p3, v2, p2, p4}, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p2

    .line 683
    iget-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->log:Lorg/apache/commons/logging/Log;

    invoke-static {p1, v0, v1, v2, p3}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lorg/apache/commons/logging/Log;)V

    .line 684
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p3, "Unable to create cipher input stream"

    invoke-direct {p1, p3, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private putObjectUsingInstructionFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 7

    .line 196
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    .line 197
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 198
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->clone()Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v2

    const/4 v3, 0x0

    .line 199
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withFile(Ljava/io/File;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v2

    .line 200
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withInputStream(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v2

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "instruction"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setKey(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->createContentCryptoMaterial(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v3

    .line 207
    invoke-virtual {p0, p1, v3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->wrapWithCipher(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 211
    :try_start_0
    iget-object v5, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v5, v4}, Lcom/amazonaws/services/s3/internal/S3Direct;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iget-object v6, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->log:Lorg/apache/commons/logging/Log;

    .line 213
    invoke-static {p1, v0, v1, v4, v6}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lorg/apache/commons/logging/Log;)V

    .line 217
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->updateInstructionPutRequest(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/S3Direct;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    return-object v5

    :catchall_0
    move-exception v2

    .line 214
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->log:Lorg/apache/commons/logging/Log;

    .line 213
    invoke-static {p1, v0, v1, v3, v4}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lorg/apache/commons/logging/Log;)V

    throw v2
.end method

.method private putObjectUsingMetadata(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 6

    .line 168
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->createContentCryptoMaterial(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v0

    .line 170
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v1

    .line 171
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 172
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->wrapWithCipher(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 175
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v5

    .line 174
    invoke-virtual {p0, v4, v5, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->updateMetadataWithContentCryptoMaterial(Lcom/amazonaws/services/s3/model/ObjectMetadata;Ljava/io/File;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/S3Direct;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->log:Lorg/apache/commons/logging/Log;

    invoke-static {p1, v1, v2, v3, v4}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lorg/apache/commons/logging/Log;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->log:Lorg/apache/commons/logging/Log;

    invoke-static {p1, v1, v2, v3, v4}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lorg/apache/commons/logging/Log;)V

    throw v0
.end method


# virtual methods
.method public final abortMultipartUploadSecurely(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->abortMultipartUpload(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    .line 226
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->multipartUploadContexts:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(TX;",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    .line 758
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazonaws/RequestClientOptions;->appendUserAgent(Ljava/lang/String;)V

    return-object p1
.end method

.method abstract cipherLiteForNextPart(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/amazonaws/services/s3/internal/crypto/CipherLite;"
        }
    .end annotation
.end method

.method protected abstract ciphertextLength(J)J
.end method

.method public completeMultipartUploadSecurely(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .locals 5

    .line 385
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 386
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->multipartUploadContexts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;

    if-eqz v1, :cond_0

    .line 389
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->hasFinalPartBeenSeen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 390
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Unable to complete an encrypted multipart upload without being told which part was the last.  Without knowing which part was the last, the encrypted data in Amazon S3 is incomplete and corrupt."

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 394
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->completeMultipartUpload(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object p1

    if-eqz v1, :cond_1

    .line 398
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 399
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getStorageMode()Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->InstructionFile:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    if-ne v2, v3, :cond_1

    .line 401
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    .line 402
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 403
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->getContentCryptoMaterial()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v1

    .line 401
    invoke-virtual {p0, v3, v4, v1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->createInstructionPutRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/S3Direct;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->multipartUploadContexts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method abstract computeLastPartSize(Lcom/amazonaws/services/s3/model/UploadPartRequest;)J
.end method

.method public final copyPartSecurely(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;
    .locals 2

    .line 231
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->multipartUploadContexts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;

    .line 233
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->copyPart(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->hasFinalPartBeenSeen()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 236
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->setHasFinalPartBeenSeen(Z)V

    :cond_0
    return-object p1
.end method

.method protected final createContentCryptoMaterial(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 3

    .line 429
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/EncryptionMaterialsFactory;

    if-eqz v0, :cond_0

    .line 431
    move-object v0, p1

    check-cast v0, Lcom/amazonaws/services/s3/model/EncryptionMaterialsFactory;

    .line 432
    invoke-interface {v0}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsFactory;->getEncryptionMaterials()Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 435
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v1

    .line 434
    invoke-direct {p0, v0, v1, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->buildContentCryptoMaterial(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1

    .line 438
    :cond_0
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;

    if-eqz v0, :cond_2

    .line 440
    move-object v0, p1

    check-cast v0, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;

    .line 441
    invoke-interface {v0}, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 445
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v2

    .line 442
    invoke-direct {p0, v1, v0, v2, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->newContentCryptoMaterial(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/util/Map;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    .line 452
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    .line 453
    invoke-interface {v1}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->getEncryptionMaterials()Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v1

    .line 454
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->isKMSEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 455
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No material available from the encryption material provider for description "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 465
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v1

    .line 464
    invoke-direct {p0, v0, v1, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->newContentCryptoMaterial(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1
.end method

.method final createInstructionGetRequest(Lcom/amazonaws/services/s3/model/S3ObjectId;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 1

    const/4 v0, 0x0

    .line 913
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->createInstructionGetRequest(Lcom/amazonaws/services/s3/model/S3ObjectId;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method final createInstructionGetRequest(Lcom/amazonaws/services/s3/model/S3ObjectId;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 1

    .line 927
    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    .line 928
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3ObjectId;->instructionFileId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InstructionFileId;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Lcom/amazonaws/services/s3/model/S3ObjectId;)V

    return-object v0
.end method

.method protected final createInstructionPutRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 4

    .line 740
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoMode()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->toJsonString(Lcom/amazonaws/services/s3/model/CryptoMode;)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    .line 741
    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    .line 742
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 743
    new-instance v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 744
    array-length p3, p3

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    const-string p3, "x-amz-crypto-instr-file"

    const-string v2, ""

    .line 745
    invoke-virtual {v1, p3, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    new-instance p3, Lcom/amazonaws/services/s3/model/S3ObjectId;

    invoke-direct {p3, p1, p2}, Lcom/amazonaws/services/s3/model/S3ObjectId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-virtual {p3}, Lcom/amazonaws/services/s3/model/S3ObjectId;->instructionFileId()Lcom/amazonaws/services/s3/model/InstructionFileId;

    move-result-object p1

    .line 748
    new-instance p2, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InstructionFileId;->getBucket()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InstructionFileId;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1, v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-object p2
.end method

.method final fetchInstructionFile(Lcom/amazonaws/services/s3/model/S3ObjectId;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    .locals 3

    const/4 v0, 0x0

    .line 789
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    .line 790
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->createInstructionGetRequest(Lcom/amazonaws/services/s3/model/S3ObjectId;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;

    move-result-object p2

    .line 789
    invoke-virtual {v1, p2}, Lcom/amazonaws/services/s3/internal/S3Direct;->getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 791
    :cond_0
    new-instance v1, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    invoke-direct {v1, p2, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;-><init>(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/S3ObjectId;)V
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    .line 795
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 796
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to retrieve instruction file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 796
    invoke-interface {p2, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method protected final generateCEK(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;
    .locals 3

    .line 569
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getKeyGeneratorAlgorithm()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    .line 573
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_5

    .line 574
    :cond_0
    invoke-static {v0, p2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object p2

    .line 575
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getKeyLengthInBits()I

    move-result v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    .line 576
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    .line 575
    invoke-virtual {p2, v0, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 579
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 581
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->getKeyWrapScheme()Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;->getKeyWrapAlgorithm(Ljava/security/Key;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 583
    invoke-virtual {p2}, Ljavax/crypto/KeyGenerator;->getProvider()Ljava/security/Provider;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 584
    :cond_1
    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v1, "BC"

    .line 585
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_2

    :cond_2
    move p1, v0

    .line 588
    :goto_2
    invoke-virtual {p2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    if-eqz p1, :cond_6

    .line 589
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    aget-byte p1, p1, v0

    if-eqz p1, :cond_3

    goto :goto_4

    :cond_3
    move p1, v0

    :goto_3
    const/16 v1, 0x9

    if-ge p1, v1, :cond_5

    .line 595
    invoke-virtual {p2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 596
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    aget-byte v2, v2, v0

    if-eqz v2, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 601
    :cond_5
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p2, "Failed to generate secret key"

    invoke-direct {p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_4
    return-object v1

    .line 603
    :goto_5
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to generate envelope symmetric key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final getS3CryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    return-object v0
.end method

.method public initiateMultipartUploadSecurely(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .locals 3

    .line 247
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 250
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->createContentCryptoMaterial(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getStorageMode()Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->ObjectMetadata:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    if-ne v1, v2, :cond_1

    .line 252
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    .line 254
    new-instance v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    :cond_0
    const/4 v2, 0x0

    .line 257
    invoke-virtual {p0, v1, v2, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->updateMetadataWithContentCryptoMaterial(Lcom/amazonaws/services/s3/model/ObjectMetadata;Ljava/io/File;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->initiateMultipartUpload(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object v1

    .line 261
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->newUploadContext(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;

    move-result-object v0

    .line 262
    instance-of v2, p1, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;

    if-eqz v2, :cond_2

    .line 263
    check-cast p1, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;

    .line 264
    invoke-interface {p1}, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;->getMaterialsDescription()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->setMaterialsDescription(Ljava/util/Map;)V

    .line 266
    :cond_2
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->multipartUploadContexts:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method protected final newMultipartS3CipherInputStream(Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;
    .locals 11

    .line 352
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v0

    .line 353
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    .line 358
    :try_start_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v3, "A File or InputStream must be specified when uploading part"

    invoke-direct {p2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    move-object v3, v1

    goto :goto_0

    .line 363
    :cond_1
    new-instance v3, Lcom/amazonaws/internal/ResettableInputStream;

    invoke-direct {v3, v0}, Lcom/amazonaws/internal/ResettableInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 365
    :goto_0
    :try_start_1
    new-instance v2, Lcom/amazonaws/services/s3/internal/InputSubstream;

    .line 366
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFileOffset()J

    move-result-wide v6

    .line 367
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v8

    .line 368
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v10

    move-object v4, v2

    move-object v5, v3

    invoke-direct/range {v4 .. v10}, Lcom/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 369
    :try_start_2
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;

    const/16 v7, 0x800

    const/4 v8, 0x1

    .line 372
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v9

    move-object v4, v3

    move-object v5, v2

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;

    const/16 v7, 0x800

    const/4 v8, 0x1

    .line 375
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v9

    move-object v4, v3

    move-object v5, v2

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-object v3

    :catch_0
    move-exception p2

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception p2

    .line 377
    :goto_2
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->log:Lorg/apache/commons/logging/Log;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lorg/apache/commons/logging/Log;)V

    .line 378
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Unable to create cipher input stream"

    invoke-direct {p1, v0, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method abstract newUploadContext(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;",
            ")TT;"
        }
    .end annotation
.end method

.method protected final plaintextLength(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J
    .locals 1

    .line 694
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    return-wide p1

    .line 696
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "Content-Length"

    .line 697
    invoke-virtual {p2, p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getRawMetadataValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 698
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide p1

    return-wide p1

    :cond_1
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public final putInstructionFileSecurely(Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 10

    .line 806
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->getS3ObjectId()Lcom/amazonaws/services/s3/model/S3ObjectId;

    move-result-object v0

    .line 807
    new-instance v1, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-direct {v1, v0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Lcom/amazonaws/services/s3/model/S3ObjectId;)V

    .line 808
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 810
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/S3Direct;->getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v1

    .line 813
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v1, v2}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lorg/apache/commons/logging/Log;)V

    if-nez v1, :cond_0

    .line 815
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The specified S3 object ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") doesn\'t exist."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 818
    :cond_0
    new-instance v2, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    invoke-direct {v2, v1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;-><init>(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/S3ObjectId;)V

    .line 820
    :try_start_0
    invoke-direct {p0, v2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->contentCryptoMaterialOf(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v3

    .line 821
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_GCM:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getContentCryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 822
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoMode()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object v0

    sget-object v4, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne v0, v4, :cond_1

    .line 823
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Lowering the protection of encryption material is not allowed"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 826
    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->securityCheck(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)V

    .line 828
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->getEncryptionMaterials()Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v4

    if-nez v4, :cond_2

    .line 831
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v6, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 834
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v7

    iget-object v8, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->kms:Lcom/amazonaws/services/kms/AWSKMSClient;

    move-object v9, p1

    .line 831
    invoke-virtual/range {v3 .. v9}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->recreate(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v0

    goto :goto_0

    .line 836
    :cond_2
    iget-object v5, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v6, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 839
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v7

    iget-object v8, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->kms:Lcom/amazonaws/services/kms/AWSKMSClient;

    move-object v9, p1

    .line 836
    invoke-virtual/range {v3 .. v9}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->recreate(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v0

    .line 841
    :goto_0
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->createPutObjectRequest(Lcom/amazonaws/services/s3/model/S3Object;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    .line 843
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->updateInstructionPutRequest(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 850
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v1, v0}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lorg/apache/commons/logging/Log;)V

    .line 851
    throw p1

    :catch_1
    move-exception p1

    .line 847
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v1, v0}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lorg/apache/commons/logging/Log;)V

    .line 848
    throw p1
.end method

.method public final putLocalObjectSecurely(Lcom/amazonaws/services/s3/model/UploadObjectRequest;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->clone()Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    move-result-object p1

    .line 507
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    .line 508
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 510
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->multipartUploadContexts:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;

    .line 511
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->getContentCryptoMaterial()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v2

    .line 512
    invoke-virtual {p0, p1, v2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->wrapWithCipher(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    .line 515
    :try_start_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/amazonaws/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    const/4 v2, 0x1

    .line 518
    invoke-virtual {p2, v2}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->setHasFinalPartBeenSeen(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->log:Lorg/apache/commons/logging/Log;

    .line 520
    invoke-static {p1, v0, v1, p2, v2}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lorg/apache/commons/logging/Log;)V

    .line 522
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->log:Lorg/apache/commons/logging/Log;

    invoke-static {p3, p1}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lorg/apache/commons/logging/Log;)V

    return-void

    :catchall_0
    move-exception p2

    .line 521
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->log:Lorg/apache/commons/logging/Log;

    .line 520
    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lorg/apache/commons/logging/Log;)V

    .line 522
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->log:Lorg/apache/commons/logging/Log;

    invoke-static {p3, p1}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lorg/apache/commons/logging/Log;)V

    throw p2
.end method

.method public putObjectSecurely(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 2

    .line 161
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 162
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getStorageMode()Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->InstructionFile:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    if-ne v0, v1, :cond_0

    .line 163
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->putObjectUsingInstructionFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    goto :goto_0

    .line 164
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->putObjectUsingMetadata(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected securityCheck(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)V
    .locals 0

    return-void
.end method

.method protected final updateInstructionPutRequest(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 3

    .line 719
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoMode()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->toJsonString(Lcom/amazonaws/services/s3/model/CryptoMode;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    .line 720
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 721
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    .line 723
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 724
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 727
    :cond_0
    array-length v1, p2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    const-string v1, "x-amz-crypto-instr-file"

    const-string v2, ""

    .line 729
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 732
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setInputStream(Ljava/io/InputStream;)V

    return-object p1
.end method

.method protected final updateMetadataWithContentCryptoMaterial(Lcom/amazonaws/services/s3/model/ObjectMetadata;Ljava/io/File;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    if-nez p1, :cond_0

    .line 412
    new-instance p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    :cond_0
    if-eqz p2, :cond_1

    .line 415
    invoke-static {}, Lcom/amazonaws/services/s3/util/Mimetypes;->getInstance()Lcom/amazonaws/services/s3/util/Mimetypes;

    move-result-object v0

    .line 416
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/util/Mimetypes;->getMimetype(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 418
    :cond_1
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoMode()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->toObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CryptoMode;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    return-object p1
.end method

.method abstract updateUploadContext(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;Lcom/amazonaws/internal/SdkFilterInputStream;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazonaws/internal/SdkFilterInputStream;",
            ")V"
        }
    .end annotation
.end method

.method public uploadPartSecurely(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .locals 12

    .line 288
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 289
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getBlockSizeInBytes()I

    move-result v0

    .line 290
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v1

    .line 291
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v2

    .line 292
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v3

    int-to-long v5, v0

    .line 293
    rem-long v5, v3, v5

    const-wide/16 v7, 0x0

    cmp-long v5, v7, v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v1, :cond_1

    if-nez v5, :cond_1

    .line 295
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid part size: part sizes for encrypted multipart uploads must be multiples of the cipher block size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with the exception of the last part."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->multipartUploadContexts:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;

    if-nez v0, :cond_2

    .line 303
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No client-side information available on upload ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 308
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->beginPartUpload(I)V

    .line 309
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cipherLiteForNextPart(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v2

    .line 310
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v5

    .line 311
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const/4 v10, 0x0

    .line 314
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->newMultipartS3CipherInputStream(Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 317
    :try_start_1
    invoke-virtual {p0, v2, v3, v4}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->wrapForMultipart(Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;J)Lcom/amazonaws/internal/SdkFilterInputStream;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 318
    :try_start_2
    invoke-virtual {p1, v3}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setInputStream(Ljava/io/InputStream;)V

    .line 321
    invoke-virtual {p1, v10}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setFile(Ljava/io/File;)V

    .line 322
    invoke-virtual {p1, v7, v8}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setFileOffset(J)V

    if-eqz v1, :cond_4

    .line 327
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->computeLastPartSize(Lcom/amazonaws/services/s3/model/UploadPartRequest;)J

    move-result-wide v7

    const-wide/16 v10, -0x1

    cmp-long v2, v7, v10

    if-lez v2, :cond_3

    .line 329
    invoke-virtual {p1, v7, v8}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setPartSize(J)V

    .line 331
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->hasFinalPartBeenSeen()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 332
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "This part was specified as the last part in a multipart upload, but a previous part was already marked as the last part.  Only the last part of the upload should be marked as the last part."

    invoke-direct {v1, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    :cond_4
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->uploadPart(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->log:Lorg/apache/commons/logging/Log;

    invoke-static {p1, v5, v9, v3, v4}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lorg/apache/commons/logging/Log;)V

    .line 341
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->endPartUpload()V

    if-eqz v1, :cond_5

    .line 344
    invoke-virtual {v0, v6}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->setHasFinalPartBeenSeen(Z)V

    .line 346
    :cond_5
    invoke-virtual {p0, v0, v3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->updateUploadContext(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;Lcom/amazonaws/internal/SdkFilterInputStream;)V

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v3, v2

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v3, v10

    .line 340
    :goto_1
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->log:Lorg/apache/commons/logging/Log;

    invoke-static {p1, v5, v9, v3, v2}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lorg/apache/commons/logging/Log;)V

    .line 341
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->endPartUpload()V

    throw v1
.end method

.method abstract wrapForMultipart(Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;J)Lcom/amazonaws/internal/SdkFilterInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;",
            ">(TI;J)",
            "Lcom/amazonaws/internal/SdkFilterInputStream;"
        }
    .end annotation
.end method

.method protected final wrapWithCipher(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(TR;",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;",
            ")TR;"
        }
    .end annotation

    .line 617
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    .line 619
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 623
    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "x-amz-unencrypted-content-md5"

    .line 625
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v2

    .line 624
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    .line 629
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentMD5(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->plaintextLength(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    const-string v4, "x-amz-unencrypted-content-length"

    .line 636
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 635
    invoke-virtual {v0, v4, v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->ciphertextLength(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 640
    :cond_2
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 641
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->newS3CipherLiteInputStream(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;J)Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setInputStream(Ljava/io/InputStream;)V

    .line 645
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setFile(Ljava/io/File;)V

    return-object p1
.end method
