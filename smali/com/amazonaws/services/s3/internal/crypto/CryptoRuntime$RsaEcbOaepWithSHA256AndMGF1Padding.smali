.class final Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$RsaEcbOaepWithSHA256AndMGF1Padding;
.super Ljava/lang/Object;
.source "CryptoRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RsaEcbOaepWithSHA256AndMGF1Padding"
.end annotation


# static fields
.field static volatile isAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$RsaEcbOaepWithSHA256AndMGF1Padding;->check()Z

    move-result v0

    sput-boolean v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$RsaEcbOaepWithSHA256AndMGF1Padding;->isAvailable:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static check()Z
    .locals 2

    :try_start_0
    const-string v0, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    const-string v1, "BC"

    .line 115
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

    .line 109
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$RsaEcbOaepWithSHA256AndMGF1Padding;->check()Z

    move-result v0

    sput-boolean v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$RsaEcbOaepWithSHA256AndMGF1Padding;->isAvailable:Z

    .line 110
    sget-boolean v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$RsaEcbOaepWithSHA256AndMGF1Padding;->isAvailable:Z

    return v0
.end method
