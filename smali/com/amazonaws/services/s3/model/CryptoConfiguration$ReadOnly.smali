.class final Lcom/amazonaws/services/s3/model/CryptoConfiguration$ReadOnly;
.super Lcom/amazonaws/services/s3/model/CryptoConfiguration;
.source "CryptoConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/CryptoConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReadOnly"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/s3/model/CryptoConfiguration$1;)V
    .locals 0

    .line 246
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration$ReadOnly;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 246
    invoke-super {p0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->clone()Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setCryptoMode(Lcom/amazonaws/services/s3/model/CryptoMode;)V
    .locals 0

    .line 262
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setCryptoProvider(Ljava/security/Provider;)V
    .locals 0

    .line 256
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setIgnoreMissingInstructionFile(Z)V
    .locals 0

    .line 269
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setKmsRegion(Lcom/amazonaws/regions/Regions;)V
    .locals 0

    .line 276
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setStorageMode(Lcom/amazonaws/services/s3/model/CryptoStorageMode;)V
    .locals 0

    .line 250
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public withCryptoMode(Lcom/amazonaws/services/s3/model/CryptoMode;)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .locals 0

    .line 265
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public withCryptoProvider(Ljava/security/Provider;)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .locals 0

    .line 259
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public withIgnoreMissingInstructionFile(Z)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .locals 0

    .line 273
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public withKmsRegion(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .locals 0

    .line 279
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public withStorageMode(Lcom/amazonaws/services/s3/model/CryptoStorageMode;)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .locals 0

    .line 253
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
