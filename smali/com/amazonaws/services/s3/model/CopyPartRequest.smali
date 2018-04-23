.class public Lcom/amazonaws/services/s3/model/CopyPartRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CopyPartRequest.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/amazonaws/services/s3/model/S3AccelerateUnsupported;


# instance fields
.field private destinationBucketName:Ljava/lang/String;

.field private destinationKey:Ljava/lang/String;

.field private destinationSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private firstByte:Ljava/lang/Long;

.field private lastByte:Ljava/lang/Long;

.field private final matchingETagConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private modifiedSinceConstraint:Ljava/util/Date;

.field private final nonmatchingEtagConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private partNumber:I

.field private sourceBucketName:Ljava/lang/String;

.field private sourceKey:Ljava/lang/String;

.field private sourceSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private sourceVersionId:Ljava/lang/String;

.field private unmodifiedSinceConstraint:Ljava/util/Date;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->matchingETagConstraints:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDestinationBucketName()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->destinationBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationKey()Ljava/lang/String;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->destinationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->destinationSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public getFirstByte()Ljava/lang/Long;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->firstByte:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastByte()Ljava/lang/Long;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->lastByte:Ljava/lang/Long;

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

    .line 530
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->matchingETagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getModifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->modifiedSinceConstraint:Ljava/util/Date;

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

    .line 605
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->partNumber:I

    return v0
.end method

.method public getSourceBucketName()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceKey()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public getSourceVersionId()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceVersionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUnmodifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setDestinationBucketName(Ljava/lang/String;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->destinationBucketName:Ljava/lang/String;

    return-void
.end method

.method public setDestinationKey(Ljava/lang/String;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->destinationKey:Ljava/lang/String;

    return-void
.end method

.method public setDestinationSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->destinationSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-void
.end method

.method public setFirstByte(Ljava/lang/Long;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->firstByte:Ljava/lang/Long;

    return-void
.end method

.method public setLastByte(Ljava/lang/Long;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->lastByte:Ljava/lang/Long;

    return-void
.end method

.method public setMatchingETagConstraints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 553
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setModifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->modifiedSinceConstraint:Ljava/util/Date;

    return-void
.end method

.method public setNonmatchingETagConstraints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 627
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setPartNumber(I)V
    .locals 0

    .line 197
    iput p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->partNumber:I

    return-void
.end method

.method public setSourceBucketName(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceBucketName:Ljava/lang/String;

    return-void
.end method

.method public setSourceKey(Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceKey:Ljava/lang/String;

    return-void
.end method

.method public setSourceSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 0

    .line 815
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceSSECustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-void
.end method

.method public setSourceVersionId(Ljava/lang/String;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceVersionId:Ljava/lang/String;

    return-void
.end method

.method public setUnmodifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->uploadId:Ljava/lang/String;

    return-void
.end method

.method public withDestinationBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0

    .line 409
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setDestinationBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withDestinationKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0

    .line 448
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setDestinationKey(Ljava/lang/String;)V

    return-object p0
.end method

.method public withDestinationSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0

    .line 866
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setDestinationSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    return-object p0
.end method

.method public withFirstByte(Ljava/lang/Long;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->firstByte:Ljava/lang/Long;

    return-object p0
.end method

.method public withLastByte(Ljava/lang/Long;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->lastByte:Ljava/lang/Long;

    return-object p0
.end method

.method public withMatchingETagConstraint(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public withMatchingETagConstraints(Ljava/util/List;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/CopyPartRequest;"
        }
    .end annotation

    .line 560
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setMatchingETagConstraints(Ljava/util/List;)V

    return-object p0
.end method

.method public withModifiedSinceConstraint(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0

    .line 792
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setModifiedSinceConstraint(Ljava/util/Date;)V

    return-object p0
.end method

.method public withNonmatchingETagConstraint(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public withNonmatchingETagConstraints(Ljava/util/List;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/CopyPartRequest;"
        }
    .end annotation

    .line 634
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setNonmatchingETagConstraints(Ljava/util/List;)V

    return-object p0
.end method

.method public withPartNumber(I)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0

    .line 212
    iput p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->partNumber:I

    return-object p0
.end method

.method public withSourceBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceBucketName:Ljava/lang/String;

    return-object p0
.end method

.method public withSourceKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceKey:Ljava/lang/String;

    return-object p0
.end method

.method public withSourceSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0

    .line 829
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setSourceSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    return-object p0
.end method

.method public withSourceVersionId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceVersionId:Ljava/lang/String;

    return-object p0
.end method

.method public withUnmodifiedSinceConstraint(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0

    .line 725
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setUnmodifiedSinceConstraint(Ljava/util/Date;)V

    return-object p0
.end method

.method public withUploadId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->uploadId:Ljava/lang/String;

    return-object p0
.end method
