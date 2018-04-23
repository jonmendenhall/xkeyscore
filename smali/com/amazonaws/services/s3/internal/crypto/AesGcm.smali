.class Lcom/amazonaws/services/s3/internal/crypto/AesGcm;
.super Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
.source "AesGcm.java"


# static fields
.field private static final DEFAULT_BLOCK_SIZE_IN_BYTES:I = 0x10

.field private static final DEFAULT_IV_LENGTH_IN_BYTES:I = 0xc

.field private static final DEFAULT_KEY_LENGTH_IN_BITS:I = 0x100

.field private static final DEFAULT_TAG_LENGTH_IN_BITS:I = 0x80


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;-><init>()V

    return-void
.end method


# virtual methods
.method createAuxillaryCipher(Ljavax/crypto/SecretKey;[BILjava/security/Provider;J)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
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

    .line 88
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/AesGcm;->AES_CTR:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0, p2, p5, p6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->adjustIV([BJ)[B

    move-result-object p2

    .line 89
    sget-object p5, Lcom/amazonaws/services/s3/internal/crypto/AesGcm;->AES_CTR:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->createCipherLite(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p1

    return-object p1
.end method

.method getBlockSizeInBytes()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method getCipherAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "AES/GCM/NoPadding"

    return-object v0
.end method

.method getIVLengthInBytes()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method getKeyGeneratorAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "AES"

    return-object v0
.end method

.method getKeyLengthInBits()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method

.method getMaxPlaintextSize()J
    .locals 2

    const-wide v0, 0xfffffffe0L

    return-wide v0
.end method

.method getSpecificCipherProvider()Ljava/lang/String;
    .locals 1

    const-string v0, "BC"

    return-object v0
.end method

.method getTagLengthInBits()I
    .locals 1

    const/16 v0, 0x80

    return v0
.end method

.method protected newCipherLite(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;I)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 1

    .line 94
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;-><init>(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;I)V

    return-object v0
.end method
