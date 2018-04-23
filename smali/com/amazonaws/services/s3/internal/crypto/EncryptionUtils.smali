.class public Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;
.super Ljava/lang/Object;
.source "EncryptionUtils.java"


# static fields
.field static final INSTRUCTION_SUFFIX:Ljava/lang/String; = ".instruction"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustOutputToDesiredRange(Lcom/amazonaws/services/s3/model/S3Object;[J)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 10

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 575
    aget-wide v1, p1, v0

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    cmp-long v1, v1, v4

    if-lez v1, :cond_0

    goto :goto_0

    .line 580
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v1

    .line 581
    new-instance v2, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;

    aget-wide v6, p1, v0

    aget-wide v8, p1, v3

    move-object v4, v2

    move-object v5, v1

    invoke-direct/range {v4 .. v9}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 583
    new-instance p1, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    .line 584
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 583
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/S3Object;->setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 587
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error adjusting output to desired byte range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static buildInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .locals 4

    .line 178
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->generateOneTimeUseSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 179
    new-instance v1, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;-><init>(Ljavax/crypto/SecretKey;I[BLjava/security/Provider;)V

    .line 183
    invoke-static {v0, p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getEncryptedSymmetricKey(Ljavax/crypto/SecretKey;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)[B

    move-result-object p1

    .line 187
    new-instance v2, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;-><init>(Ljava/util/Map;[BLjavax/crypto/SecretKey;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V

    return-object v2
.end method

.method public static buildInstructionFromInstructionFile(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-static {p0, v0, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->buildInstructionFromInstructionFile(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object p0

    return-object p0
.end method

.method public static buildInstructionFromInstructionFile(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .locals 6

    .line 226
    invoke-static {p0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->parseJSONInstruction(Lcom/amazonaws/services/s3/model/S3Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "x-amz-key"

    .line 228
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "x-amz-iv"

    .line 229
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "x-amz-matdesc"

    .line 230
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->convertJSONToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 234
    invoke-static {v1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 235
    invoke-static {v2}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->retrieveOriginalMaterials(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object p1

    if-nez p1, :cond_1

    .line 252
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p2, "Unable to retrieve the encryption materials that originally encrypted object corresponding to instruction file \'%s\' in bucket \'%s\'."

    new-array v0, v5, [Ljava/lang/Object;

    .line 257
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    .line 253
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 261
    :cond_1
    invoke-static {v1, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getDecryptedSymmetricKey([BLcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 263
    new-instance p1, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    invoke-direct {p1, p0, v5, v2, p2}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;-><init>(Ljavax/crypto/SecretKey;I[BLjava/security/Provider;)V

    .line 266
    new-instance p2, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    invoke-direct {p2, v0, v1, p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;-><init>(Ljava/util/Map;[BLjavax/crypto/SecretKey;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V

    return-object p2

    .line 240
    :cond_2
    :goto_0
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p2, "Necessary encryption info not found in the instruction file \'%s\' in bucket \'%s\'"

    new-array v0, v5, [Ljava/lang/Object;

    .line 243
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    .line 241
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static buildInstructionFromObjectMetadata(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 288
    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-static {p0, v0, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->buildInstructionFromObjectMetadata(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object p0

    return-object p0
.end method

.method public static buildInstructionFromObjectMetadata(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .locals 6

    .line 309
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    const-string v1, "x-amz-key"

    .line 312
    invoke-static {v1, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getCryptoBytesFromMetadata(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)[B

    move-result-object v1

    const-string v2, "x-amz-iv"

    .line 313
    invoke-static {v2, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getCryptoBytesFromMetadata(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)[B

    move-result-object v2

    const-string v3, "x-amz-matdesc"

    .line 314
    invoke-static {v3, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getStringFromMetadata(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->convertJSONToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->retrieveOriginalMaterials(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object p1

    if-nez p1, :cond_1

    .line 333
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p2, "Unable to retrieve the encryption materials that originally encrypted file \'%s\' in bucket \'%s\'."

    new-array v0, v5, [Ljava/lang/Object;

    .line 336
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    .line 334
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 340
    :cond_1
    invoke-static {v1, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getDecryptedSymmetricKey([BLcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 342
    new-instance p1, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    invoke-direct {p1, p0, v5, v2, p2}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;-><init>(Ljavax/crypto/SecretKey;I[BLjava/security/Provider;)V

    .line 345
    new-instance p2, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    invoke-direct {p2, v0, v1, p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;-><init>(Ljava/util/Map;[BLjavax/crypto/SecretKey;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V

    return-object p2

    .line 321
    :cond_2
    :goto_0
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p2, "Necessary encryption info not found in the headers of file \'%s\' in bucket \'%s\'"

    new-array v0, v5, [Ljava/lang/Object;

    .line 324
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    .line 322
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static calculateCryptoContentLength(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J
    .locals 4

    .line 904
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getUnencryptedContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 910
    :cond_0
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p0

    int-to-long v0, p0

    .line 911
    rem-long v2, p1, v0

    sub-long/2addr v0, v2

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public static calculateCryptoContentLength(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/model/UploadPartRequest;)J
    .locals 4

    .line 924
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 925
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 926
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v0

    goto :goto_0

    .line 928
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0

    .line 929
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 930
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v0

    .line 934
    :goto_0
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p0

    int-to-long p0, p0

    .line 935
    rem-long v2, v0, p0

    sub-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0

    :cond_2
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private static convertInstructionToJSONObject(Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 965
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 966
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/json/JsonUtils;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-amz-matdesc"

    .line 967
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-amz-key"

    .line 969
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getEncryptedSymmetricKey()[B

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v2

    .line 968
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getSymmetricCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p0

    const-string v1, "x-amz-iv"

    .line 971
    invoke-static {p0}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static convertJSONToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 811
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/amazonaws/util/json/JsonUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 813
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse encryption materials description from metadata :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {p0}, Lcom/amazonaws/AmazonClientException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 996
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 999
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1001
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1002
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1005
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 1007
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    .line 1005
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static createInstructionDeleteObjectRequest(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)Lcom/amazonaws/services/s3/model/DeleteObjectRequest;
    .locals 3

    .line 496
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".instruction"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createInstructionGetRequest(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 4

    .line 483
    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".instruction"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createInstructionPutRequest(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 4

    .line 434
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->convertInstructionToJSONObject(Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Ljava/util/Map;

    move-result-object p1

    .line 435
    invoke-static {p1}, Lcom/amazonaws/util/json/JsonUtils;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 436
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 438
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    .line 441
    array-length p1, p1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    const-string p1, "x-amz-crypto-instr-file"

    const-string v2, ""

    .line 444
    invoke-virtual {v1, p1, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".instruction"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setKey(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 449
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setInputStream(Ljava/io/InputStream;)V

    return-object p0
.end method

.method public static createInstructionPutRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 4

    .line 463
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->convertInstructionToJSONObject(Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Ljava/util/Map;

    move-result-object p2

    .line 464
    invoke-static {p2}, Lcom/amazonaws/util/json/JsonUtils;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 465
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 467
    new-instance v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 468
    array-length p2, p2

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    const-string p2, "x-amz-crypto-instr-file"

    const-string v2, ""

    .line 469
    invoke-virtual {v1, p2, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    new-instance p2, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".instruction"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-object p2
.end method

.method public static createSymmetricCipher(Ljavax/crypto/SecretKey;ILjava/security/Provider;[B)Ljavax/crypto/Cipher;
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 626
    invoke-static {v0, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    const-string p2, "AES/CBC/PKCS5Padding"

    .line 629
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    :goto_0
    if-eqz p3, :cond_1

    .line 632
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p2, p1, p0, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_1

    .line 634
    :cond_1
    invoke-virtual {p2, p1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p2

    .line 638
    :goto_2
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to build cipher: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\nMake sure you have the JCE unlimited strength policy files installed and configured for your JVM: http://www.ngs.ac.uk/tools/jcepolicyfiles"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static decryptObjectUsingInstruction(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 2

    .line 415
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    .line 417
    new-instance v1, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;

    .line 418
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getCipherFactory()Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V

    .line 419
    new-instance p1, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    .line 420
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 419
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/S3Object;->setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V

    return-object p0
.end method

.method public static decryptObjectUsingMetadata(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    invoke-static {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->buildInstructionFromObjectMetadata(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object p1

    .line 126
    invoke-static {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->decryptObjectUsingInstruction(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p0

    return-object p0
.end method

.method public static encryptRequestUsingInstruction(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 8

    .line 362
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 368
    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "x-amz-unencrypted-content-md5"

    .line 369
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    .line 373
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentMD5(Ljava/lang/String;)V

    .line 377
    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getUnencryptedContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    const-string v6, "x-amz-unencrypted-content-length"

    .line 380
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 379
    invoke-virtual {v0, v6, v7}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getSymmetricCipher()Ljavax/crypto/Cipher;

    move-result-object v6

    invoke-static {v6, p0, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->calculateCryptoContentLength(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-ltz v4, :cond_3

    .line 387
    invoke-virtual {v0, v6, v7}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 390
    :cond_3
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 393
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getCipherFactory()Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    move-result-object p1

    invoke-static {p0, p1, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getEncryptedInputStream(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;J)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setInputStream(Ljava/io/InputStream;)V

    .line 398
    invoke-virtual {p0, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setFile(Ljava/io/File;)V

    return-object p0
.end method

.method public static encryptRequestUsingMetadata(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->generateInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object p1

    .line 95
    invoke-static {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->encryptRequestUsingInstruction(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p2

    .line 99
    invoke-static {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->updateMetadataWithEncryptionInstruction(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)V

    return-object p2
.end method

.method public static generateInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->generateInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object p0

    return-object p0
.end method

.method public static generateInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .locals 0

    .line 155
    invoke-interface {p0}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->getEncryptionMaterials()Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->buildInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object p0

    return-object p0
.end method

.method public static generateInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/util/Map;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
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
            ")",
            "Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;"
        }
    .end annotation

    .line 170
    invoke-interface {p0, p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->buildInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object p0

    return-object p0
.end method

.method public static generateOneTimeUseSymmetricKey()Ljavax/crypto/SecretKey;
    .locals 4

    :try_start_0
    const-string v0, "AES"

    .line 601
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x100

    .line 602
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 603
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 605
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to generate envelope symmetric key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getAdjustedCryptoRange([J)[J
    .locals 6

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 550
    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    cmp-long v1, v1, v4

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 553
    new-array v1, v1, [J

    .line 554
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getCipherBlockLowerBound(J)J

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 555
    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getCipherBlockUpperBound(J)J

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

    .line 1018
    rem-long v2, p0, v0

    sub-long/2addr p0, v2

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    return-wide p0
.end method

.method private static getCipherBlockUpperBound(J)J
    .locals 4

    const-wide/16 v0, 0x10

    .line 1033
    rem-long v2, p0, v0

    sub-long v2, v0, v2

    add-long/2addr p0, v2

    add-long/2addr p0, v0

    return-wide p0
.end method

.method private static getCryptoBytesFromMetadata(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)[B
    .locals 1

    .line 781
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 782
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 786
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getDecryptedSymmetricKey([BLcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;
    .locals 1

    .line 687
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    goto :goto_0

    .line 692
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_1

    .line 697
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p2

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    .line 699
    :cond_1
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    :goto_1
    const/4 v0, 0x2

    .line 701
    invoke-virtual {p2, v0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 702
    invoke-virtual {p2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 703
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string p2, "AES"

    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 706
    :goto_2
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to decrypt symmetric key from object metadata : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getEncryptedInputStream(Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;
    .locals 9

    .line 747
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 748
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 749
    new-instance v0, Lcom/amazonaws/services/s3/internal/InputSubstream;

    new-instance v3, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    .line 750
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V

    .line 751
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFileOffset()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V

    .line 754
    :cond_0
    new-instance v2, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;

    invoke-direct {v2, v0, p1}, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V

    .line 757
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v0

    if-nez v0, :cond_1

    .line 760
    new-instance v0, Lcom/amazonaws/services/s3/internal/InputSubstream;

    const-wide/16 v3, 0x0

    .line 761
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 764
    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v4

    .line 765
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->createCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p0

    .line 766
    new-instance p1, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;

    int-to-long v2, p0

    sub-long v2, v4, v2

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;-><init>(Ljava/io/InputStream;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 769
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create cipher input stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getEncryptedInputStream(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;J)Ljava/io/InputStream;
    .locals 3

    .line 719
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 720
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 723
    new-instance v0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V

    :cond_0
    const-wide/16 v1, -0x1

    cmp-long p0, p2, v1

    if-lez p0, :cond_1

    .line 728
    new-instance p0, Lcom/amazonaws/util/LengthCheckInputStream;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/amazonaws/util/LengthCheckInputStream;-><init>(Ljava/io/InputStream;JZ)V

    goto :goto_0

    :cond_1
    move-object p0, v0

    .line 731
    :goto_0
    new-instance p2, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;

    invoke-direct {p2, p0, p1}, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 733
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to create cipher input stream: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getEncryptedSymmetricKey(Ljavax/crypto/SecretKey;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)[B
    .locals 1

    .line 655
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    goto :goto_0

    .line 660
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 664
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    if-eqz p2, :cond_1

    .line 666
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p2

    goto :goto_1

    .line 668
    :cond_1
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    :goto_1
    const/4 v0, 0x1

    .line 673
    invoke-virtual {p2, v0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 674
    invoke-virtual {p2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 676
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to encrypt symmetric key: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getStringFromMetadata(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Ljava/lang/String;
    .locals 1

    .line 795
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 796
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 799
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getUnencryptedContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J
    .locals 1

    .line 950
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 951
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    return-wide p0

    .line 952
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p0, "Content-Length"

    .line 953
    invoke-virtual {p1, p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getRawMetadataValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 954
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide p0

    return-wide p0

    :cond_1
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static isEncryptionInfoInInstructionFile(Lcom/amazonaws/services/s3/model/S3Object;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const-string v0, "x-amz-crypto-instr-file"

    .line 532
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isEncryptionInfoInMetadata(Lcom/amazonaws/services/s3/model/S3Object;)Z
    .locals 1

    .line 509
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "x-amz-iv"

    .line 511
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "x-amz-key"

    .line 512
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static parseJSONInstruction(Lcom/amazonaws/services/s3/model/S3Object;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/S3Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 981
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 982
    invoke-static {p0}, Lcom/amazonaws/util/json/JsonUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 984
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing JSON instruction file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static retrieveOriginalMaterials(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;",
            ")",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterials;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 892
    :cond_0
    invoke-interface {p1, p0}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;->getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object p0

    return-object p0
.end method

.method private static updateMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;[BLjavax/crypto/Cipher;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/ObjectMetadata;",
            "[B",
            "Ljavax/crypto/Cipher;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "x-amz-key"

    .line 852
    invoke-static {p1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p1

    .line 851
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "x-amz-iv"

    .line 857
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p2

    .line 856
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    invoke-static {p3}, Lcom/amazonaws/util/json/JsonUtils;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "x-amz-matdesc"

    .line 861
    invoke-virtual {p0, p2, p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updateMetadataWithEncryptionInfo(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;[BLjavax/crypto/Cipher;Ljava/util/Map;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;",
            "[B",
            "Ljavax/crypto/Cipher;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/ObjectMetadata;"
        }
    .end annotation

    .line 875
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p0

    if-nez p0, :cond_0

    .line 877
    new-instance p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 879
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->updateMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;[BLjavax/crypto/Cipher;Ljava/util/Map;)V

    return-object p0
.end method

.method public static updateMetadataWithEncryptionInstruction(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)V
    .locals 5

    .line 829
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getEncryptedSymmetricKey()[B

    move-result-object v0

    .line 830
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getSymmetricCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    .line 831
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getMaterialsDescription()Ljava/util/Map;

    move-result-object p1

    .line 833
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    if-nez v2, :cond_0

    .line 835
    new-instance v2, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 837
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 838
    invoke-static {}, Lcom/amazonaws/services/s3/util/Mimetypes;->getInstance()Lcom/amazonaws/services/s3/util/Mimetypes;

    move-result-object v3

    .line 839
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/util/Mimetypes;->getMimetype(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 842
    :cond_1
    invoke-static {v2, v0, v1, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->updateMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;[BLjavax/crypto/Cipher;Ljava/util/Map;)V

    .line 843
    invoke-virtual {p0, v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-void
.end method
