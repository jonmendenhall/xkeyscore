.class public Lcom/amazonaws/util/TimingInfo;
.super Ljava/lang/Object;
.source "TimingInfo.java"


# static fields
.field private static final TIME_CONVERSION:D = 1000.0

.field static final UNKNOWN:I = -0x1


# instance fields
.field private endTimeNano:Ljava/lang/Long;

.field private final startEpochTimeMilli:Ljava/lang/Long;

.field private final startTimeNano:J


# direct methods
.method protected constructor <init>(Ljava/lang/Long;JLjava/lang/Long;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/amazonaws/util/TimingInfo;->startEpochTimeMilli:Ljava/lang/Long;

    .line 158
    iput-wide p2, p0, Lcom/amazonaws/util/TimingInfo;->startTimeNano:J

    .line 159
    iput-object p4, p0, Lcom/amazonaws/util/TimingInfo;->endTimeNano:Ljava/lang/Long;

    return-void
.end method

.method public static durationMilliOf(JJ)D
    .locals 1

    .line 261
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr p2, p0

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p0

    long-to-double p0, p0

    const-wide p2, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static newTimingInfoFullSupport(JJ)Lcom/amazonaws/util/TimingInfo;
    .locals 1

    .line 107
    new-instance v0, Lcom/amazonaws/util/TimingInfoFullSupport;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/amazonaws/util/TimingInfoFullSupport;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method

.method public static newTimingInfoFullSupport(JJJ)Lcom/amazonaws/util/TimingInfo;
    .locals 1

    .line 122
    new-instance v0, Lcom/amazonaws/util/TimingInfoFullSupport;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 123
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/amazonaws/util/TimingInfoFullSupport;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method

.method public static startTiming()Lcom/amazonaws/util/TimingInfo;
    .locals 5

    .line 73
    new-instance v0, Lcom/amazonaws/util/TimingInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazonaws/util/TimingInfo;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method

.method public static startTimingFullSupport()Lcom/amazonaws/util/TimingInfo;
    .locals 5

    .line 83
    new-instance v0, Lcom/amazonaws/util/TimingInfoFullSupport;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 84
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazonaws/util/TimingInfoFullSupport;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method

.method public static startTimingFullSupport(J)Lcom/amazonaws/util/TimingInfo;
    .locals 2

    .line 95
    new-instance v0, Lcom/amazonaws/util/TimingInfoFullSupport;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, v1}, Lcom/amazonaws/util/TimingInfoFullSupport;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method

.method public static unmodifiableTimingInfo(JJLjava/lang/Long;)Lcom/amazonaws/util/TimingInfo;
    .locals 1

    .line 145
    new-instance v0, Lcom/amazonaws/util/TimingInfoUnmodifiable;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/amazonaws/util/TimingInfoUnmodifiable;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method

.method public static unmodifiableTimingInfo(JLjava/lang/Long;)Lcom/amazonaws/util/TimingInfo;
    .locals 2

    .line 133
    new-instance v0, Lcom/amazonaws/util/TimingInfoUnmodifiable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/amazonaws/util/TimingInfoUnmodifiable;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public addSubMeasurement(Ljava/lang/String;Lcom/amazonaws/util/TimingInfo;)V
    .locals 0

    return-void
.end method

.method public endTiming()Lcom/amazonaws/util/TimingInfo;
    .locals 2

    .line 311
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/TimingInfo;->endTimeNano:Ljava/lang/Long;

    return-object p0
.end method

.method public getAllCounters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 374
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllSubMeasurements(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/util/TimingInfo;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCounter(Ljava/lang/String;)Ljava/lang/Number;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getElapsedTimeMillis()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->getTimeTakenMillisIfKnown()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getEndEpochTimeMilli()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->getEndEpochTimeMilliIfKnown()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getEndEpochTimeMilliIfKnown()Ljava/lang/Long;
    .locals 7

    .line 215
    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->isStartEpochTimeMilliKnown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->isEndTimeKnown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->startEpochTimeMilli:Ljava/lang/Long;

    .line 217
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/amazonaws/util/TimingInfo;->endTimeNano:Ljava/lang/Long;

    .line 218
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/amazonaws/util/TimingInfo;->startTimeNano:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 217
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getEndTime()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->getEndEpochTimeMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getEndTimeNano()J
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->endTimeNano:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->endTimeNano:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getEndTimeNanoIfKnown()Ljava/lang/Long;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->endTimeNano:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastSubMeasurement(Ljava/lang/String;)Lcom/amazonaws/util/TimingInfo;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getStartEpochTimeMilli()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->getStartEpochTimeMilliIfKnown()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getStartEpochTimeMilliIfKnown()Ljava/lang/Long;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->startEpochTimeMilli:Ljava/lang/Long;

    return-object v0
.end method

.method public final getStartTime()J
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->isStartEpochTimeMilliKnown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->startEpochTimeMilli:Ljava/lang/Long;

    .line 165
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/amazonaws/util/TimingInfo;->startTimeNano:J

    .line 167
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getStartTimeNano()J
    .locals 2

    .line 191
    iget-wide v0, p0, Lcom/amazonaws/util/TimingInfo;->startTimeNano:J

    return-wide v0
.end method

.method public getSubMeasurement(Ljava/lang/String;)Lcom/amazonaws/util/TimingInfo;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubMeasurement(Ljava/lang/String;I)Lcom/amazonaws/util/TimingInfo;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubMeasurementsByName()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazonaws/util/TimingInfo;",
            ">;>;"
        }
    .end annotation

    .line 359
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getTimeTakenMillis()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->getTimeTakenMillisIfKnown()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getTimeTakenMillisIfKnown()Ljava/lang/Double;
    .locals 4

    .line 249
    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->isEndTimeKnown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amazonaws/util/TimingInfo;->startTimeNano:J

    iget-object v2, p0, Lcom/amazonaws/util/TimingInfo;->endTimeNano:Ljava/lang/Long;

    .line 250
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/amazonaws/util/TimingInfo;->durationMilliOf(JJ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public incrementCounter(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final isEndTimeKnown()Z
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->endTimeNano:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isStartEpochTimeMilliKnown()Z
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->startEpochTimeMilli:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCounter(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public setEndTime(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/util/TimingInfo;->endTimeNano:Ljava/lang/Long;

    return-void
.end method

.method public setEndTimeNano(J)V
    .locals 0

    .line 304
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/util/TimingInfo;->endTimeNano:Ljava/lang/Long;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 292
    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->getTimeTakenMillis()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
