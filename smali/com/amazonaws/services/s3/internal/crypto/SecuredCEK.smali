.class Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;
.super Ljava/lang/Object;
.source "SecuredCEK.java"


# instance fields
.field private final encrypted:[B

.field private final keyWrapAlgorithm:Ljava/lang/String;

.field private final matdesc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([BLjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;->encrypted:[B

    .line 45
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;->keyWrapAlgorithm:Ljava/lang/String;

    .line 46
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1, p3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;->matdesc:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method getEncrypted()[B
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;->encrypted:[B

    return-object v0
.end method

.method getKeyWrapAlgorithm()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;->keyWrapAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method getMaterialDescription()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;->matdesc:Ljava/util/Map;

    return-object v0
.end method
