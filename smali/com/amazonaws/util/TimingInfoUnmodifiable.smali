.class final Lcom/amazonaws/util/TimingInfoUnmodifiable;
.super Lcom/amazonaws/util/TimingInfo;
.source "TimingInfoUnmodifiable.java"


# direct methods
.method constructor <init>(Ljava/lang/Long;JLjava/lang/Long;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/util/TimingInfo;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public endTiming()Lcom/amazonaws/util/TimingInfo;
    .locals 1

    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setEndTime(J)V
    .locals 0

    .line 40
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setEndTimeNano(J)V
    .locals 0

    .line 48
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
