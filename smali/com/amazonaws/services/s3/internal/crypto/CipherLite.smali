.class Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
.super Ljava/lang/Object;
.source "CipherLite.java"


# static fields
.field static final NULL:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final cipherMode:I

.field private final scheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

.field private final secreteKey:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite$1;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite$1;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->NULL:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljavax/crypto/NullCipher;

    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->scheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 72
    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->secreteKey:Ljavax/crypto/SecretKey;

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipherMode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/s3/internal/crypto/CipherLite$1;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;-><init>()V

    return-void
.end method

.method constructor <init>(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Ljavax/crypto/SecretKey;I)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    .line 79
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->scheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 80
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->secreteKey:Ljavax/crypto/SecretKey;

    .line 81
    iput p4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipherMode:I

    return-void
.end method


# virtual methods
.method createAuxiliary(J)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->scheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->secreteKey:Ljavax/crypto/SecretKey;

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    iget v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipherMode:I

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    .line 113
    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v4

    move-wide v5, p1

    .line 112
    invoke-virtual/range {v0 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->createAuxillaryCipher(Ljavax/crypto/SecretKey;[BILjava/security/Provider;J)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p1

    return-object p1
.end method

.method createInverse()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 123
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipherMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipherMode:I

    if-ne v0, v1, :cond_1

    move v1, v2

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->scheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->secreteKey:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    .line 130
    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v4

    .line 129
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->createCipherLite(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v0

    return-object v0

    .line 128
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method createUsingIV([B)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->scheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->secreteKey:Ljavax/crypto/SecretKey;

    iget v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipherMode:I

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    .line 98
    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v3

    .line 97
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->createCipherLite(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p1

    return-object p1
.end method

.method doFinal()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method doFinal([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method doFinal([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1
.end method

.method final getBlockSize()I
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method final getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method final getCipherAlgorithm()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getCipherMode()I
    .locals 1

    .line 335
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipherMode:I

    return v0
.end method

.method final getCipherProvider()Ljava/security/Provider;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method final getContentCryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->scheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    return-object v0
.end method

.method final getIV()[B
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    return-object v0
.end method

.method getOutputSize(I)I
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p1

    return p1
.end method

.method final getSecretKeyAlgorithm()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->secreteKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method mark()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method recreate()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->scheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->secreteKey:Ljavax/crypto/SecretKey;

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    iget v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipherMode:I

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    .line 89
    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v4

    .line 88
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->createCipherLite(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v0

    return-object v0
.end method

.method reset()V
    .locals 2

    .line 387
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method update([BII)[B
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object p1

    return-object p1
.end method
