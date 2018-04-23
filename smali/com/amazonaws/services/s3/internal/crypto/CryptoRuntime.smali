.class public Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;
.super Ljava/lang/Object;
.source "CryptoRuntime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$RsaEcbOaepWithSHA256AndMGF1Padding;,
        Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;
    }
.end annotation


# static fields
.field private static final BC_PROVIDER_FQCN:Ljava/lang/String; = "org.bouncycastle.jce.provider.BouncyCastleProvider"

.field static final BOUNCY_CASTLE_PROVIDER:Ljava/lang/String; = "BC"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized enableBouncyCastle()V
    .locals 4

    const-class v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;

    monitor-enter v0

    .line 46
    :try_start_0
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;->isBouncyCastleAvailable()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 47
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "org.bouncycastle.jce.provider.BouncyCastleProvider"

    .line 51
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    .line 53
    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 55
    :try_start_2
    const-class v2, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    const-string v3, "Bouncy Castle not available"

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 45
    monitor-exit v0

    throw v1
.end method

.method public static isAesGcmAvailable()Z
    .locals 1

    .line 70
    sget-boolean v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;->isAvailable:Z

    return v0
.end method

.method public static declared-synchronized isBouncyCastleAvailable()Z
    .locals 2

    const-class v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;

    monitor-enter v0

    :try_start_0
    const-string v1, "BC"

    .line 39
    invoke-static {v1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static isRsaKeyWrapAvailable()Z
    .locals 1

    .line 78
    sget-boolean v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$RsaEcbOaepWithSHA256AndMGF1Padding;->isAvailable:Z

    return v0
.end method

.method static recheck()V
    .locals 0

    .line 65
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;->recheckAesGcmAvailablility()V

    .line 66
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;->recheckRsaKeyWrapAvailablility()V

    return-void
.end method

.method private static recheckAesGcmAvailablility()V
    .locals 0

    .line 74
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;->recheck()Z

    return-void
.end method

.method private static recheckRsaKeyWrapAvailablility()V
    .locals 0

    .line 82
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$RsaEcbOaepWithSHA256AndMGF1Padding;->recheck()Z

    return-void
.end method
