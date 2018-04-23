.class public Lcom/amazonaws/services/s3/model/GetObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetObjectRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/SSECustomerKeyProvider;
.implements Ljava/io/Serializable;


# instance fields
.field private generalProgressListener:Lcom/amazonaws/event/ProgressListener;

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

.field private nonmatchingEtagConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private partNumber:Ljava/lang/Integer;

.field private range:[J

.field private responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

.field private s3ObjectIdBuilder:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

.field private sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private unmodifiedSinceConstraint:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/S3ObjectId;)V
    .locals 1

    .line 155
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 60
    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->s3ObjectIdBuilder:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    .line 156
    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;-><init>(Lcom/amazonaws/services/s3/model/S3ObjectId;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->s3ObjectIdBuilder:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 149
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 60
    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->s3ObjectIdBuilder:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    .line 150
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setBucketName(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setKey(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setVersionId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 176
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 60
    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->s3ObjectIdBuilder:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    .line 177
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->s3ObjectIdBuilder:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    .line 178
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->withBucket(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    move-result-object p1

    .line 179
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    .line 181
    iput-boolean p3, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->isRequesterPays:Z

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->s3ObjectIdBuilder:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->getBucket()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->s3ObjectIdBuilder:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->getKey()Ljava/lang/String;

    move-result-object v0

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

    .line 519
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getModifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->modifiedSinceConstraint:Ljava/util/Date;

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

    .line 581
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getPartNumber()Ljava/lang/Integer;
    .locals 1

    .line 981
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->partNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getProgressListener()Lcom/amazonaws/services/s3/model/ProgressListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 810
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    instance-of v0, v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    check-cast v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;->unwrap()Lcom/amazonaws/services/s3/model/ProgressListener;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRange()[J
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->range:[J

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->range:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    :goto_0
    return-object v0
.end method

.method public getResponseHeaders()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    return-object v0
.end method

.method public getS3ObjectId()Lcom/amazonaws/services/s3/model/S3ObjectId;
    .locals 1

    .line 1035
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->s3ObjectIdBuilder:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->build()Lcom/amazonaws/services/s3/model/S3ObjectId;

    move-result-object v0

    return-object v0
.end method

.method public getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public getUnmodifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->s3ObjectIdBuilder:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->getVersionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRequesterPays()Z
    .locals 1

    .line 888
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->isRequesterPays:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->s3ObjectIdBuilder:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->setBucket(Ljava/lang/String;)V

    return-void
.end method

.method public setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->s3ObjectIdBuilder:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->setKey(Ljava/lang/String;)V

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

    .line 538
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    return-void
.end method

.method public setModifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->modifiedSinceConstraint:Ljava/util/Date;

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

    .line 600
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    return-void
.end method

.method public setPartNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 1002
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->partNumber:Ljava/lang/Integer;

    return-void
.end method

.method public setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 796
    new-instance v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;-><init>(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V

    return-void
.end method

.method public setRange(J)V
    .locals 2

    const-wide v0, 0x7ffffffffffffffeL

    .line 438
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setRange(JJ)V

    return-void
.end method

.method public setRange(JJ)V
    .locals 2

    const/4 v0, 0x2

    .line 413
    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 p1, 0x1

    aput-wide p3, v0, p1

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->range:[J

    return-void
.end method

.method public setRequesterPays(Z)V
    .locals 0

    .line 908
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->isRequesterPays:Z

    return-void
.end method

.method public setResponseHeaders(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    return-void
.end method

.method public setS3ObjectId(Lcom/amazonaws/services/s3/model/S3ObjectId;)V
    .locals 1

    .line 1042
    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;-><init>(Lcom/amazonaws/services/s3/model/S3ObjectId;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->s3ObjectIdBuilder:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    return-void
.end method

.method public setSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 0

    .line 950
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-void
.end method

.method public setUnmodifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->s3ObjectIdBuilder:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->setVersionId(Ljava/lang/String;)V

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0

    .line 224
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic withGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->withGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/services/s3/model/GetObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public withGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0

    .line 867
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V

    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0

    .line 268
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setKey(Ljava/lang/String;)V

    return-object p0
.end method

.method public withMatchingETagConstraint(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public withModifiedSinceConstraint(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0

    .line 747
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setModifiedSinceConstraint(Ljava/util/Date;)V

    return-object p0
.end method

.method public withNonmatchingETagConstraint(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public withPartNumber(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0

    .line 1026
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setPartNumber(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public withProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 833
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    return-object p0
.end method

.method public withRange(J)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0

    .line 501
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setRange(J)V

    return-object p0
.end method

.method public withRange(JJ)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0

    .line 470
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setRange(JJ)V

    return-object p0
.end method

.method public withRequesterPays(Z)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0

    .line 932
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setRequesterPays(Z)V

    return-object p0
.end method

.method public withResponseHeaders(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0

    .line 780
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setResponseHeaders(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    return-object p0
.end method

.method public withS3ObjectId(Lcom/amazonaws/services/s3/model/S3ObjectId;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0

    .line 1049
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setS3ObjectId(Lcom/amazonaws/services/s3/model/S3ObjectId;)V

    return-object p0
.end method

.method public withSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0

    .line 966
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    return-object p0
.end method

.method public withUnmodifiedSinceConstraint(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0

    .line 686
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setUnmodifiedSinceConstraint(Ljava/util/Date;)V

    return-object p0
.end method

.method public withVersionId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0

    .line 356
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setVersionId(Ljava/lang/String;)V

    return-object p0
.end method
