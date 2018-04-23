.class public final Lio/reactivex/processors/AsyncProcessor;
.super Lio/reactivex/processors/FlowableProcessor;
.source "AsyncProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/processors/FlowableProcessor<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

.field static final TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;


# instance fields
.field error:Ljava/lang/Throwable;

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 35
    new-array v1, v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    sput-object v1, Lio/reactivex/processors/AsyncProcessor;->EMPTY:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 38
    new-array v0, v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    sput-object v0, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Lio/reactivex/processors/FlowableProcessor;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->EMPTY:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static create()Lio/reactivex/processors/AsyncProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/AsyncProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 56
    new-instance v0, Lio/reactivex/processors/AsyncProcessor;

    invoke-direct {v0}, Lio/reactivex/processors/AsyncProcessor;-><init>()V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<",
            "TT;>;)Z"
        }
    .end annotation

    .line 187
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 188
    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 192
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 194
    new-array v3, v3, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 195
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    aput-object p1, v3, v1

    .line 198
    iget-object v1, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .line 153
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 3

    .line 268
    invoke-virtual {p0}, Lio/reactivex/processors/AsyncProcessor;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 269
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    goto :goto_0

    :cond_0
    new-array v2, v1, [Ljava/lang/Object;

    :goto_0
    return-object v2
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 281
    invoke-virtual {p0}, Lio/reactivex/processors/AsyncProcessor;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 283
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 284
    aput-object v1, p1, v2

    :cond_0
    return-object p1

    .line 288
    :cond_1
    array-length v3, p1

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 289
    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 291
    :cond_2
    aput-object v0, p1, v2

    .line 292
    array-length v0, p1

    if-eq v0, v4, :cond_3

    .line 293
    aput-object v1, p1, v4

    :cond_3
    return-object p1
.end method

.method public hasComplete()Z
    .locals 2

    .line 148
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSubscribers()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasThrowable()Z
    .locals 2

    .line 143
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValue()Z
    .locals 2

    .line 250
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method nullOnNext()V
    .locals 5

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 94
    iput-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

    .line 95
    iget-object v1, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 96
    invoke-virtual {v4, v0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 120
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    .line 124
    iget-object v1, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 126
    array-length v0, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, v1, v2

    .line 127
    invoke-virtual {v3}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->onComplete()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_1
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 131
    invoke-virtual {v4, v0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->complete(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    if-nez p1, :cond_0

    .line 104
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_1

    .line 107
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    .line 111
    iput-object p1, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

    .line 112
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 113
    invoke-virtual {v3, p1}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 84
    invoke-virtual {p0}, Lio/reactivex/processors/AsyncProcessor;->nullOnNext()V

    return-void

    .line 87
    :cond_1
    iput-object p1, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    .line 71
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 75
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method

.method remove(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 211
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 212
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    .line 219
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 232
    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->EMPTY:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 234
    new-array v5, v5, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 235
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 236
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 238
    :goto_2
    iget-object v2, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 158
    new-instance v0, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    invoke-direct {v0, p1, p0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/AsyncProcessor;)V

    .line 159
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 160
    invoke-virtual {p0, v0}, Lio/reactivex/processors/AsyncProcessor;->add(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 162
    invoke-virtual {p0, v0}, Lio/reactivex/processors/AsyncProcessor;->remove(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v1, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 167
    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object p1, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 171
    invoke-virtual {v0, p1}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->complete(Ljava/lang/Object;)V

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {v0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->onComplete()V

    :cond_3
    :goto_0
    return-void
.end method
