.class public Lcom/amazonaws/services/s3/model/KMSEncryptionMaterialsProvider;
.super Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;
.source "KMSEncryptionMaterialsProvider.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 20
    new-instance v0, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;)V

    return-void
.end method
