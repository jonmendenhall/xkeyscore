.class final Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
.super Ljava/lang/Object;
.source "ContentCryptoMaterial.java"


# instance fields
.field private final cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

.field private final encryptedCEK:[B

.field private final kekMaterialsDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keyWrappingAlgorithm:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;[BLjava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/internal/crypto/CipherLite;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p4, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 79
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->keyWrappingAlgorithm:Ljava/lang/String;

    .line 80
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->encryptedCEK:[B

    .line 81
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->kekMaterialsDescription:Ljava/util/Map;

    return-void
.end method

.method private static cek([BLjava/lang/String;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/kms/AWSKMSClient;)Ljavax/crypto/SecretKey;
    .locals 1

    .line 264
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;->isKMSKeyWrapped(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-static {p0, p1, p2, p4, p5}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->cekByKMS([BLjava/lang/String;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/kms/AWSKMSClient;)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0

    .line 268
    :cond_0
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 270
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object p2

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p2

    if-nez p2, :cond_2

    .line 272
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    const-string p1, "Key encrypting key not available"

    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 276
    :cond_1
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object p2

    if-nez p2, :cond_2

    .line 278
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    const-string p1, "Key encrypting key not available"

    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz p1, :cond_4

    if-nez p3, :cond_3

    .line 286
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_3
    invoke-static {p1, p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p3

    :goto_0
    const/4 p4, 0x4

    .line 288
    invoke-virtual {p3, p4, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 p2, 0x3

    .line 289
    invoke-virtual {p3, p0, p1, p2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljavax/crypto/SecretKey;

    return-object p0

    :cond_4
    if-eqz p3, :cond_5

    .line 295
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p1

    goto :goto_1

    .line 298
    :cond_5
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    :goto_1
    const/4 p3, 0x2

    .line 300
    invoke-virtual {p1, p3, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 301
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 302
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string p2, "AES"

    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 305
    :goto_2
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p2, "Unable to decrypt symmetric key from object metadata"

    invoke-direct {p1, p2, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static cekByKMS([BLjava/lang/String;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/kms/AWSKMSClient;)Ljavax/crypto/SecretKey;
    .locals 0

    .line 318
    new-instance p1, Lcom/amazonaws/services/kms/model/DecryptRequest;

    invoke-direct {p1}, Lcom/amazonaws/services/kms/model/DecryptRequest;-><init>()V

    .line 319
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/kms/model/DecryptRequest;->withEncryptionContext(Ljava/util/Map;)Lcom/amazonaws/services/kms/model/DecryptRequest;

    move-result-object p1

    .line 320
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/amazonaws/services/kms/model/DecryptRequest;->withCiphertextBlob(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/DecryptRequest;

    move-result-object p0

    .line 321
    invoke-virtual {p4, p0}, Lcom/amazonaws/services/kms/AWSKMSClient;->decrypt(Lcom/amazonaws/services/kms/model/DecryptRequest;)Lcom/amazonaws/services/kms/model/DecryptResult;

    move-result-object p0

    .line 322
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DecryptResult;->getPlaintext()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/util/BinaryUtils;->copyAllBytesFrom(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    .line 323
    invoke-virtual {p3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getKeyGeneratorAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p1
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

    .line 579
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 585
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 586
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 589
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 591
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    .line 589
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method static create(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 0

    .line 754
    invoke-static/range {p0 .. p7}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->doCreate(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method static create(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 8

    .line 780
    invoke-virtual {p3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->getContentCryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->doCreate(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method private static doCreate(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 7

    .line 821
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->getKeyWrapScheme()Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    move-result-object v2

    .line 822
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 820
    invoke-static/range {v0 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->secureCEK(Ljavax/crypto/SecretKey;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;Ljava/security/SecureRandom;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;

    move-result-object p2

    .line 824
    invoke-static {p0, p1, p3, p5, p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->wrap(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method static fromInstructionFile(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;",
            "Ljava/security/Provider;",
            "Z",
            "Lcom/amazonaws/services/kms/AWSKMSClient;",
            ")",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;"
        }
    .end annotation

    .line 453
    sget-object v4, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->NONE:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->fromInstructionFile0(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method static fromInstructionFile(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;",
            "Ljava/security/Provider;",
            "[J",
            "Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;",
            "Z",
            "Lcom/amazonaws/services/kms/AWSKMSClient;",
            ")",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;"
        }
    .end annotation

    .line 472
    invoke-static/range {p0 .. p6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->fromInstructionFile0(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method private static fromInstructionFile0(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;",
            "Ljava/security/Provider;",
            "[J",
            "Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;",
            "Z",
            "Lcom/amazonaws/services/kms/AWSKMSClient;",
            ")",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;"
        }
    .end annotation

    const-string v0, "x-amz-key-v2"

    .line 488
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "x-amz-key"

    .line 490
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 492
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    const-string p1, "Content encrypting key not found."

    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 496
    :cond_0
    invoke-static {v0}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "x-amz-iv"

    .line 497
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v0, :cond_b

    if-nez v1, :cond_1

    goto/16 :goto_6

    :cond_1
    const-string v2, "x-amz-wrap-alg"

    .line 503
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 504
    invoke-static {v7}, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;->isKMSKeyWrapped(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "x-amz-matdesc"

    .line 506
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 507
    invoke-static {v3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->matdescFromJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz p4, :cond_3

    if-eqz v2, :cond_2

    goto :goto_0

    .line 509
    :cond_2
    invoke-virtual {p4, v3}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->mergeInto(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p4

    goto :goto_1

    :cond_3
    :goto_0
    move-object p4, v3

    :goto_1
    if-eqz v2, :cond_5

    .line 512
    new-instance p1, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;

    const-string v2, "kms_cmk_id"

    .line 513
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p1, v2}, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p1, v3}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->addDescriptions(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    :cond_4
    move-object v3, p1

    goto :goto_3

    :cond_5
    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_2

    .line 518
    :cond_6
    invoke-interface {p1, p4}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;->getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object p1

    :goto_2
    if-nez p1, :cond_4

    .line 520
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to retrieve the encryption materials that originally encrypted object corresponding to instruction file "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_3
    const-string p1, "x-amz-cek-alg"

    .line 527
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p3, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    move v4, v2

    .line 532
    :goto_4
    invoke-static {p1, v4}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->fromCEKAlgo(Ljava/lang/String;Z)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object p1

    if-eqz v4, :cond_9

    .line 535
    aget-wide v4, p3, v2

    invoke-virtual {p1, v1, v4, v5}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->adjustIV([BJ)[B

    move-result-object v1

    :cond_8
    move-object p0, v1

    goto :goto_5

    .line 538
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getTagLengthInBits()I

    move-result p3

    if-lez p3, :cond_8

    const-string v2, "x-amz-tag-len"

    .line 540
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 541
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-eq p3, p0, :cond_8

    .line 543
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported tag length: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", expected: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_5
    if-eqz p5, :cond_a

    if-nez v7, :cond_a

    .line 550
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->newKeyWrapException()Lcom/amazonaws/services/s3/KeyWrapException;

    move-result-object p0

    throw p0

    :cond_a
    move-object v1, v0

    move-object v2, v7

    move-object v4, p2

    move-object v5, p1

    move-object v6, p6

    .line 552
    invoke-static/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->cek([BLjava/lang/String;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/kms/AWSKMSClient;)Ljavax/crypto/SecretKey;

    move-result-object p3

    .line 554
    new-instance p5, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    const/4 p6, 0x2

    .line 555
    invoke-virtual {p1, p3, p0, p6, p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->createCipherLite(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p0

    invoke-direct {p5, p4, v0, v7, p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;-><init>(Ljava/util/Map;[BLjava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V

    return-object p5

    .line 499
    :cond_b
    :goto_6
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Necessary encryption info not found in the instruction file "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static fromObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 7

    .line 335
    sget-object v4, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->NONE:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->fromObjectMetadata0(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method static fromObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 0

    .line 354
    invoke-static/range {p0 .. p6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->fromObjectMetadata0(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method private static fromObjectMetadata0(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 8

    .line 370
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object p0

    const-string v0, "x-amz-key-v2"

    .line 371
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "x-amz-key"

    .line 373
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 375
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    const-string p1, "Content encrypting key not found."

    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 379
    :cond_0
    invoke-static {v0}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "x-amz-iv"

    .line 380
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v0, :cond_b

    if-nez v1, :cond_1

    goto/16 :goto_6

    :cond_1
    const-string v2, "x-amz-matdesc"

    .line 386
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "x-amz-wrap-alg"

    .line 387
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    .line 388
    invoke-static {v7}, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;->isKMSKeyWrapped(Ljava/lang/String;)Z

    move-result v3

    .line 389
    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->matdescFromJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-nez v3, :cond_3

    if-nez p4, :cond_2

    goto :goto_0

    .line 391
    :cond_2
    invoke-virtual {p4, v2}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->mergeInto(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p4

    goto :goto_1

    :cond_3
    :goto_0
    move-object p4, v2

    :goto_1
    if-eqz v3, :cond_5

    .line 394
    new-instance p1, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;

    const-string v3, "kms_cmk_id"

    .line 395
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p1, v3}, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->addDescriptions(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    :cond_4
    move-object v3, p1

    goto :goto_3

    :cond_5
    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_2

    .line 400
    :cond_6
    invoke-interface {p1, p4}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;->getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object p1

    :goto_2
    if-nez p1, :cond_4

    .line 402
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    const-string p1, "Unable to retrieve the client encryption materials"

    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_3
    const-string p1, "x-amz-cek-alg"

    .line 407
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p3, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    move v4, v2

    .line 412
    :goto_4
    invoke-static {p1, v4}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->fromCEKAlgo(Ljava/lang/String;Z)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object p1

    if-eqz v4, :cond_9

    .line 415
    aget-wide v4, p3, v2

    invoke-virtual {p1, v1, v4, v5}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->adjustIV([BJ)[B

    move-result-object v1

    :cond_8
    move-object p0, v1

    goto :goto_5

    .line 418
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getTagLengthInBits()I

    move-result p3

    if-lez p3, :cond_8

    const-string v2, "x-amz-tag-len"

    .line 420
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 421
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-eq p3, p0, :cond_8

    .line 423
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported tag length: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", expected: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_5
    if-eqz p5, :cond_a

    if-nez v7, :cond_a

    .line 430
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->newKeyWrapException()Lcom/amazonaws/services/s3/KeyWrapException;

    move-result-object p0

    throw p0

    :cond_a
    move-object v1, v0

    move-object v2, v7

    move-object v4, p2

    move-object v5, p1

    move-object v6, p6

    .line 432
    invoke-static/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->cek([BLjava/lang/String;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/kms/AWSKMSClient;)Ljavax/crypto/SecretKey;

    move-result-object p3

    .line 434
    new-instance p5, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    const/4 p6, 0x2

    .line 435
    invoke-virtual {p1, p3, p0, p6, p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->createCipherLite(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p0

    invoke-direct {p5, p4, v0, v7, p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;-><init>(Ljava/util/Map;[BLjava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V

    return-object p5

    .line 382
    :cond_b
    :goto_6
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    const-string p1, "Content encrypting key or IV not found."

    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private kekMaterialDescAsJson()Ljava/lang/String;
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getKEKMaterialsDescription()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 228
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 230
    :cond_0
    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static matdescFromJson(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
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

    .line 239
    invoke-static {p0}, Lcom/amazonaws/util/json/JsonUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 240
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static mergeMaterialDescriptions(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/AmazonWebServiceRequest;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterials;",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 913
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object p0

    .line 914
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;

    if-eqz v0, :cond_0

    .line 915
    check-cast p1, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;

    .line 916
    invoke-interface {p1}, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;->getMaterialsDescription()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 918
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 919
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method private static newKeyWrapException()Lcom/amazonaws/services/s3/KeyWrapException;
    .locals 2

    .line 440
    new-instance v0, Lcom/amazonaws/services/s3/KeyWrapException;

    const-string v1, "Missing key-wrap for the content-encrypting-key"

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/KeyWrapException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static parseInstructionFile(Lcom/amazonaws/services/s3/model/S3Object;)Ljava/lang/String;
    .locals 2

    .line 565
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 567
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Error parsing JSON instruction file"

    invoke-direct {v0, v1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static secureCEK(Ljavax/crypto/SecretKey;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;Ljava/security/SecureRandom;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;
    .locals 1

    .line 862
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->isKMSEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    invoke-static {p1, p6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->mergeMaterialDescriptions(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/AmazonWebServiceRequest;)Ljava/util/Map;

    move-result-object p2

    .line 864
    new-instance p3, Lcom/amazonaws/services/kms/model/EncryptRequest;

    invoke-direct {p3}, Lcom/amazonaws/services/kms/model/EncryptRequest;-><init>()V

    .line 865
    invoke-virtual {p3, p2}, Lcom/amazonaws/services/kms/model/EncryptRequest;->withEncryptionContext(Ljava/util/Map;)Lcom/amazonaws/services/kms/model/EncryptRequest;

    move-result-object p3

    .line 866
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getCustomerMasterKeyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amazonaws/services/kms/model/EncryptRequest;->withKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/EncryptRequest;

    move-result-object p1

    .line 867
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/amazonaws/services/kms/model/EncryptRequest;->withPlaintext(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/EncryptRequest;

    move-result-object p0

    .line 869
    invoke-virtual {p6}, Lcom/amazonaws/AmazonWebServiceRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/EncryptRequest;->withGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    .line 870
    invoke-virtual {p6}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/amazonaws/AmazonWebServiceRequest;->withRequestMetricCollector(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 871
    invoke-virtual {p5, p0}, Lcom/amazonaws/services/kms/AWSKMSClient;->encrypt(Lcom/amazonaws/services/kms/model/EncryptRequest;)Lcom/amazonaws/services/kms/model/EncryptResult;

    move-result-object p0

    .line 872
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/EncryptResult;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/util/BinaryUtils;->copyAllBytesFrom(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    .line 873
    new-instance p1, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;

    invoke-direct {p1, p0, p2}, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;-><init>([BLjava/util/Map;)V

    return-object p1

    .line 875
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object p5

    .line 878
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object p6

    if-eqz p6, :cond_1

    .line 880
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    goto :goto_0

    .line 883
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 885
    :goto_0
    invoke-virtual {p2, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;->getKeyWrapAlgorithm(Ljava/security/Key;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    if-nez p4, :cond_2

    .line 889
    :try_start_0
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p4

    goto :goto_1

    :cond_2
    invoke-static {p2, p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p4

    :goto_1
    const/4 p6, 0x3

    .line 891
    invoke-virtual {p4, p6, p1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 892
    new-instance p1, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;

    invoke-virtual {p4, p0}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p0

    invoke-direct {p1, p0, p2, p5}, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;-><init>([BLjava/lang/String;Ljava/util/Map;)V

    return-object p1

    .line 896
    :cond_3
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    .line 897
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    if-eqz p4, :cond_4

    .line 899
    invoke-static {p2, p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p2

    goto :goto_2

    .line 901
    :cond_4
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    :goto_2
    const/4 p3, 0x1

    .line 903
    invoke-virtual {p2, p3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 904
    new-instance p1, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;

    invoke-virtual {p2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p5}, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;-><init>([BLjava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 906
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p2, "Unable to encrypt symmetric key"

    invoke-direct {p1, p2, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private toJsonStringEO()Ljava/lang/String;
    .locals 3

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 214
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getEncryptedCEK()[B

    move-result-object v1

    const-string v2, "x-amz-key"

    .line 215
    invoke-static {v1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->getIV()[B

    move-result-object v1

    const-string v2, "x-amz-iv"

    .line 217
    invoke-static {v1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-amz-matdesc"

    .line 218
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->kekMaterialDescAsJson()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 3

    .line 127
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getEncryptedCEK()[B

    move-result-object v0

    const-string v1, "x-amz-key-v2"

    .line 129
    invoke-static {v0}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {p1, v1, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->getIV()[B

    move-result-object v0

    const-string v1, "x-amz-iv"

    .line 132
    invoke-static {v0}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-amz-matdesc"

    .line 135
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->kekMaterialDescAsJson()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {p1, v0, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getContentCryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v0

    const-string v1, "x-amz-cek-alg"

    .line 141
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {p1, v1, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getTagLengthInBits()I

    move-result v0

    if-lez v0, :cond_0

    const-string v1, "x-amz-tag-len"

    .line 145
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {p1, v1, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getKeyWrappingAlgorithm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "x-amz-wrap-alg"

    .line 149
    invoke-virtual {p1, v1, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method private toObjectMetadataEO(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getEncryptedCEK()[B

    move-result-object v0

    const-string v1, "x-amz-key"

    .line 165
    invoke-static {v0}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {p1, v1, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->getIV()[B

    move-result-object v0

    const-string v1, "x-amz-iv"

    .line 168
    invoke-static {v0}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-amz-matdesc"

    .line 171
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->kekMaterialDescAsJson()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {p1, v0, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private usesKMSKey()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->keyWrappingAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;->isKMSKeyWrapped(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static wrap(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 4

    .line 837
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    .line 838
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;->getMaterialDescription()Ljava/util/Map;

    move-result-object v1

    .line 839
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;->getEncrypted()[B

    move-result-object v2

    .line 840
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;->getKeyWrapAlgorithm()Ljava/lang/String;

    move-result-object p4

    const/4 v3, 0x1

    .line 841
    invoke-virtual {p2, p0, p1, v3, p3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->createCipherLite(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p0

    invoke-direct {v0, v1, v2, p4, p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;-><init>(Ljava/util/Map;[BLjava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V

    return-object v0
.end method


# virtual methods
.method getCipherLite()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    return-object v0
.end method

.method getContentCryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->getContentCryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v0

    return-object v0
.end method

.method getEncryptedCEK()[B
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->encryptedCEK:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method getKEKMaterialsDescription()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->kekMaterialsDescription:Ljava/util/Map;

    return-object v0
.end method

.method getKeyWrappingAlgorithm()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->keyWrappingAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method recreate(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 15

    move-object v0, p0

    .line 701
    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->usesKMSKey()Z

    move-result v1

    if-nez v1, :cond_0

    .line 702
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->kekMaterialsDescription:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Material description of the new KEK must differ from the current one"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 707
    :cond_0
    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->usesKMSKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 708
    new-instance v1, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;

    iget-object v2, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->kekMaterialsDescription:Ljava/util/Map;

    const-string v3, "kms_cmk_id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v4, v1

    goto :goto_1

    .line 711
    :cond_1
    iget-object v1, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->kekMaterialsDescription:Ljava/util/Map;

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;->getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v1

    goto :goto_0

    .line 713
    :goto_1
    iget-object v2, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->encryptedCEK:[B

    iget-object v3, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->keyWrappingAlgorithm:Ljava/lang/String;

    .line 714
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getContentCryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v6

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    .line 713
    invoke-static/range {v2 .. v7}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->cek([BLjava/lang/String;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/kms/AWSKMSClient;)Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 715
    iget-object v1, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 716
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->getIV()[B

    move-result-object v8

    .line 717
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getContentCryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v10

    move-object/from16 v9, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    .line 716
    invoke-static/range {v7 .. v14}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->create(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v1

    .line 720
    iget-object v2, v1, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->encryptedCEK:[B

    iget-object v3, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->encryptedCEK:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 721
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "The new KEK must differ from the original"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-object v1
.end method

.method recreate(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;",
            "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;",
            "Ljava/security/Provider;",
            "Lcom/amazonaws/services/kms/AWSKMSClient;",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ")",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 645
    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->usesKMSKey()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->kekMaterialsDescription:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 646
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Material description of the new KEK must differ from the current one"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 650
    :cond_0
    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->usesKMSKey()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 651
    new-instance v3, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;

    iget-object v4, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->kekMaterialsDescription:Ljava/util/Map;

    const-string v5, "kms_cmk_id"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v6, v3

    goto :goto_1

    .line 654
    :cond_1
    iget-object v3, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->kekMaterialsDescription:Ljava/util/Map;

    invoke-interface {v2, v3}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;->getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v3

    goto :goto_0

    .line 656
    :goto_1
    invoke-interface {v2, v1}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;->getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v2

    if-nez v2, :cond_2

    .line 658
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No material available with the description "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from the encryption material provider"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 663
    :cond_2
    iget-object v4, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->encryptedCEK:[B

    iget-object v5, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->keyWrappingAlgorithm:Ljava/lang/String;

    .line 664
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getContentCryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v8

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    .line 663
    invoke-static/range {v4 .. v9}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->cek([BLjava/lang/String;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/kms/AWSKMSClient;)Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 665
    iget-object v1, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->getIV()[B

    move-result-object v8

    .line 666
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getContentCryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v10

    move-object v9, v2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    .line 665
    invoke-static/range {v7 .. v14}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->create(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v1

    .line 669
    iget-object v2, v1, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->encryptedCEK:[B

    iget-object v3, v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->encryptedCEK:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 670
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "The new KEK must differ from the original"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-object v1
.end method

.method toJsonString()Ljava/lang/String;
    .locals 4

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 190
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getEncryptedCEK()[B

    move-result-object v1

    const-string v2, "x-amz-key-v2"

    .line 191
    invoke-static {v1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->getIV()[B

    move-result-object v1

    const-string v2, "x-amz-iv"

    .line 193
    invoke-static {v1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-amz-matdesc"

    .line 194
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->kekMaterialDescAsJson()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getContentCryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v1

    const-string v2, "x-amz-cek-alg"

    .line 199
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getTagLengthInBits()I

    move-result v1

    if-lez v1, :cond_0

    const-string v2, "x-amz-tag-len"

    .line 202
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getKeyWrappingAlgorithm()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "x-amz-wrap-alg"

    .line 206
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_1
    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toJsonString(Lcom/amazonaws/services/s3/model/CryptoMode;)Ljava/lang/String;
    .locals 1

    .line 180
    sget-object v0, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->usesKMSKey()Z

    move-result p1

    if-nez p1, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->toJsonStringEO()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->toJsonString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method toObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CryptoMode;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .line 115
    sget-object v0, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->usesKMSKey()Z

    move-result p2

    if-nez p2, :cond_0

    .line 116
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->toObjectMetadataEO(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    goto :goto_0

    .line 117
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->toObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    :goto_0
    return-object p1
.end method
