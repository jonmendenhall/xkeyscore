.class public Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "InitiateMultipartUploadRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/SSECustomerKeyProvider;
.implements Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParamsProvider;
.implements Ljava/io/Serializable;


# instance fields
.field private accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private bucketName:Ljava/lang/String;

.field private cannedACL:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field private isRequesterPays:Z

.field private key:Ljava/lang/String;

.field public objectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private redirectLocation:Ljava/lang/String;

.field private sseAwsKeyManagementParams:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

.field private sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private storageClass:Lcom/amazonaws/services/s3/model/StorageClass;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->bucketName:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->bucketName:Ljava/lang/String;

    .line 133
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->key:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->objectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method


# virtual methods
.method public getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCannedACL()Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->cannedACL:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->objectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-object v0
.end method

.method public getRedirectLocation()Ljava/lang/String;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->redirectLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getSSEAwsKeyManagementParams()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->sseAwsKeyManagementParams:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    return-object v0
.end method

.method public getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public getStorageClass()Lcom/amazonaws/services/s3/model/StorageClass;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->storageClass:Lcom/amazonaws/services/s3/model/StorageClass;

    return-object v0
.end method

.method public isRequesterPays()Z
    .locals 1

    .line 499
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->isRequesterPays:Z

    return v0
.end method

.method public setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setCannedACL(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->cannedACL:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->key:Ljava/lang/String;

    return-void
.end method

.method public setObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->objectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method

.method public setRedirectLocation(Ljava/lang/String;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->redirectLocation:Ljava/lang/String;

    return-void
.end method

.method public setRequesterPays(Z)V
    .locals 0

    .line 519
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->isRequesterPays:Z

    return-void
.end method

.method public setSSEAwsKeyManagementParams(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    if-eqz v0, :cond_0

    .line 464
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Either SSECustomerKey or SSEAwsKeyManagementParams must not be set at the same time."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 467
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->sseAwsKeyManagementParams:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    return-void
.end method

.method public setSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->sseAwsKeyManagementParams:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    if-eqz v0, :cond_0

    .line 427
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Either SSECustomerKey or SSEAwsKeyManagementParams must not be set at the same time."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 430
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-void
.end method

.method public setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->storageClass:Lcom/amazonaws/services/s3/model/StorageClass;

    return-void
.end method

.method public withAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0

    .line 286
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V

    return-object p0
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public withCannedACL(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->cannedACL:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->key:Ljava/lang/String;

    return-object p0
.end method

.method public withObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0

    .line 381
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-object p0
.end method

.method public withRedirectLocation(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->redirectLocation:Ljava/lang/String;

    return-object p0
.end method

.method public withRequesterPays(Z)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0

    .line 543
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setRequesterPays(Z)V

    return-object p0
.end method

.method public withSSEAwsKeyManagementParams(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0

    .line 478
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setSSEAwsKeyManagementParams(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    return-object p0
.end method

.method public withSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0

    .line 445
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    return-object p0
.end method

.method public withStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->storageClass:Lcom/amazonaws/services/s3/model/StorageClass;

    return-object p0
.end method

.method public withStorageClass(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0

    if-eqz p1, :cond_0

    .line 338
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/StorageClass;->fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->storageClass:Lcom/amazonaws/services/s3/model/StorageClass;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 340
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->storageClass:Lcom/amazonaws/services/s3/model/StorageClass;

    :goto_0
    return-object p0
.end method
