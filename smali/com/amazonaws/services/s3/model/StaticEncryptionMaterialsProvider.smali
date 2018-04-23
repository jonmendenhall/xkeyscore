.class public Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;
.super Ljava/lang/Object;
.source "StaticEncryptionMaterialsProvider.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;


# instance fields
.field private final materials:Lcom/amazonaws/services/s3/model/EncryptionMaterials;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;->materials:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    return-void
.end method


# virtual methods
.method public getEncryptionMaterials()Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;->materials:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    return-object v0
.end method

.method public getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .locals 3
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

    .line 44
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;->materials:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    .line 45
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 47
    invoke-interface {p1, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;->materials:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    return-object p1

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;->materials:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getAccessor()Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 53
    invoke-interface {v1, p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;->getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 65
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v1

    :goto_1
    if-eqz v0, :cond_5

    .line 66
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    if-eqz v1, :cond_6

    .line 67
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;->materials:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    return-object p1
.end method

.method public refresh()V
    .locals 0

    return-void
.end method
