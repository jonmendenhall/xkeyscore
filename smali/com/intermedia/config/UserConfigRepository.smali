.class public Lcom/intermedia/config/UserConfigRepository;
.super Ljava/lang/Object;
.source "UserConfigRepository.java"


# annotations
.annotation runtime Lcom/intermedia/injection/UserScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/config/UserConfigRepository$UserConfigRepositoryException;
    }
.end annotation


# instance fields
.field private final api:Lcom/intermedia/network/AuthedApiService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final apiErrorParser:Lcom/intermedia/network/ApiErrorParser;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final behaviorProcessor:Lio/reactivex/processors/BehaviorProcessor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/BehaviorProcessor<",
            "Lcom/intermedia/model/config/Config;",
            ">;"
        }
    .end annotation
.end field

.field private final disposables:Lio/reactivex/disposables/CompositeDisposable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final sessionManager:Lcom/intermedia/user/session/SessionManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final sharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/intermedia/network/AuthedApiService;Landroid/content/SharedPreferences;Lcom/intermedia/user/session/SessionManager;Lcom/intermedia/network/ApiErrorParser;)V
    .locals 1
    .param p1    # Lcom/intermedia/network/AuthedApiService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation runtime Ljavax/inject/Named;
            value = "UserConfig"
        .end annotation
    .end param
    .param p3    # Lcom/intermedia/user/session/SessionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/intermedia/network/ApiErrorParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lio/reactivex/processors/BehaviorProcessor;->create()Lio/reactivex/processors/BehaviorProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/config/UserConfigRepository;->behaviorProcessor:Lio/reactivex/processors/BehaviorProcessor;

    .line 37
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/intermedia/config/UserConfigRepository;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 44
    iput-object p1, p0, Lcom/intermedia/config/UserConfigRepository;->api:Lcom/intermedia/network/AuthedApiService;

    .line 45
    iput-object p2, p0, Lcom/intermedia/config/UserConfigRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 46
    iput-object p3, p0, Lcom/intermedia/config/UserConfigRepository;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    .line 47
    iput-object p4, p0, Lcom/intermedia/config/UserConfigRepository;->apiErrorParser:Lcom/intermedia/network/ApiErrorParser;

    .line 50
    new-instance p1, Lcom/intermedia/config/UserConfigRepository$$Lambda$0;

    invoke-direct {p1, p0}, Lcom/intermedia/config/UserConfigRepository$$Lambda$0;-><init>(Lcom/intermedia/config/UserConfigRepository;)V

    invoke-static {p1}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p1

    iget-object p2, p0, Lcom/intermedia/config/UserConfigRepository;->behaviorProcessor:Lio/reactivex/processors/BehaviorProcessor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/intermedia/config/UserConfigRepository$$Lambda$1;->get$Lambda(Lio/reactivex/processors/BehaviorProcessor;)Lio/reactivex/functions/Consumer;

    move-result-object p2

    .line 66
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static final synthetic lambda$null$2$UserConfigRepository(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private reportError(Ljava/lang/Throwable;Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 108
    new-instance v0, Lcom/intermedia/util/reporting/ErrorLog;

    iget-object v1, p0, Lcom/intermedia/config/UserConfigRepository;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    invoke-virtual {v1}, Lcom/intermedia/user/session/SessionManager;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    const-string v1, "apiError"

    .line 109
    invoke-virtual {v0, v1, p2}, Lcom/intermedia/util/reporting/ErrorLog;->addKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/intermedia/util/reporting/ErrorLog;

    const-string p2, "apiErrorCode"

    .line 110
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lcom/intermedia/util/reporting/ErrorLog;->addKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/intermedia/util/reporting/ErrorLog;

    .line 111
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object p2

    invoke-virtual {v0, p1}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    return-void
.end method


# virtual methods
.method public fetch()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/intermedia/config/UserConfigRepository;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/intermedia/config/UserConfigRepository;->api:Lcom/intermedia/network/AuthedApiService;

    invoke-interface {v1}, Lcom/intermedia/network/AuthedApiService;->getConfig()Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/intermedia/config/UserConfigRepository$$Lambda$2;

    invoke-direct {v2, p0}, Lcom/intermedia/config/UserConfigRepository$$Lambda$2;-><init>(Lcom/intermedia/config/UserConfigRepository;)V

    new-instance v3, Lcom/intermedia/config/UserConfigRepository$$Lambda$3;

    invoke-direct {v3, p0}, Lcom/intermedia/config/UserConfigRepository$$Lambda$3;-><init>(Lcom/intermedia/config/UserConfigRepository;)V

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public getCachedConfig()Lio/reactivex/Observable;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/intermedia/model/config/Config;",
            ">;"
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/intermedia/config/UserConfigRepository;->getConfigFlowable()Lio/reactivex/Flowable;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->take(J)Lio/reactivex/Flowable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Flowable;->toObservable()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getConfigFlowable()Lio/reactivex/Flowable;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lcom/intermedia/model/config/Config;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/intermedia/config/UserConfigRepository;->behaviorProcessor:Lio/reactivex/processors/BehaviorProcessor;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/processors/BehaviorProcessor;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method final synthetic lambda$fetch$3$UserConfigRepository(Lretrofit2/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/model/config/Config;

    .line 72
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    sget-object p1, Lcom/intermedia/model/config/Config$MinVersion;->DEFAULT:Lcom/intermedia/model/config/Config$MinVersion;

    .line 75
    invoke-virtual {v0}, Lcom/intermedia/model/config/Config;->minVersion()Lcom/intermedia/model/config/Config$MinVersion;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/intermedia/util/NullableUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intermedia/model/config/Config$MinVersion;

    .line 76
    invoke-virtual {v1}, Lcom/intermedia/model/config/Config$MinVersion;->android()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {p1}, Lcom/intermedia/model/config/Config$MinVersion;->android()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {v2, p1}, Lcom/intermedia/util/NullableUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 78
    invoke-virtual {v0}, Lcom/intermedia/model/config/Config;->eloiEnabled()Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/intermedia/util/NullableUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 79
    invoke-virtual {v0}, Lcom/intermedia/model/config/Config;->elPromptMs()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/intermedia/model/config/Config;->DEFAULT:Lcom/intermedia/model/config/Config;

    .line 80
    invoke-virtual {v4}, Lcom/intermedia/model/config/Config;->elPromptMs()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 79
    invoke-static {v3, v4}, Lcom/intermedia/util/NullableUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 82
    invoke-virtual {v0}, Lcom/intermedia/model/config/Config;->streamConfig()Lcom/intermedia/model/config/StreamConfig;

    move-result-object v0

    sget-object v4, Lcom/intermedia/model/config/StreamConfig;->DEFAULT:Lcom/intermedia/model/config/StreamConfig;

    invoke-static {v0, v4}, Lcom/intermedia/util/NullableUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/model/config/StreamConfig;

    .line 85
    iget-object v4, p0, Lcom/intermedia/config/UserConfigRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "eloiEnabled"

    .line 86
    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "el_prompt_duration"

    .line 87
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "minVersion"

    .line 88
    invoke-interface {v4, v5, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 89
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    iget-object p1, p0, Lcom/intermedia/config/UserConfigRepository;->behaviorProcessor:Lio/reactivex/processors/BehaviorProcessor;

    invoke-static {}, Lcom/intermedia/model/config/Config;->builder()Lcom/intermedia/model/config/Config$Builder;

    move-result-object v4

    .line 92
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/intermedia/model/config/Config$Builder;->eloiEnabled(Ljava/lang/Boolean;)Lcom/intermedia/model/config/Config$Builder;

    move-result-object v2

    .line 93
    invoke-virtual {v2, v3}, Lcom/intermedia/model/config/Config$Builder;->elPromptMs(I)Lcom/intermedia/model/config/Config$Builder;

    move-result-object v2

    .line 94
    invoke-virtual {v2, v1}, Lcom/intermedia/model/config/Config$Builder;->minVersion(Lcom/intermedia/model/config/Config$MinVersion;)Lcom/intermedia/model/config/Config$Builder;

    move-result-object v1

    .line 95
    invoke-virtual {v1, v0}, Lcom/intermedia/model/config/Config$Builder;->streamConfig(Lcom/intermedia/model/config/StreamConfig;)Lcom/intermedia/model/config/Config$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/intermedia/model/config/Config$Builder;->build()Lcom/intermedia/model/config/Config;

    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Lio/reactivex/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/intermedia/config/UserConfigRepository;->apiErrorParser:Lcom/intermedia/network/ApiErrorParser;

    invoke-virtual {v0, p1}, Lcom/intermedia/network/ApiErrorParser;->parse(Lretrofit2/Response;)Lio/reactivex/Maybe;

    move-result-object p1

    new-instance v0, Lcom/intermedia/config/UserConfigRepository$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/intermedia/config/UserConfigRepository$$Lambda$4;-><init>(Lcom/intermedia/config/UserConfigRepository;)V

    sget-object v1, Lcom/intermedia/config/UserConfigRepository$$Lambda$5;->$instance:Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method final synthetic lambda$fetch$4$UserConfigRepository(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1, v0, v1}, Lcom/intermedia/config/UserConfigRepository;->reportError(Ljava/lang/Throwable;Ljava/lang/String;I)V

    return-void
.end method

.method final synthetic lambda$new$0$UserConfigRepository(Lio/reactivex/SingleEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/intermedia/config/UserConfigRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "minVersion"

    sget-object v2, Lcom/intermedia/model/config/Config$MinVersion;->DEFAULT:Lcom/intermedia/model/config/Config$MinVersion;

    .line 52
    invoke-virtual {v2}, Lcom/intermedia/model/config/Config$MinVersion;->android()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/intermedia/model/config/Config$MinVersion;->builder()Lcom/intermedia/model/config/Config$MinVersion$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/intermedia/model/config/Config$MinVersion$Builder;->android(Ljava/lang/String;)Lcom/intermedia/model/config/Config$MinVersion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intermedia/model/config/Config$MinVersion$Builder;->build()Lcom/intermedia/model/config/Config$MinVersion;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/intermedia/config/UserConfigRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "eloiEnabled"

    const/4 v3, 0x1

    .line 56
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 57
    iget-object v2, p0, Lcom/intermedia/config/UserConfigRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "el_prompt_duration"

    sget-object v4, Lcom/intermedia/model/config/Config;->DEFAULT:Lcom/intermedia/model/config/Config;

    .line 58
    invoke-virtual {v4}, Lcom/intermedia/model/config/Config;->elPromptMs()I

    move-result v4

    .line 57
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 60
    invoke-static {}, Lcom/intermedia/model/config/Config;->builder()Lcom/intermedia/model/config/Config$Builder;

    move-result-object v3

    .line 61
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/intermedia/model/config/Config$Builder;->eloiEnabled(Ljava/lang/Boolean;)Lcom/intermedia/model/config/Config$Builder;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v2}, Lcom/intermedia/model/config/Config$Builder;->elPromptMs(I)Lcom/intermedia/model/config/Config$Builder;

    move-result-object v1

    .line 63
    invoke-virtual {v1, v0}, Lcom/intermedia/model/config/Config$Builder;->minVersion(Lcom/intermedia/model/config/Config$MinVersion;)Lcom/intermedia/model/config/Config$Builder;

    move-result-object v0

    sget-object v1, Lcom/intermedia/model/config/StreamConfig;->DEFAULT:Lcom/intermedia/model/config/StreamConfig;

    .line 64
    invoke-virtual {v0, v1}, Lcom/intermedia/model/config/Config$Builder;->streamConfig(Lcom/intermedia/model/config/StreamConfig;)Lcom/intermedia/model/config/Config$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/intermedia/model/config/Config$Builder;->build()Lcom/intermedia/model/config/Config;

    move-result-object v0

    .line 60
    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$null$1$UserConfigRepository(Lcom/intermedia/model/ApiError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/intermedia/config/UserConfigRepository$UserConfigRepositoryException;

    const-string v1, "User config fetch failed"

    invoke-direct {v0, p0, v1}, Lcom/intermedia/config/UserConfigRepository$UserConfigRepositoryException;-><init>(Lcom/intermedia/config/UserConfigRepository;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/intermedia/model/ApiError;->error:Ljava/lang/String;

    iget p1, p1, Lcom/intermedia/model/ApiError;->errorCode:I

    invoke-direct {p0, v0, v1, p1}, Lcom/intermedia/config/UserConfigRepository;->reportError(Ljava/lang/Throwable;Ljava/lang/String;I)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/intermedia/config/UserConfigRepository;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/intermedia/config/UserConfigRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    iget-object v0, p0, Lcom/intermedia/config/UserConfigRepository;->behaviorProcessor:Lio/reactivex/processors/BehaviorProcessor;

    invoke-virtual {v0}, Lio/reactivex/processors/BehaviorProcessor;->onComplete()V

    return-void
.end method
