.class final Lcom/amazonaws/metrics/MetricCollector$1;
.super Lcom/amazonaws/metrics/MetricCollector;
.source "MetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/metrics/MetricCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/amazonaws/metrics/MetricCollector;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 1

    .line 80
    sget-object v0, Lcom/amazonaws/metrics/RequestMetricCollector;->NONE:Lcom/amazonaws/metrics/RequestMetricCollector;

    return-object v0
.end method

.method public getServiceMetricCollector()Lcom/amazonaws/metrics/ServiceMetricCollector;
    .locals 1

    .line 85
    sget-object v0, Lcom/amazonaws/metrics/ServiceMetricCollector;->NONE:Lcom/amazonaws/metrics/ServiceMetricCollector;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public start()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
