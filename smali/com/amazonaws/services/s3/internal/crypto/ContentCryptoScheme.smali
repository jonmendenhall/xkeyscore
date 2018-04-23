.class abstract Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
.super Ljava/lang/Object;
.source "ContentCryptoScheme.java"


# static fields
.field static final AES_CBC:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

.field static final AES_CTR:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

.field static final AES_GCM:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

.field private static final BYTE_SIZE:I = 0x4

.field private static final CBC_SHIFT_VALUE:I = 0x30

.field private static final DEFAULT_BIT_COUNTER:I = 0x10

.field private static final DEFAULT_RIGHTMOST_BIT_START:I = 0xc

.field private static final GCM_SHIFT_VALUE:I = 0x20

.field private static final LONG_BYTE_SIZE:I = 0x8

.field private static final LONG_VALUE:J = 0x1L

.field static final MAX_CBC_BYTES:J = 0x10000000000000L

.field static final MAX_CTR_BYTES:J = -0x1L

.field static final MAX_GCM_BLOCKS:J = 0xfffffffeL

.field static final MAX_GCM_BYTES:J = 0xfffffffe0L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/AesCbc;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/AesCbc;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_CBC:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 87
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/AesGcm;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/AesGcm;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_GCM:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 94
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_CTR:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromCEKAlgo(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->fromCEKAlgo(Ljava/lang/String;Z)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object p0

    return-object p0
.end method

.method static fromCEKAlgo(Ljava/lang/String;Z)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .locals 2

    .line 177
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_GCM:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 178
    sget-object p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_CTR:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_GCM:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    :goto_0
    return-object p0

    :cond_1
    if-eqz p0, :cond_3

    .line 180
    sget-object p1, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_CBC:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 182
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported content encryption scheme: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_3
    :goto_1
    sget-object p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_CBC:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    return-object p0
.end method

.method static incrementBlocks([BJ)[B
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-eqz p0, :cond_6

    .line 145
    array-length v0, p0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    goto :goto_2

    :cond_1
    const-wide v0, 0xfffffffeL

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 149
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    const/16 v2, 0x8

    .line 151
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v3, 0xc

    move v4, v3

    :goto_0
    const/16 v5, 0xf

    if-gt v4, v5, :cond_3

    add-int/lit8 v5, v4, -0x8

    .line 154
    aget-byte v6, p0, v4

    invoke-virtual {v2, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 155
    :cond_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    add-long/2addr v6, p1

    cmp-long p1, v6, v0

    if-lez p1, :cond_4

    .line 157
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 158
    :cond_4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 160
    invoke-virtual {v2, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    :goto_1
    if-gt v3, v5, :cond_5

    add-int/lit8 p2, v3, -0x8

    .line 164
    aget-byte p2, p1, p2

    aput-byte p2, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-object p0

    .line 146
    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method adjustIV([BJ)[B
    .locals 0

    return-object p1
.end method

.method createAuxillaryCipher(Ljavax/crypto/SecretKey;[BILjava/security/Provider;J)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method createCipherLite(Ljavax/crypto/SecretKey;[BI)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->createCipherLite(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p1

    return-object p1
.end method

.method createCipherLite(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getSpecificCipherProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p4

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p4

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p4

    .line 211
    :goto_0
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p4, p3, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 212
    invoke-virtual {p0, p4, p1, p3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->newCipherLite(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;I)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 214
    :goto_1
    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/RuntimeException;

    goto :goto_2

    :cond_2
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to build cipher: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\nMake sure you have the JCE unlimited strength policy files installed and configured for your JVM"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_2
    throw p1
.end method

.method abstract getBlockSizeInBytes()I
.end method

.method abstract getCipherAlgorithm()Ljava/lang/String;
.end method

.method abstract getIVLengthInBytes()I
.end method

.method abstract getKeyGeneratorAlgorithm()Ljava/lang/String;
.end method

.method abstract getKeyLengthInBits()I
.end method

.method final getKeySpec()Ljava/lang/String;
    .locals 2

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getKeyGeneratorAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getKeyLengthInBits()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract getMaxPlaintextSize()J
.end method

.method getSpecificCipherProvider()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getTagLengthInBits()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected newCipherLite(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;I)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 1

    .line 230
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;-><init>(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Ljavax/crypto/SecretKey;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cipherAlgo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", blockSizeInBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getBlockSizeInBytes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ivLengthInBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getIVLengthInBytes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyGenAlgo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getKeyGeneratorAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyLengthInBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getKeyLengthInBits()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", specificProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getSpecificCipherProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tagLengthInBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getTagLengthInBits()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
