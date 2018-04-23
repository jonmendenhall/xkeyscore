.class public Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;
.super Ljava/lang/Object;
.source "GetBucketAnalyticsConfigurationResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private analyticsConfiguration:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnalyticsConfiguration()Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;->analyticsConfiguration:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    return-object v0
.end method

.method public setAnalyticsConfiguration(Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;->analyticsConfiguration:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    return-void
.end method

.method public withAnalyticsConfiguration(Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;->setAnalyticsConfiguration(Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)V

    return-object p0
.end method
