.class final Lcom/amazonaws/metrics/ServiceMetricCollector$1;
.super Lcom/amazonaws/metrics/ServiceMetricCollector;
.source "ServiceMetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/metrics/ServiceMetricCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/amazonaws/metrics/ServiceMetricCollector;-><init>()V

    return-void
.end method


# virtual methods
.method public collectByteThroughput(Lcom/amazonaws/metrics/ByteThroughputProvider;)V
    .locals 0

    return-void
.end method

.method public collectLatency(Lcom/amazonaws/metrics/ServiceLatencyProvider;)V
    .locals 0

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
