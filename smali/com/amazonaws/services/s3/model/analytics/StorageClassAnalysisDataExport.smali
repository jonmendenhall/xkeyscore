.class public Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;
.super Ljava/lang/Object;
.source "StorageClassAnalysisDataExport.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private destination:Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;

.field private outputSchemaVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDestination()Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->destination:Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;

    return-object v0
.end method

.method public getOutputSchemaVersion()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->outputSchemaVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setDestination(Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->destination:Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;

    return-void
.end method

.method public setOutputSchemaVersion(Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 32
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->setOutputSchemaVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->setOutputSchemaVersion(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setOutputSchemaVersion(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->outputSchemaVersion:Ljava/lang/String;

    return-void
.end method

.method public withDestination(Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;)Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->setDestination(Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;)V

    return-object p0
.end method

.method public withOutputSchemaVersion(Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;)Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->setOutputSchemaVersion(Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisSchemaVersion;)V

    return-object p0
.end method

.method public withOutputSchemaVersion(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->setOutputSchemaVersion(Ljava/lang/String;)V

    return-object p0
.end method
