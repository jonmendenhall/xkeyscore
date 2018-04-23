.class public Lcom/intermedia/initializers/TrueTimeInitializer;
.super Ljava/lang/Object;
.source "TrueTimeInitializer.java"

# interfaces
.implements Lcom/intermedia/initializers/AppInitializer;


# annotations
.annotation runtime Lcom/intermedia/injection/ApplicationScope;
.end annotation


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private disposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/intermedia/initializers/TrueTimeInitializer;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method final synthetic lambda$run$0$TrueTimeInitializer(Lio/reactivex/CompletableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    invoke-static {}, Lcom/instacart/library/truetime/TrueTime;->build()Lcom/instacart/library/truetime/TrueTime;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/initializers/TrueTimeInitializer;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/instacart/library/truetime/TrueTime;->withSharedPreferences(Landroid/content/Context;)Lcom/instacart/library/truetime/TrueTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instacart/library/truetime/TrueTime;->initialize()V

    .line 33
    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    return-void
.end method

.method final synthetic lambda$run$1$TrueTimeInitializer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/intermedia/initializers/TrueTimeInitializer;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method final synthetic lambda$run$2$TrueTimeInitializer(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/intermedia/initializers/TrueTimeInitializer;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public run()V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/intermedia/initializers/TrueTimeInitializer;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/instacart/library/truetime/TrueTime;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/intermedia/initializers/TrueTimeInitializer$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/intermedia/initializers/TrueTimeInitializer$$Lambda$0;-><init>(Lcom/intermedia/initializers/TrueTimeInitializer;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    .line 35
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 36
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/initializers/TrueTimeInitializer$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/intermedia/initializers/TrueTimeInitializer$$Lambda$1;-><init>(Lcom/intermedia/initializers/TrueTimeInitializer;)V

    new-instance v2, Lcom/intermedia/initializers/TrueTimeInitializer$$Lambda$2;

    invoke-direct {v2, p0}, Lcom/intermedia/initializers/TrueTimeInitializer$$Lambda$2;-><init>(Lcom/intermedia/initializers/TrueTimeInitializer;)V

    .line 37
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/initializers/TrueTimeInitializer;->disposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method
