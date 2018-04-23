.class Lcom/amazonaws/services/s3/internal/crypto/AesCbc;
.super Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
.source "AesCbc.java"


# static fields
.field private static final DEFAULT_BLOCK_SIZE_IN_BYTES:I = 0x10

.field private static final DEFAULT_IV_LENGTH_IN_BYTES:I = 0x10

.field private static final DEFAULT_KEY_LENGTH_IN_BITS:I = 0x100


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;-><init>()V

    return-void
.end method


# virtual methods
.method getBlockSizeInBytes()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method getCipherAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "AES/CBC/PKCS5Padding"

    return-object v0
.end method

.method getIVLengthInBytes()I
    .locals 1

    const/16 v0, 0x10

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

    const-wide/high16 v0, 0x10000000000000L

    return-wide v0
.end method
