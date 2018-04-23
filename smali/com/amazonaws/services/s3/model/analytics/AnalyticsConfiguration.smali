.class public Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;
.super Ljava/lang/Object;
.source "AnalyticsConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private filter:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

.field private id:Ljava/lang/String;

.field private storageClassAnalysis:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilter()Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->filter:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageClassAnalysis()Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->storageClassAnalysis:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;

    return-object v0
.end method

.method public setFilter(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->filter:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->id:Ljava/lang/String;

    return-void
.end method

.method public setStorageClassAnalysis(Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->storageClassAnalysis:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;

    return-void
.end method

.method public withFilter(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;)Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->setFilter(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;)V

    return-object p0
.end method

.method public withId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->setId(Ljava/lang/String;)V

    return-object p0
.end method

.method public withStorageClassAnalysis(Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;)Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->setStorageClassAnalysis(Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;)V

    return-object p0
.end method
