.class public final Lio/reactivex/internal/operators/parallel/ParallelRunOn;
.super Lio/reactivex/parallel/ParallelFlowable;
.source "ParallelRunOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;,
        Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;,
        Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/parallel/ParallelFlowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final prefetch:I

.field final scheduler:Lio/reactivex/Scheduler;

.field final source:Lio/reactivex/parallel/ParallelFlowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/parallel/ParallelFlowable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/Scheduler;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/ParallelFlowable<",
            "+TT;>;",
            "Lio/reactivex/Scheduler;",
            "I)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lio/reactivex/parallel/ParallelFlowable;-><init>()V

    .line 44
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->source:Lio/reactivex/parallel/ParallelFlowable;

    .line 45
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->scheduler:Lio/reactivex/Scheduler;

    .line 46
    iput p3, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->prefetch:I

    return-void
.end method


# virtual methods
.method public parallelism()I
    .locals 1

    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->source:Lio/reactivex/parallel/ParallelFlowable;

    invoke-virtual {v0}, Lio/reactivex/parallel/ParallelFlowable;->parallelism()I

    move-result v0

    return v0
.end method

.method public subscribe([Lorg/reactivestreams/Subscriber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->validate([Lorg/reactivestreams/Subscriber;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    array-length v0, p1

    .line 58
    new-array v1, v0, [Lorg/reactivestreams/Subscriber;

    .line 60
    iget v2, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->prefetch:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 63
    aget-object v4, p1, v3

    .line 65
    iget-object v5, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->scheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v5}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object v5

    .line 66
    new-instance v6, Lio/reactivex/internal/queue/SpscArrayQueue;

    invoke-direct {v6, v2}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    .line 68
    instance-of v7, v4, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    if-eqz v7, :cond_1

    .line 69
    new-instance v7, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;

    check-cast v4, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-direct {v7, v4, v2, v6, v5}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;ILio/reactivex/internal/queue/SpscArrayQueue;Lio/reactivex/Scheduler$Worker;)V

    aput-object v7, v1, v3

    goto :goto_1

    .line 71
    :cond_1
    new-instance v7, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;

    invoke-direct {v7, v4, v2, v6, v5}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber;-><init>(Lorg/reactivestreams/Subscriber;ILio/reactivex/internal/queue/SpscArrayQueue;Lio/reactivex/Scheduler$Worker;)V

    aput-object v7, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->source:Lio/reactivex/parallel/ParallelFlowable;

    invoke-virtual {p1, v1}, Lio/reactivex/parallel/ParallelFlowable;->subscribe([Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
