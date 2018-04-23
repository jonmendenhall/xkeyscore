.class final Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;
.super Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;
.source "KMSSecuredCEK.java"


# static fields
.field static final KEY_PROTECTION_MECHANISM:Ljava/lang/String; = "kms"


# direct methods
.method constructor <init>([BLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "kms"

    .line 26
    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;-><init>([BLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static isKMSKeyWrapped(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "kms"

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
