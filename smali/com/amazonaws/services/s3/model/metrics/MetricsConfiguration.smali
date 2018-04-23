.class public Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;
.super Ljava/lang/Object;
.source "MetricsConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private filter:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilter()Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->filter:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setFilter(Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->filter:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->id:Ljava/lang/String;

    return-void
.end method

.method public withFilter(Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;)Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->setFilter(Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;)V

    return-object p0
.end method

.method public withId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->setId(Ljava/lang/String;)V

    return-object p0
.end method
