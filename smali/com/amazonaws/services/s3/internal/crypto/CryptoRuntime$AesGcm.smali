.class final Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;
.super Ljava/lang/Object;
.source "CryptoRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AesGcm"
.end annotation


# static fields
.field static volatile isAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;->check()Z

    move-result v0

    sput-boolean v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;->isAvailable:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static check()Z
    .locals 2

    .line 95
    :try_start_0
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_GCM:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 96
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BC"

    .line 95
    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method static recheck()Z
    .locals 1

    .line 89
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;->check()Z

    move-result v0

    sput-boolean v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;->isAvailable:Z

    .line 90
    sget-boolean v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;->isAvailable:Z

    return v0
.end method
