.class public final Lcom/intermedia/login/LoginActivity_MembersInjector;
.super Ljava/lang/Object;
.source "LoginActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/intermedia/login/LoginActivity;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final authedApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/AuthedApiService;",
            ">;"
        }
    .end annotation
.end field

.field private final connectivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/NetworkConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final connectivitySnackbarPresenterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/ConnectivitySnackbarPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final debugReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/util/logging/DebugReporter;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultSharedPrefsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final loggedOutApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/LoggedOutApiService;",
            ">;"
        }
    .end annotation
.end field

.field private final loggedOutConfigRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/config/LoggedOutConfigRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final userRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/UserRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/ConnectivitySnackbarPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/AuthedApiService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/util/logging/DebugReporter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/LoggedOutApiService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/NetworkConnectivityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/UserRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/config/LoggedOutConfigRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/intermedia/login/LoginActivity_MembersInjector;->connectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p2, p0, Lcom/intermedia/login/LoginActivity_MembersInjector;->authedApiProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p3, p0, Lcom/intermedia/login/LoginActivity_MembersInjector;->debugReporterProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p4, p0, Lcom/intermedia/login/LoginActivity_MembersInjector;->loggedOutApiProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p5, p0, Lcom/intermedia/login/LoginActivity_MembersInjector;->connectivityManagerProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p6, p0, Lcom/intermedia/login/LoginActivity_MembersInjector;->defaultSharedPrefsProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p7, p0, Lcom/intermedia/login/LoginActivity_MembersInjector;->userRepositoryProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p8, p0, Lcom/intermedia/login/LoginActivity_MembersInjector;->loggedOutConfigRepositoryProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p9, p0, Lcom/intermedia/login/LoginActivity_MembersInjector;->sessionManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/ConnectivitySnackbarPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/AuthedApiService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/util/logging/DebugReporter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/LoggedOutApiService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/NetworkConnectivityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/UserRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/config/LoggedOutConfigRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/login/LoginActivity;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v10, Lcom/intermedia/login/LoginActivity_MembersInjector;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/intermedia/login/LoginActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static injectLoggedOutConfigRepository(Lcom/intermedia/login/LoginActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/login/LoginActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/config/LoggedOutConfigRepository;",
            ">;)V"
        }
    .end annotation

    .line 117
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/config/LoggedOutConfigRepository;

    iput-object p1, p0, Lcom/intermedia/login/LoginActivity;->loggedOutConfigRepository:Lcom/intermedia/config/LoggedOutConfigRepository;

    return-void
.end method

.method public static injectSessionManager(Lcom/intermedia/login/LoginActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/login/LoginActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/user/session/SessionManager;

    iput-object p1, p0, Lcom/intermedia/login/LoginActivity;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/intermedia/login/LoginActivity;)V
    .locals 1

    if-nez p1, :cond_0

    .line 94
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Cannot inject members into a null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity_MembersInjector;->connectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    .line 97
    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectConnectivitySnackbarPresenter(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 98
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity_MembersInjector;->authedApiProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectAuthedApi(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 100
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity_MembersInjector;->debugReporterProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectDebugReporter(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 102
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity_MembersInjector;->loggedOutApiProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectLoggedOutApi(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 104
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity_MembersInjector;->connectivityManagerProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectConnectivityManager(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 106
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity_MembersInjector;->defaultSharedPrefsProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectDefaultSharedPrefs(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 108
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity_MembersInjector;->userRepositoryProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectUserRepository(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 110
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity_MembersInjector;->loggedOutConfigRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/config/LoggedOutConfigRepository;

    iput-object v0, p1, Lcom/intermedia/login/LoginActivity;->loggedOutConfigRepository:Lcom/intermedia/config/LoggedOutConfigRepository;

    .line 111
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity_MembersInjector;->sessionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/user/session/SessionManager;

    iput-object v0, p1, Lcom/intermedia/login/LoginActivity;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/intermedia/login/LoginActivity;

    invoke-virtual {p0, p1}, Lcom/intermedia/login/LoginActivity_MembersInjector;->injectMembers(Lcom/intermedia/login/LoginActivity;)V

    return-void
.end method
