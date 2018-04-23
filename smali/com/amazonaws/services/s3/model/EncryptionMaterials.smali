.class public Lcom/amazonaws/services/s3/model/EncryptionMaterials;
.super Ljava/lang/Object;
.source "EncryptionMaterials.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final desc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keyPair:Ljava/security/KeyPair;

.field private final symmetricKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljava/security/KeyPair;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;-><init>(Ljava/security/KeyPair;Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method protected constructor <init>(Ljava/security/KeyPair;Ljavax/crypto/SecretKey;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->desc:Ljava/util/Map;

    .line 61
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->keyPair:Ljava/security/KeyPair;

    .line 62
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->symmetricKey:Ljavax/crypto/SecretKey;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;-><init>(Ljava/security/KeyPair;Ljavax/crypto/SecretKey;)V

    return-void
.end method


# virtual methods
.method public addDescription(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->desc:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addDescriptions(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterials;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->desc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public getAccessor()Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomerMasterKeyId()Ljava/lang/String;
    .locals 1

    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected getDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->desc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getKeyPair()Ljava/security/KeyPair;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->keyPair:Ljava/security/KeyPair;

    return-object v0
.end method

.method public getMaterialsDescription()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->desc:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getSymmetricKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->symmetricKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public isKMSEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
