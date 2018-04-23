.class public Lcom/amazonaws/services/s3/model/CopyObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CopyObjectRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParamsProvider;
.implements Ljava/io/Serializable;
.implements Lcom/amazonaws/services/s3/model/S3AccelerateUnsupported;


# instance fields
.field private accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private cannedACL:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field private destinationBucketName:Ljava/lang/String;

.field private destinationKey:Ljava/lang/String;

.field private destinationSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private isRequesterPays:Z

.field private matchingETagConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private modifiedSinceConstraint:Ljava/util/Date;

.field private newObjectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private newObjectTagging:Lcom/amazonaws/services/s3/model/ObjectTagging;

.field private nonmatchingEtagConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private redirectLocation:Ljava/lang/String;

.field private sourceBucketName:Ljava/lang/String;

.field private sourceKey:Ljava/lang/String;

.field private sourceSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private sourceVersionId:Ljava/lang/String;

.field private sseAwsKeyManagementParams:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

.field private storageClass:Ljava/lang/String;

.field private unmodifiedSinceConstraint:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 177
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 201
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->matchingETagConstraints:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    .line 202
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceBucketName:Ljava/lang/String;

    .line 203
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceKey:Ljava/lang/String;

    .line 204
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceVersionId:Ljava/lang/String;

    .line 205
    iput-object p4, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationBucketName:Ljava/lang/String;

    .line 206
    iput-object p5, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method

.method public getCannedAccessControlList()Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->cannedACL:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method

.method public getDestinationBucketName()Ljava/lang/String;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationKey()Ljava/lang/String;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public getMatchingETagConstraints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 685
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->matchingETagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getModifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->modifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public getNewObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->newObjectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-object v0
.end method

.method public getNewObjectTagging()Lcom/amazonaws/services/s3/model/ObjectTagging;
    .locals 1

    .line 1138
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->newObjectTagging:Lcom/amazonaws/services/s3/model/ObjectTagging;

    return-object v0
.end method

.method public getNonmatchingETagConstraints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 751
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getRedirectLocation()Ljava/lang/String;
    .locals 1

    .line 947
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->redirectLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getSSEAwsKeyManagementParams()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sseAwsKeyManagementParams:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    return-object v0
.end method

.method public getSourceBucketName()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceKey()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public getSourceVersionId()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceVersionId:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public getUnmodifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public isRequesterPays()Z
    .locals 1

    .line 1086
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->isRequesterPays:Z

    return v0
.end method

.method public setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-void
.end method

.method public setCannedAccessControlList(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->cannedACL:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-void
.end method

.method public setDestinationBucketName(Ljava/lang/String;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationBucketName:Ljava/lang/String;

    return-void
.end method

.method public setDestinationKey(Ljava/lang/String;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationKey:Ljava/lang/String;

    return-void
.end method

.method public setDestinationSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 0

    .line 1019
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-void
.end method

.method public setMatchingETagConstraints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 707
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->matchingETagConstraints:Ljava/util/List;

    return-void
.end method

.method public setModifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0

    .line 904
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->modifiedSinceConstraint:Ljava/util/Date;

    return-void
.end method

.method public setNewObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->newObjectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method

.method public setNewObjectTagging(Lcom/amazonaws/services/s3/model/ObjectTagging;)V
    .locals 0

    .line 1147
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->newObjectTagging:Lcom/amazonaws/services/s3/model/ObjectTagging;

    return-void
.end method

.method public setNonmatchingETagConstraints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 772
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    return-void
.end method

.method public setRedirectLocation(Ljava/lang/String;)V
    .locals 0

    .line 940
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->redirectLocation:Ljava/lang/String;

    return-void
.end method

.method public setRequesterPays(Z)V
    .locals 0

    .line 1106
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->isRequesterPays:Z

    return-void
.end method

.method public setSSEAwsKeyManagementParams(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    if-eqz v0, :cond_0

    .line 1052
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Either SSECustomerKey or SSEAwsKeyManagementParams must not be set at the same time."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1055
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sseAwsKeyManagementParams:Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    return-void
.end method

.method public setSourceBucketName(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceBucketName:Ljava/lang/String;

    return-void
.end method

.method public setSourceKey(Ljava/lang/String;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceKey:Ljava/lang/String;

    return-void
.end method

.method public setSourceSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 0

    .line 982
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-void
.end method

.method public setSourceVersionId(Ljava/lang/String;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceVersionId:Ljava/lang/String;

    return-void
.end method

.method public setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V
    .locals 0

    .line 528
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->storageClass:Ljava/lang/String;

    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->storageClass:Ljava/lang/String;

    return-void
.end method

.method public setUnmodifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    return-void
.end method

.method public withAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0

    .line 616
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V

    return-object p0
.end method

.method public withCannedAccessControlList(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0

    .line 586
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setCannedAccessControlList(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    return-object p0
.end method

.method public withDestinationBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0

    .line 404
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setDestinationBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withDestinationKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0

    .line 443
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setDestinationKey(Ljava/lang/String;)V

    return-object p0
.end method

.method public withDestinationSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0

    .line 1033
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setDestinationSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    return-object p0
.end method

.method public withMatchingETagConstraint(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public withModifiedSinceConstraint(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0

    .line 929
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setModifiedSinceConstraint(Ljava/util/Date;)V

    return-object p0
.end method

.method public withNewObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0

    .line 660
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setNewObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-object p0
.end method

.method public withNewObjectTagging(Lcom/amazonaws/services/s3/model/ObjectTagging;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0

    .line 1158
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setNewObjectTagging(Lcom/amazonaws/services/s3/model/ObjectTagging;)V

    return-object p0
.end method

.method public withNonmatchingETagConstraint(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public withRedirectLocation(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0

    .line 959
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->redirectLocation:Ljava/lang/String;

    return-object p0
.end method

.method public withRequesterPays(Z)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0

    .line 1130
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setRequesterPays(Z)V

    return-object p0
.end method

.method public withSSEAwsKeyManagementParams(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0

    .line 1066
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setSSEAwsKeyManagementParams(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    return-object p0
.end method

.method public withSourceBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0

    .line 241
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setSourceBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withSourceKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0

    .line 280
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setSourceKey(Ljava/lang/String;)V

    return-object p0
.end method

.method public withSourceSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0

    .line 996
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setSourceSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    return-object p0
.end method

.method public withSourceVersionId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0

    .line 364
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setSourceVersionId(Ljava/lang/String;)V

    return-object p0
.end method

.method public withStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0

    .line 547
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V

    return-object p0
.end method

.method public withStorageClass(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0

    .line 507
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setStorageClass(Ljava/lang/String;)V

    return-object p0
.end method

.method public withUnmodifiedSinceConstraint(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0

    .line 862
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setUnmodifiedSinceConstraint(Ljava/util/Date;)V

    return-object p0
.end method
