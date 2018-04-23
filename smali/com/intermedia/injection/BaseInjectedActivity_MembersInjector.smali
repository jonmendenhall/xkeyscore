.class public final Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;
.super Ljava/lang/Object;
.source "BaseInjectedActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/intermedia/injection/BaseInjectedActivity;",
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

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->connectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p2, p0, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->authedApiProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p3, p0, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->debugReporterProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p4, p0, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->loggedOutApiProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p5, p0, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->connectivityManagerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p6, p0, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->defaultSharedPrefsProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p7, p0, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->userRepositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 9
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
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/injection/BaseInjectedActivity;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v8, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static injectAuthedApi(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/injection/BaseInjectedActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/AuthedApiService;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/network/AuthedApiService;

    iput-object p1, p0, Lcom/intermedia/injection/BaseInjectedActivity;->authedApi:Lcom/intermedia/network/AuthedApiService;

    return-void
.end method

.method public static injectConnectivityManager(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/injection/BaseInjectedActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/NetworkConnectivityManager;",
            ">;)V"
        }
    .end annotation

    .line 114
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/network/NetworkConnectivityManager;

    iput-object p1, p0, Lcom/intermedia/injection/BaseInjectedActivity;->connectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;

    return-void
.end method

.method public static injectConnectivitySnackbarPresenter(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/injection/BaseInjectedActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/ConnectivitySnackbarPresenter;",
            ">;)V"
        }
    .end annotation

    .line 93
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/network/ConnectivitySnackbarPresenter;

    iput-object p1, p0, Lcom/intermedia/injection/BaseInjectedActivity;->connectivitySnackbarPresenter:Lcom/intermedia/network/ConnectivitySnackbarPresenter;

    return-void
.end method

.method public static injectDebugReporter(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/injection/BaseInjectedActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/util/logging/DebugReporter;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/util/logging/DebugReporter;

    iput-object p1, p0, Lcom/intermedia/injection/BaseInjectedActivity;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    return-void
.end method

.method public static injectDefaultSharedPrefs(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/injection/BaseInjectedActivity;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 119
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/intermedia/injection/BaseInjectedActivity;->defaultSharedPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static injectLoggedOutApi(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/injection/BaseInjectedActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/LoggedOutApiService;",
            ">;)V"
        }
    .end annotation

    .line 108
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/network/LoggedOutApiService;

    iput-object p1, p0, Lcom/intermedia/injection/BaseInjectedActivity;->loggedOutApi:Lcom/intermedia/network/LoggedOutApiService;

    return-void
.end method

.method public static injectUserRepository(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/injection/BaseInjectedActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/UserRepository;",
            ">;)V"
        }
    .end annotation

    .line 124
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/user/UserRepository;

    iput-object p1, p0, Lcom/intermedia/injection/BaseInjectedActivity;->userRepository:Lcom/intermedia/user/UserRepository;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/intermedia/injection/BaseInjectedActivity;)V
    .locals 1

    if-nez p1, :cond_0

    .line 79
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Cannot inject members into a null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->connectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/network/ConnectivitySnackbarPresenter;

    iput-object v0, p1, Lcom/intermedia/injection/BaseInjectedActivity;->connectivitySnackbarPresenter:Lcom/intermedia/network/ConnectivitySnackbarPresenter;

    .line 82
    iget-object v0, p0, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->authedApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/network/AuthedApiService;

    iput-object v0, p1, Lcom/intermedia/injection/BaseInjectedActivity;->authedApi:Lcom/intermedia/network/AuthedApiService;

    .line 83
    iget-object v0, p0, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->debugReporterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/util/logging/DebugReporter;

    iput-object v0, p1, Lcom/intermedia/injection/BaseInjectedActivity;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    .line 84
    iget-object v0, p0, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->loggedOutApiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/network/LoggedOutApiService;

    iput-object v0, p1, Lcom/intermedia/injection/BaseInjectedActivity;->loggedOutApi:Lcom/intermedia/network/LoggedOutApiService;

    .line 85
    iget-object v0, p0, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->connectivityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/network/NetworkConnectivityManager;

    iput-object v0, p1, Lcom/intermedia/injection/BaseInjectedActivity;->connectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;

    .line 86
    iget-object v0, p0, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->defaultSharedPrefsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p1, Lcom/intermedia/injection/BaseInjectedActivity;->defaultSharedPrefs:Landroid/content/SharedPreferences;

    .line 87
    iget-object v0, p0, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->userRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/user/UserRepository;

    iput-object v0, p1, Lcom/intermedia/injection/BaseInjectedActivity;->userRepository:Lcom/intermedia/user/UserRepository;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/intermedia/injection/BaseInjectedActivity;

    invoke-virtual {p0, p1}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectMembers(Lcom/intermedia/injection/BaseInjectedActivity;)V

    return-void
.end method
