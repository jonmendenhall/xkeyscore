.class final Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "FlowableThrottleFirstTimed.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DebounceTimedSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7e5310a1f6e139dcL


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field volatile gate:Z

.field s:Lorg/reactivestreams/Subscription;

.field final timeout:J

.field final timer:Lio/reactivex/internal/disposables/SequentialDisposable;

.field final unit:Ljava/util/concurrent/TimeUnit;

.field final worker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 62
    new-instance v0, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->timer:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 69
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 70
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->timeout:J

    .line 71
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 72
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 150
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 132
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->done:Z

    .line 136
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 137
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 121
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->done:Z

    .line 126
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 127
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {p1}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 86
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->gate:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->gate:Z

    .line 92
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v0, 0x1

    .line 95
    invoke-static {p0, v0, v1}, Lio/reactivex/internal/util/BackpressureHelper;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 103
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->timer:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_1

    .line 105
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 108
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->timer:Lio/reactivex/internal/disposables/SequentialDisposable;

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->timeout:J

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, v1, v2, v3}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_0

    .line 97
    :cond_2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->done:Z

    .line 98
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->cancel()V

    .line 99
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v1, "Could not deliver value due to lack of requests"

    invoke-direct {v0, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 80
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 142
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->gate:Z

    return-void
.end method