.class public Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetBucketAnalyticsConfigurationRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private analyticsConfiguration:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

.field private bucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;->bucketName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;->analyticsConfiguration:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    return-void
.end method


# virtual methods
.method public getAnalyticsConfiguration()Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;->analyticsConfiguration:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public setAnalyticsConfiguration(Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;->analyticsConfiguration:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public withAnalyticsConfiguration(Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;->setAnalyticsConfiguration(Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)V

    return-object p0
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method
