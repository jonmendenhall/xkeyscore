.class public Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListBucketInventoryConfigurationsRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private continuationToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getContinuationToken()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;->continuationToken:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setContinuationToken(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;->continuationToken:Ljava/lang/String;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withContinuationToken(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;->setContinuationToken(Ljava/lang/String;)V

    return-object p0
.end method
