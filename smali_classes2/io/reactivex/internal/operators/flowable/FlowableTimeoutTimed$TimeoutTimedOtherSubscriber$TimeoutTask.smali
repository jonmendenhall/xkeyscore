.class final Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber$TimeoutTask;
.super Ljava/lang/Object;
.source "FlowableTimeoutTimed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TimeoutTask"
.end annotation


# instance fields
.field private final idx:J

.field final synthetic this$0:Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;J)V
    .locals 0

    .line 157
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber$TimeoutTask;->this$0:Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber$TimeoutTask;->idx:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 163
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber$TimeoutTask;->idx:J

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber$TimeoutTask;->this$0:Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;

    iget-wide v2, v2, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->index:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber$TimeoutTask;->this$0:Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->done:Z

    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber$TimeoutTask;->this$0:Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 166
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber$TimeoutTask;->this$0:Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 168
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber$TimeoutTask;->this$0:Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTimedOtherSubscriber;->subscribeNext()V

    :cond_0
    return-void
.end method
