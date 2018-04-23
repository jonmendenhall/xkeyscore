.class public Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListNextBatchOfObjectsRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private previousObjectListing:Lcom/amazonaws/services/s3/model/ObjectListing;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/ObjectListing;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->setPreviousObjectListing(Lcom/amazonaws/services/s3/model/ObjectListing;)V

    return-void
.end method


# virtual methods
.method public getPreviousObjectListing()Lcom/amazonaws/services/s3/model/ObjectListing;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->previousObjectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    return-object v0
.end method

.method public setPreviousObjectListing(Lcom/amazonaws/services/s3/model/ObjectListing;)V
    .locals 1

    if-nez p1, :cond_0

    .line 52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The parameter previousObjectListing must be specified."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->previousObjectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    return-void
.end method

.method public toListObjectsRequest()Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .locals 7

    .line 75
    new-instance v6, Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->previousObjectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->getBucketName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->previousObjectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    .line 76
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->getPrefix()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->previousObjectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    .line 77
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->getNextMarker()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->previousObjectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    .line 78
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->getDelimiter()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->previousObjectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    .line 79
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->getMaxKeys()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->previousObjectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    .line 80
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->getEncodingType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->withEncodingType(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    move-result-object v0

    return-object v0
.end method

.method public withPreviousObjectListing(Lcom/amazonaws/services/s3/model/ObjectListing;)Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;->setPreviousObjectListing(Lcom/amazonaws/services/s3/model/ObjectListing;)V

    return-object p0
.end method
