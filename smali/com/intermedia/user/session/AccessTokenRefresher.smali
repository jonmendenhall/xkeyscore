.class public Lcom/intermedia/user/session/AccessTokenRefresher;
.super Ljava/lang/Object;
.source "AccessTokenRefresher.java"


# annotations
.annotation runtime Lcom/intermedia/injection/UserScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/user/session/AccessTokenRefresher$AccessTokenRefresherException;
    }
.end annotation


# instance fields
.field private final api:Lcom/intermedia/network/LoggedOutApiService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final apiErrorParser:Lcom/intermedia/network/ApiErrorParser;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final logoutManager:Lcom/intermedia/user/session/LogoutManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private refreshRequestStarted:Z

.field private final sessionManager:Lcom/intermedia/user/session/SessionManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/intermedia/network/LoggedOutApiService;Lcom/intermedia/network/ApiErrorParser;Lcom/intermedia/user/session/SessionManager;Lcom/intermedia/user/session/LogoutManager;)V
    .locals 0
    .param p1    # Lcom/intermedia/network/LoggedOutApiService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/network/ApiErrorParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/intermedia/user/session/SessionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/intermedia/user/session/LogoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/intermedia/user/session/AccessTokenRefresher;->api:Lcom/intermedia/network/LoggedOutApiService;

    .line 34
    iput-object p2, p0, Lcom/intermedia/user/session/AccessTokenRefresher;->apiErrorParser:Lcom/intermedia/network/ApiErrorParser;

    .line 35
    iput-object p3, p0, Lcom/intermedia/user/session/AccessTokenRefresher;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    .line 36
    iput-object p4, p0, Lcom/intermedia/user/session/AccessTokenRefresher;->logoutManager:Lcom/intermedia/user/session/LogoutManager;

    return-void
.end method

.method static final synthetic lambda$null$1$AccessTokenRefresher(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private onRefreshFailure(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 63
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v1, "request_authRefreshFailed"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/intermedia/util/reporting/ErrorLog;

    iget-object v1, p0, Lcom/intermedia/user/session/AccessTokenRefresher;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    invoke-virtual {v1}, Lcom/intermedia/user/session/SessionManager;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    const-string v0, "apiError"

    .line 66
    invoke-virtual {p1, v0, p3}, Lcom/intermedia/util/reporting/ErrorLog;->addKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/intermedia/util/reporting/ErrorLog;

    const-string p3, "apiErrorCode"

    .line 67
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lcom/intermedia/util/reporting/ErrorLog;->addKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/intermedia/util/reporting/ErrorLog;

    const-string p3, "loginToken"

    .line 68
    invoke-virtual {p1, p3, p2}, Lcom/intermedia/util/reporting/ErrorLog;->addKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/intermedia/util/reporting/ErrorLog;

    .line 69
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    .line 70
    iget-object p1, p0, Lcom/intermedia/user/session/AccessTokenRefresher;->logoutManager:Lcom/intermedia/user/session/LogoutManager;

    invoke-virtual {p1}, Lcom/intermedia/user/session/LogoutManager;->logout()V

    return-void
.end method


# virtual methods
.method final synthetic lambda$null$0$AccessTokenRefresher(Ljava/lang/String;Lcom/intermedia/model/ApiError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/intermedia/user/session/AccessTokenRefresher$AccessTokenRefresherException;

    const-string v1, "Access token refresh failed"

    invoke-direct {v0, p0, v1}, Lcom/intermedia/user/session/AccessTokenRefresher$AccessTokenRefresherException;-><init>(Lcom/intermedia/user/session/AccessTokenRefresher;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/intermedia/model/ApiError;->error:Ljava/lang/String;

    iget p2, p2, Lcom/intermedia/model/ApiError;->errorCode:I

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/intermedia/user/session/AccessTokenRefresher;->onRefreshFailure(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method final synthetic lambda$refresh$2$AccessTokenRefresher(Ljava/lang/String;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/intermedia/user/session/AccessTokenRefresher;->refreshRequestStarted:Z

    .line 49
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string v0, "request_authRefreshSucceeded"

    invoke-virtual {p1, v0}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/intermedia/user/session/AccessTokenRefresher;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/intermedia/model/InHouseAuthResponse;

    invoke-virtual {p1, p2}, Lcom/intermedia/user/session/SessionManager;->setSession(Lcom/intermedia/model/InHouseAuthResponse;)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/intermedia/user/session/AccessTokenRefresher;->apiErrorParser:Lcom/intermedia/network/ApiErrorParser;

    invoke-virtual {v0, p2}, Lcom/intermedia/network/ApiErrorParser;->parse(Lretrofit2/Response;)Lio/reactivex/Maybe;

    move-result-object p2

    new-instance v0, Lcom/intermedia/user/session/AccessTokenRefresher$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcom/intermedia/user/session/AccessTokenRefresher$$Lambda$2;-><init>(Lcom/intermedia/user/session/AccessTokenRefresher;Ljava/lang/String;)V

    sget-object p1, Lcom/intermedia/user/session/AccessTokenRefresher$$Lambda$3;->$instance:Lio/reactivex/functions/Consumer;

    invoke-virtual {p2, v0, p1}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method final synthetic lambda$refresh$3$AccessTokenRefresher(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/intermedia/user/session/AccessTokenRefresher;->onRefreshFailure(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method refresh()V
    .locals 4

    .line 40
    iget-boolean v0, p0, Lcom/intermedia/user/session/AccessTokenRefresher;->refreshRequestStarted:Z

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v1, "request_authRefreshAttempted"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/intermedia/user/session/AccessTokenRefresher;->refreshRequestStarted:Z

    .line 45
    iget-object v0, p0, Lcom/intermedia/user/session/AccessTokenRefresher;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    invoke-virtual {v0}, Lcom/intermedia/user/session/SessionManager;->getLoginToken()Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/intermedia/user/session/AccessTokenRefresher;->api:Lcom/intermedia/network/LoggedOutApiService;

    new-instance v2, Lcom/intermedia/model/retrofit/LoginTokenBody;

    invoke-direct {v2, v0}, Lcom/intermedia/model/retrofit/LoginTokenBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/intermedia/network/LoggedOutApiService;->postLoginToken(Lcom/intermedia/model/retrofit/LoginTokenBody;)Lio/reactivex/Single;

    move-result-object v1

    .line 47
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/intermedia/user/session/AccessTokenRefresher$$Lambda$0;

    invoke-direct {v2, p0, v0}, Lcom/intermedia/user/session/AccessTokenRefresher$$Lambda$0;-><init>(Lcom/intermedia/user/session/AccessTokenRefresher;Ljava/lang/String;)V

    new-instance v3, Lcom/intermedia/user/session/AccessTokenRefresher$$Lambda$1;

    invoke-direct {v3, p0, v0}, Lcom/intermedia/user/session/AccessTokenRefresher$$Lambda$1;-><init>(Lcom/intermedia/user/session/AccessTokenRefresher;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
