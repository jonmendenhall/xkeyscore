.class public Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;
.super Ljava/lang/Object;
.source "AnalyticsExportDestination.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private s3BucketDestination:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getS3BucketDestination()Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;->s3BucketDestination:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    return-object v0
.end method

.method public setS3BucketDestination(Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;->s3BucketDestination:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    return-void
.end method

.method public withS3BucketDestination(Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;)Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;->setS3BucketDestination(Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;)V

    return-object p0
.end method
