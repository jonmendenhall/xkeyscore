.class public final Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "PutInstructionFileRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;
.implements Lcom/amazonaws/services/s3/model/EncryptionMaterialsFactory;


# instance fields
.field private accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field private final encryptionMaterials:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

.field private final matDesc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private redirectLocation:Ljava/lang/String;

.field private final s3ObjectId:Lcom/amazonaws/services/s3/model/S3ObjectId;

.field private storageClass:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/S3ObjectId;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/lang/String;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    if-eqz p1, :cond_4

    .line 104
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/InstructionFileId;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_3

    .line 106
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 109
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "encryption materials must be specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_2
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->s3ObjectId:Lcom/amazonaws/services/s3/model/S3ObjectId;

    .line 111
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->suffix:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->encryptionMaterials:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    const/4 p1, 0x0

    .line 113
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->matDesc:Ljava/util/Map;

    return-void

    .line 107
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "suffix must be specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid s3 object id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/S3ObjectId;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/S3ObjectId;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    if-eqz p1, :cond_4

    .line 80
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/InstructionFileId;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_3

    .line 82
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 84
    :cond_1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->s3ObjectId:Lcom/amazonaws/services/s3/model/S3ObjectId;

    if-nez p2, :cond_2

    .line 86
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 88
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 89
    :goto_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->matDesc:Ljava/util/Map;

    .line 90
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->suffix:Ljava/lang/String;

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->encryptionMaterials:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    return-void

    .line 83
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "suffix must be specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_4
    :goto_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid s3 object id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createPutObjectRequest(Lcom/amazonaws/services/s3/model/S3Object;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 3

    .line 381
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->s3ObjectId:Lcom/amazonaws/services/s3/model/S3ObjectId;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectId;->getBucket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->s3ObjectId:Lcom/amazonaws/services/s3/model/S3ObjectId;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectId;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->s3ObjectId:Lcom/amazonaws/services/s3/model/S3ObjectId;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->suffix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/S3ObjectId;->instructionFileId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InstructionFileId;

    move-result-object p1

    .line 387
    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InstructionFileId;->getBucket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InstructionFileId;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->redirectLocation:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 388
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 389
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->storageClass:Ljava/lang/String;

    .line 394
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withStorageClass(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    .line 395
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object p1

    .line 396
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withRequestMetricCollector(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object p1

    .line 383
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "s3Object passed inconsistent with the instruction file being created"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method

.method public getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method

.method public getEncryptionMaterials()Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->encryptionMaterials:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

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

    .line 129
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->matDesc:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->encryptionMaterials:Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    .line 130
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->matDesc:Ljava/util/Map;

    :goto_0
    return-object v0
.end method

.method public getRedirectLocation()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->redirectLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getS3ObjectId()Lcom/amazonaws/services/s3/model/S3ObjectId;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->s3ObjectId:Lcom/amazonaws/services/s3/model/S3ObjectId;

    return-object v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-void
.end method

.method public setCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-void
.end method

.method public setRedirectLocation(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->redirectLocation:Ljava/lang/String;

    return-void
.end method

.method public setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V
    .locals 0

    .line 347
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->storageClass:Ljava/lang/String;

    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->storageClass:Ljava/lang/String;

    return-void
.end method

.method public withAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;
    .locals 0

    .line 228
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V

    return-object p0
.end method

.method public withCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->setCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    return-object p0
.end method

.method public withRedirectLocation(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->redirectLocation:Ljava/lang/String;

    return-object p0
.end method

.method public withStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;
    .locals 0

    .line 372
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V

    return-object p0
.end method

.method public withStorageClass(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;
    .locals 0

    .line 327
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutInstructionFileRequest;->setStorageClass(Ljava/lang/String;)V

    return-object p0
.end method
