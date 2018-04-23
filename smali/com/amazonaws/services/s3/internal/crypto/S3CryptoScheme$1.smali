.class synthetic Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme$1;
.super Ljava/lang/Object;
.source "S3CryptoScheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazonaws$services$s3$model$CryptoMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    invoke-static {}, Lcom/amazonaws/services/s3/model/CryptoMode;->values()[Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme$1;->$SwitchMap$com$amazonaws$services$s3$model$CryptoMode:[I

    :try_start_0
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme$1;->$SwitchMap$com$amazonaws$services$s3$model$CryptoMode:[I

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme$1;->$SwitchMap$com$amazonaws$services$s3$model$CryptoMode:[I

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->AuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme$1;->$SwitchMap$com$amazonaws$services$s3$model$CryptoMode:[I

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->StrictAuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
