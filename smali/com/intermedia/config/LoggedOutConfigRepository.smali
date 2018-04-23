.class public Lcom/intermedia/config/LoggedOutConfigRepository;
.super Ljava/lang/Object;
.source "LoggedOutConfigRepository.java"


# annotations
.annotation runtime Lcom/intermedia/injection/ApplicationScope;
.end annotation


# instance fields
.field private final behaviorProcessor:Lio/reactivex/processors/BehaviorProcessor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/BehaviorProcessor<",
            "Lcom/intermedia/model/config/LoggedOutConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final gson:Lcom/google/gson/Gson;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final sharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)V
    .locals 0
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/Gson;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/intermedia/config/LoggedOutConfigRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 33
    iput-object p2, p0, Lcom/intermedia/config/LoggedOutConfigRepository;->gson:Lcom/google/gson/Gson;

    .line 34
    invoke-static {}, Lio/reactivex/processors/BehaviorProcessor;->create()Lio/reactivex/processors/BehaviorProcessor;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/config/LoggedOutConfigRepository;->behaviorProcessor:Lio/reactivex/processors/BehaviorProcessor;

    .line 36
    new-instance p1, Lcom/intermedia/config/LoggedOutConfigRepository$$Lambda$0;

    invoke-direct {p1, p0}, Lcom/intermedia/config/LoggedOutConfigRepository$$Lambda$0;-><init>(Lcom/intermedia/config/LoggedOutConfigRepository;)V

    invoke-static {p1}, Lio/reactivex/Maybe;->create(Lio/reactivex/MaybeOnSubscribe;)Lio/reactivex/Maybe;

    move-result-object p1

    .line 42
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Maybe;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Maybe;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object p1

    iget-object p2, p0, Lcom/intermedia/config/LoggedOutConfigRepository;->behaviorProcessor:Lio/reactivex/processors/BehaviorProcessor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/intermedia/config/LoggedOutConfigRepository$$Lambda$1;->get$Lambda(Lio/reactivex/processors/BehaviorProcessor;)Lio/reactivex/functions/Consumer;

    move-result-object p2

    .line 43
    invoke-virtual {p1, p2}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public getConfig()Lio/reactivex/Flowable;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lcom/intermedia/model/config/LoggedOutConfig;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/intermedia/config/LoggedOutConfigRepository;->behaviorProcessor:Lio/reactivex/processors/BehaviorProcessor;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/processors/BehaviorProcessor;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method final synthetic lambda$new$0$LoggedOutConfigRepository(Lio/reactivex/MaybeEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/intermedia/config/LoggedOutConfigRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "logged_out_config"

    const-string v2, ""

    .line 38
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/intermedia/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/intermedia/model/config/LoggedOutConfig;->builder()Lcom/intermedia/model/config/LoggedOutConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intermedia/model/config/LoggedOutConfig$Builder;->build()Lcom/intermedia/model/config/LoggedOutConfig;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/intermedia/config/LoggedOutConfigRepository;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/intermedia/model/config/LoggedOutConfig;

    .line 41
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/model/config/LoggedOutConfig;

    .line 39
    :goto_0
    invoke-interface {p1, v0}, Lio/reactivex/MaybeEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$saveConfig$1$LoggedOutConfigRepository(Lcom/intermedia/model/config/LoggedOutConfig;)V
    .locals 3
    .param p1    # Lcom/intermedia/model/config/LoggedOutConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/intermedia/config/LoggedOutConfigRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "logged_out_config"

    iget-object v2, p0, Lcom/intermedia/config/LoggedOutConfigRepository;->gson:Lcom/google/gson/Gson;

    .line 48
    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final synthetic lambda$saveConfig$2$LoggedOutConfigRepository(Lcom/intermedia/model/config/LoggedOutConfig;)V
    .locals 1
    .param p1    # Lcom/intermedia/model/config/LoggedOutConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/intermedia/config/LoggedOutConfigRepository;->behaviorProcessor:Lio/reactivex/processors/BehaviorProcessor;

    invoke-virtual {v0, p1}, Lio/reactivex/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public saveConfig(Lcom/intermedia/model/config/LoggedOutConfig;)V
    .locals 2
    .param p1    # Lcom/intermedia/model/config/LoggedOutConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    new-instance v0, Lcom/intermedia/config/LoggedOutConfigRepository$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcom/intermedia/config/LoggedOutConfigRepository$$Lambda$2;-><init>(Lcom/intermedia/config/LoggedOutConfigRepository;Lcom/intermedia/model/config/LoggedOutConfig;)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v0

    .line 49
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/config/LoggedOutConfigRepository$$Lambda$3;

    invoke-direct {v1, p0, p1}, Lcom/intermedia/config/LoggedOutConfigRepository$$Lambda$3;-><init>(Lcom/intermedia/config/LoggedOutConfigRepository;Lcom/intermedia/model/config/LoggedOutConfig;)V

    .line 50
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
