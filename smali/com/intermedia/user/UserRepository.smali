.class public Lcom/intermedia/user/UserRepository;
.super Ljava/lang/Object;
.source "UserRepository.java"


# annotations
.annotation runtime Lcom/intermedia/injection/UserScope;
.end annotation


# static fields
.field private static final PREFERENCES:Ljava/lang/String; = "com.intermedia.hq.users"


# instance fields
.field private final behaviorProcessor:Lio/reactivex/processors/BehaviorProcessor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/BehaviorProcessor<",
            "Lcom/intermedia/model/HQUser;",
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

.field private final userId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/intermedia/user/session/SessionManager;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/user/session/SessionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.intermedia.hq.users"

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/user/UserRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 45
    invoke-virtual {p2}, Lcom/intermedia/user/session/SessionManager;->getUserId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/intermedia/user/UserRepository;->userId:J

    .line 46
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance p2, Lcom/intermedia/libs/AutoParcelAdapterFactory;

    invoke-direct {p2}, Lcom/intermedia/libs/AutoParcelAdapterFactory;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/user/UserRepository;->gson:Lcom/google/gson/Gson;

    .line 48
    invoke-static {}, Lio/reactivex/processors/BehaviorProcessor;->create()Lio/reactivex/processors/BehaviorProcessor;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/user/UserRepository;->behaviorProcessor:Lio/reactivex/processors/BehaviorProcessor;

    .line 50
    new-instance p1, Lcom/intermedia/user/UserRepository$$Lambda$0;

    invoke-direct {p1, p0}, Lcom/intermedia/user/UserRepository$$Lambda$0;-><init>(Lcom/intermedia/user/UserRepository;)V

    invoke-static {p1}, Lio/reactivex/Maybe;->create(Lio/reactivex/MaybeOnSubscribe;)Lio/reactivex/Maybe;

    move-result-object p1

    .line 59
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Maybe;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Maybe;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object p1

    iget-object p2, p0, Lcom/intermedia/user/UserRepository;->behaviorProcessor:Lio/reactivex/processors/BehaviorProcessor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/intermedia/user/UserRepository$$Lambda$1;->get$Lambda(Lio/reactivex/processors/BehaviorProcessor;)Lio/reactivex/functions/Consumer;

    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static final synthetic lambda$saveAvatar$1$UserRepository(Ljava/lang/String;Lcom/intermedia/model/HQUser;)Lcom/intermedia/model/HQUser;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->toBuilder()Lcom/intermedia/model/HQUser$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/intermedia/model/HQUser$Builder;->avatarUrl(Ljava/lang/String;)Lcom/intermedia/model/HQUser$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/intermedia/model/HQUser$Builder;->build()Lcom/intermedia/model/HQUser;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addUserToErrorLog(Lcom/intermedia/util/reporting/ErrorLog;)V
    .locals 4
    .param p1    # Lcom/intermedia/util/reporting/ErrorLog;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "user"

    .line 100
    iget-object v1, p0, Lcom/intermedia/user/UserRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-wide v2, p0, Lcom/intermedia/user/UserRepository;->userId:J

    .line 101
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {p1, v0, v1}, Lcom/intermedia/util/reporting/ErrorLog;->addKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/intermedia/util/reporting/ErrorLog;

    return-void
.end method

.method public getCachedUser()Lio/reactivex/Observable;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/intermedia/model/HQUser;",
            ">;"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/intermedia/user/UserRepository;->getUserFlowable()Lio/reactivex/Flowable;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->take(J)Lio/reactivex/Flowable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Flowable;->toObservable()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentToken()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/intermedia/user/UserRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "segment_token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserFlowable()Lio/reactivex/Flowable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lcom/intermedia/model/HQUser;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/intermedia/user/UserRepository;->behaviorProcessor:Lio/reactivex/processors/BehaviorProcessor;

    return-object v0
.end method

.method final synthetic lambda$new$0$UserRepository(Lio/reactivex/MaybeEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/intermedia/user/UserRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-wide v1, p0, Lcom/intermedia/user/UserRepository;->userId:J

    .line 52
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/intermedia/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-interface {p1}, Lio/reactivex/MaybeEmitter;->onComplete()V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/intermedia/user/UserRepository;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/intermedia/model/HQUser;

    .line 57
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/model/HQUser;

    invoke-virtual {v0}, Lcom/intermedia/model/HQUser;->toBuilder()Lcom/intermedia/model/HQUser$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intermedia/model/HQUser$Builder;->build()Lcom/intermedia/model/HQUser;

    move-result-object v0

    .line 56
    invoke-interface {p1, v0}, Lio/reactivex/MaybeEmitter;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method final synthetic lambda$saveUser$2$UserRepository(Lcom/intermedia/model/HQUser;)V
    .locals 3
    .param p1    # Lcom/intermedia/model/HQUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/intermedia/user/UserRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p0, Lcom/intermedia/user/UserRepository;->userId:J

    .line 75
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/intermedia/user/UserRepository;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final synthetic lambda$saveUser$3$UserRepository(Lcom/intermedia/model/HQUser;)V
    .locals 1
    .param p1    # Lcom/intermedia/model/HQUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/intermedia/user/UserRepository;->behaviorProcessor:Lio/reactivex/processors/BehaviorProcessor;

    invoke-virtual {v0, p1}, Lio/reactivex/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/intermedia/user/UserRepository;->behaviorProcessor:Lio/reactivex/processors/BehaviorProcessor;

    invoke-virtual {v0}, Lio/reactivex/processors/BehaviorProcessor;->onComplete()V

    return-void
.end method

.method public removeUser(J)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/intermedia/user/UserRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveAvatar(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    invoke-virtual {p0}, Lcom/intermedia/user/UserRepository;->getCachedUser()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/user/UserRepository$$Lambda$2;

    invoke-direct {v1, p1}, Lcom/intermedia/user/UserRepository$$Lambda$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/intermedia/user/UserRepository$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/intermedia/user/UserRepository$$Lambda$3;-><init>(Lcom/intermedia/user/UserRepository;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public saveUser(Lcom/intermedia/model/HQUser;)V
    .locals 4
    .param p1    # Lcom/intermedia/model/HQUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    iget-wide v0, p0, Lcom/intermedia/user/UserRepository;->userId:J

    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->userId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/intermedia/util/Asserts;->assertTrue(Z)Z

    .line 74
    new-instance v0, Lcom/intermedia/user/UserRepository$$Lambda$4;

    invoke-direct {v0, p0, p1}, Lcom/intermedia/user/UserRepository$$Lambda$4;-><init>(Lcom/intermedia/user/UserRepository;Lcom/intermedia/model/HQUser;)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v0

    .line 76
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/user/UserRepository$$Lambda$5;

    invoke-direct {v1, p0, p1}, Lcom/intermedia/user/UserRepository$$Lambda$5;-><init>(Lcom/intermedia/user/UserRepository;Lcom/intermedia/model/HQUser;)V

    .line 77
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
