.class public Lcom/amazonaws/metrics/ServiceLatencyProvider;
.super Ljava/lang/Object;
.source "ServiceLatencyProvider.java"


# instance fields
.field private endNano:J

.field private final serviceMetricType:Lcom/amazonaws/metrics/ServiceMetricType;

.field private final startNano:J


# direct methods
.method public constructor <init>(Lcom/amazonaws/metrics/ServiceMetricType;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->startNano:J

    .line 27
    iget-wide v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->startNano:J

    iput-wide v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->endNano:J

    .line 35
    iput-object p1, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->serviceMetricType:Lcom/amazonaws/metrics/ServiceMetricType;

    return-void
.end method


# virtual methods
.method public endTiming()Lcom/amazonaws/metrics/ServiceLatencyProvider;
    .locals 4

    .line 51
    iget-wide v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->endNano:J

    iget-wide v2, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->startNano:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 54
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->endNano:J

    return-object p0
.end method

.method public getDurationMilli()D
    .locals 4

    .line 62
    iget-wide v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->endNano:J

    iget-wide v2, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->startNano:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    const-string v1, "Likely to be a missing invocation of endTiming()."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 66
    :cond_0
    iget-wide v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->startNano:J

    iget-wide v2, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->endNano:J

    invoke-static {v0, v1, v2, v3}, Lcom/amazonaws/util/TimingInfo;->durationMilliOf(JJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceMetricType()Lcom/amazonaws/metrics/ServiceMetricType;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->serviceMetricType:Lcom/amazonaws/metrics/ServiceMetricType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "providerId=%s, serviceMetricType=%s, startNano=%d, endNano=%d"

    const/4 v1, 0x4

    .line 78
    new-array v1, v1, [Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Lcom/amazonaws/metrics/ServiceLatencyProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->serviceMetricType:Lcom/amazonaws/metrics/ServiceMetricType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->startNano:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->endNano:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 78
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
