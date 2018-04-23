.class final Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;
.super Ljava/lang/Object;
.source "S3CryptoScheme.java"


# static fields
.field static final AES:Ljava/lang/String; = "AES"

.field static final RSA:Ljava/lang/String; = "RSA"

.field private static final SRAND:Ljava/security/SecureRandom;


# instance fields
.field private final contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

.field private final kwScheme:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->SRAND:Ljava/security/SecureRandom;

    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 38
    new-instance p1, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->kwScheme:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    return-void
.end method

.method private constructor <init>(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 44
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->kwScheme:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    return-void
.end method

.method static from(Lcom/amazonaws/services/s3/model/CryptoMode;)Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;
    .locals 2

    .line 67
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme$1;->$SwitchMap$com$amazonaws$services$s3$model$CryptoMode:[I

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/CryptoMode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 76
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 73
    :pswitch_0
    new-instance p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_GCM:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    new-instance v1, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;-><init>(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;)V

    return-object p0

    .line 69
    :pswitch_1
    new-instance p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_CBC:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    sget-object v1, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;->NONE:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;-><init>(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static isAesGcm(Ljava/lang/String;)Z
    .locals 1

    .line 63
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_GCM:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method getContentCryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    return-object v0
.end method

.method getKeyWrapScheme()Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->kwScheme:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    return-object v0
.end method

.method getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .line 48
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->SRAND:Ljava/security/SecureRandom;

    return-object v0
.end method
