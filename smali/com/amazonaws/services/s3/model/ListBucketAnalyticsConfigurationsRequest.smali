.class public Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListBucketAnalyticsConfigurationsRequest.java"

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
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getContinuationToken()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;->continuationToken:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setContinuationToken(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;->continuationToken:Ljava/lang/String;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withContinuationToken(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;->setContinuationToken(Ljava/lang/String;)V

    return-object p0
.end method
