.class public Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;
.super Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
.source "EncryptedInitiateMultipartUploadRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;
.implements Ljava/io/Serializable;


# instance fields
.field private createEncryptionMaterial:Z

.field private materialsDescription:Ljava/util/Map;
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->createEncryptionMaterial:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->createEncryptionMaterial:Z

    return-void
.end method


# virtual methods
.method public getMaterialsDescription()Ljava/util/Map;
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

    .line 67
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->materialsDescription:Ljava/util/Map;

    return-object v0
.end method

.method public isCreateEncryptionMaterial()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->createEncryptionMaterial:Z

    return v0
.end method

.method public setCreateEncryptionMaterial(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->createEncryptionMaterial:Z

    return-void
.end method

.method public setMaterialsDescription(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 79
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->materialsDescription:Ljava/util/Map;

    return-void
.end method

.method public withCreateEncryptionMaterial(Z)Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->createEncryptionMaterial:Z

    return-object p0
.end method

.method public withMaterialsDescription(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;"
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->setMaterialsDescription(Ljava/util/Map;)V

    return-object p0
.end method
