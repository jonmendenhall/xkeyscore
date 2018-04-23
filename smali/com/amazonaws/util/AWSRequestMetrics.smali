.class public Lcom/amazonaws/util/AWSRequestMetrics;
.super Ljava/lang/Object;
.source "AWSRequestMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/AWSRequestMetrics$Field;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final timingInfo:Lcom/amazonaws/util/TimingInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-static {}, Lcom/amazonaws/util/TimingInfo;->startTiming()Lcom/amazonaws/util/TimingInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/util/TimingInfo;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    return-void
.end method


# virtual methods
.method public addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public endEvent(Lcom/amazonaws/metrics/MetricType;)V
    .locals 0

    return-void
.end method

.method public endEvent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getProperty(Lcom/amazonaws/metrics/MetricType;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/metrics/MetricType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getTimingInfo()Lcom/amazonaws/util/TimingInfo;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    return-object v0
.end method

.method public incrementCounter(Lcom/amazonaws/metrics/MetricType;)V
    .locals 0

    return-void
.end method

.method public incrementCounter(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public log()V
    .locals 0

    return-void
.end method

.method public setCounter(Lcom/amazonaws/metrics/MetricType;J)V
    .locals 0

    return-void
.end method

.method public setCounter(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public startEvent(Lcom/amazonaws/metrics/MetricType;)V
    .locals 0

    return-void
.end method

.method public startEvent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
