.class final Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;
.super Ljava/lang/Object;
.source "FlowableTimeoutTimed.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutTimedOtherSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber$TimeoutTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/subscriptions/FullArbiter<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field volatile index:J

.field final other:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;"
        }
    .end annotation
.end field

.field s:Lorg/reactivestreams/Subscription;

.field final timeout:J

.field timer:Lio/reactivex/disposables/Disposable;

.field final unit:Ljava/util/concurrent/TimeUnit;

.field final worker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;Lorg/reactivestreams/Publisher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler$Worker;",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 78
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->timeout:J

    .line 79
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 80
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    .line 81
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->other:Lorg/reactivestreams/Publisher;

    .line 82
    new-instance p2, Lio/reactivex/internal/subscriptions/FullArbiter;

    const/16 p3, 0x8

    invoke-direct {p2, p1, p0, p3}, Lio/reactivex/internal/subscriptions/FullArbiter;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/disposables/Disposable;I)V

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 146
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 135
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->done:Z

    .line 139
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/subscriptions/FullArbiter;->onComplete(Lorg/reactivestreams/Subscription;)V

    .line 140
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 124
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->done:Z

    .line 129
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/subscriptions/FullArbiter;->onError(Ljava/lang/Throwable;Lorg/reactivestreams/Subscription;)V

    .line 130
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {p1}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 99
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->index:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 103
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->index:J

    .line 105
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-virtual {v2, p1, v3}, Lio/reactivex/internal/subscriptions/FullArbiter;->onNext(Ljava/lang/Object;Lorg/reactivestreams/Subscription;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->scheduleTimeout(J)V

    :cond_1
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/subscriptions/FullArbiter;->setSubscription(Lorg/reactivestreams/Subscription;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    const-wide/16 v0, 0x0

    .line 92
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->scheduleTimeout(J)V

    :cond_0
    return-void
.end method

.method scheduleTimeout(J)V
    .locals 3

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->timer:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->timer:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 115
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber$TimeoutTask;

    invoke-direct {v1, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber$TimeoutTask;-><init>(Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;J)V

    iget-wide p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->timeout:J

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p1, p2, v2}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->timer:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method subscribeNext()V
    .locals 3

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->other:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/internal/subscribers/FullArbiterSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->arbiter:Lio/reactivex/internal/subscriptions/FullArbiter;

    invoke-direct {v1, v2}, Lio/reactivex/internal/subscribers/FullArbiterSubscriber;-><init>(Lio/reactivex/internal/subscriptions/FullArbiter;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
