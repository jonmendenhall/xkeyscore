.class public Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;
.super Ljava/lang/Object;
.source "ListBucketMetricsConfigurationsResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private continuationToken:Ljava/lang/String;

.field private isTruncated:Z

.field private metricsConfigurationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private nextContinuationToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContinuationToken()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->continuationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricsConfigurationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->metricsConfigurationList:Ljava/util/List;

    return-object v0
.end method

.method public getNextContinuationToken()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->nextContinuationToken:Ljava/lang/String;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->isTruncated:Z

    return v0
.end method

.method public setContinuationToken(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->continuationToken:Ljava/lang/String;

    return-void
.end method

.method public setMetricsConfigurationList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->metricsConfigurationList:Ljava/util/List;

    return-void
.end method

.method public setNextContinuationToken(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->nextContinuationToken:Ljava/lang/String;

    return-void
.end method

.method public setTruncated(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->isTruncated:Z

    return-void
.end method

.method public withContinuationToken(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->setContinuationToken(Ljava/lang/String;)V

    return-object p0
.end method

.method public withMetricsConfigurationList(Ljava/util/List;)Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;"
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->setMetricsConfigurationList(Ljava/util/List;)V

    return-object p0
.end method

.method public withNextContinuationToken(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->setNextContinuationToken(Ljava/lang/String;)V

    return-object p0
.end method

.method public withTruncated(Z)Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->setTruncated(Z)V

    return-object p0
.end method
