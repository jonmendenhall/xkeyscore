.class public Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;
.super Lcom/amazonaws/services/s3/model/PutObjectRequest;
.source "EncryptedPutObjectRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;
.implements Ljava/io/Serializable;


# instance fields
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->clone()Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->clone()Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;
    .locals 4

    .line 91
    new-instance v0, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;

    .line 93
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 94
    invoke-super {p0, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->copyPutObjectBaseTo(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    .line 95
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 96
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->withMaterialsDescription(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->clone()Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->clone()Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;

    move-result-object v0

    return-object v0
.end method

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

    .line 59
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->materialsDescription:Ljava/util/Map;

    return-object v0
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

    .line 69
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 71
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->materialsDescription:Ljava/util/Map;

    return-void
.end method

.method public withMaterialsDescription(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->setMaterialsDescription(Ljava/util/Map;)V

    return-object p0
.end method
