.class final Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;
.super Lio/reactivex/internal/observers/QueueDrainObserver;
.source "ObservableBufferBoundary.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableBufferBoundary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferBoundaryObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;Open:",
        "Ljava/lang/Object;",
        "Close:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/QueueDrainObserver<",
        "TT;TU;TU;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final bufferClose:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TOpen;+",
            "Lio/reactivex/ObservableSource<",
            "+TClose;>;>;"
        }
    .end annotation
.end field

.field final bufferOpen:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TOpen;>;"
        }
    .end annotation
.end field

.field final bufferSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field final buffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TU;>;"
        }
    .end annotation
.end field

.field final resources:Lio/reactivex/disposables/CompositeDisposable;

.field s:Lio/reactivex/disposables/Disposable;

.field final windows:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TU;>;",
            "Lio/reactivex/ObservableSource<",
            "+TOpen;>;",
            "Lio/reactivex/functions/Function<",
            "-TOpen;+",
            "Lio/reactivex/ObservableSource<",
            "+TClose;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    .line 73
    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/QueueDrainObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/internal/fuseable/SimplePlainQueue;)V

    .line 67
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 74
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->bufferOpen:Lio/reactivex/ObservableSource;

    .line 75
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->bufferClose:Lio/reactivex/functions/Function;

    .line 76
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->bufferSupplier:Ljava/util/concurrent/Callable;

    .line 77
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->buffers:Ljava/util/List;

    .line 78
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->resources:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Lio/reactivex/Observer;Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->accept(Lio/reactivex/Observer;Ljava/util/Collection;)V

    return-void
.end method

.method public accept(Lio/reactivex/Observer;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TU;>;TU;)V"
        }
    .end annotation

    .line 152
    invoke-interface {p1, p2}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method close(Ljava/util/Collection;Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lio/reactivex/disposables/Disposable;",
            ")V"
        }
    .end annotation

    .line 210
    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->buffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 212
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, p1, v0, p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->fastPathOrderedEmit(Ljava/lang/Object;ZLio/reactivex/disposables/Disposable;)V

    .line 218
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->resources:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1, p2}, Lio/reactivex/disposables/CompositeDisposable;->remove(Lio/reactivex/disposables/Disposable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 219
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_1

    .line 220
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->complete()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 212
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method complete()V
    .locals 3

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->buffers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 125
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->buffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 126
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 130
    invoke-interface {v1, v2}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->done:Z

    .line 133
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->enter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->actual:Lio/reactivex/Observer;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p0, p0}, Lio/reactivex/internal/util/QueueDrainHelper;->drainLoop(Lio/reactivex/internal/fuseable/SimplePlainQueue;Lio/reactivex/Observer;ZLio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/ObservableQueueDrain;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 126
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 1

    .line 140
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->cancelled:Z

    .line 142
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->resources:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->complete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->dispose()V

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->cancelled:Z

    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->buffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 110
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->buffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 99
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 85
    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferOpenObserver;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferOpenObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;)V

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->resources:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->bufferOpen:Lio/reactivex/ObservableSource;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method

.method open(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOpen;)V"
        }
    .end annotation

    .line 156
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 163
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->bufferSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->bufferClose:Lio/reactivex/functions/Function;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The buffer closing Observable is null"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/ObservableSource;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->cancelled:Z

    if-eqz v1, :cond_1

    return-void

    .line 184
    :cond_1
    monitor-enter p0

    .line 185
    :try_start_2
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->cancelled:Z

    if-eqz v1, :cond_2

    .line 186
    monitor-exit p0

    return-void

    .line 188
    :cond_2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->buffers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;

    invoke-direct {v1, v0, p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferCloseObserver;-><init>(Ljava/util/Collection;Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;)V

    .line 192
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->resources:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 194
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 196
    invoke-interface {p1, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void

    :catchall_0
    move-exception p1

    .line 189
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catch_0
    move-exception p1

    .line 175
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 176
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p1

    .line 165
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 166
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method openFinished(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->resources:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->remove(Lio/reactivex/disposables/Disposable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 202
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver;->complete()V

    :cond_0
    return-void
.end method
