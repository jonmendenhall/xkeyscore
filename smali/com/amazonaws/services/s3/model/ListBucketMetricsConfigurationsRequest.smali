.class public Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListBucketMetricsConfigurationsRequest.java"

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

    .line 39
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getContinuationToken()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;->continuationToken:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setContinuationToken(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;->continuationToken:Ljava/lang/String;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withContinuationToken(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;->setContinuationToken(Ljava/lang/String;)V

    return-object p0
.end method
