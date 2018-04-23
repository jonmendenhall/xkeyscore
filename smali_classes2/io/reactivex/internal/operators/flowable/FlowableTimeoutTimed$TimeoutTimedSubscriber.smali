.class final Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;
.super Ljava/lang/Object;
.source "FlowableTimeoutTimed.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutTimedSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber$TimeoutTask;
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
        "Lio/reactivex/disposables/Disposable;",
        "Lorg/reactivestreams/Subscription;"
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

.field volatile done:Z

.field volatile index:J

.field s:Lorg/reactivestreams/Subscription;

.field final timeout:J

.field timer:Lio/reactivex/disposables/Disposable;

.field final unit:Ljava/util/concurrent/TimeUnit;

.field final worker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;)V
    .locals 0
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

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    .line 191
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->timeout:J

    .line 192
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 193
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 267
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->dispose()V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 251
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 252
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 257
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 240
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->done:Z

    .line 245
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 246
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 228
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 229
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->done:Z

    .line 234
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 235
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

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

    .line 207
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->index:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 211
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->index:J

    .line 213
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 215
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->scheduleTimeout(J)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 198
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->s:Lorg/reactivestreams/Subscription;

    .line 200
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    const-wide/16 v0, 0x0

    .line 201
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->scheduleTimeout(J)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 262
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method

.method scheduleTimeout(J)V
    .locals 3

    .line 219
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->timer:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->timer:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 223
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber$TimeoutTask;

    invoke-direct {v1, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber$TimeoutTask;-><init>(Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;J)V

    iget-wide p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->timeout:J

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p1, p2, v2}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedSubscriber;->timer:Lio/reactivex/disposables/Disposable;

    return-void
.end method
