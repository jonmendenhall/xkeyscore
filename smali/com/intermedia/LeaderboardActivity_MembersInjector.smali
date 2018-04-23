.class public final Lcom/intermedia/LeaderboardActivity_MembersInjector;
.super Ljava/lang/Object;
.source "LeaderboardActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/intermedia/LeaderboardActivity;",
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
    iput-object p1, p0, Lcom/intermedia/LeaderboardActivity_MembersInjector;->connectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p2, p0, Lcom/intermedia/LeaderboardActivity_MembersInjector;->authedApiProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p3, p0, Lcom/intermedia/LeaderboardActivity_MembersInjector;->debugReporterProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p4, p0, Lcom/intermedia/LeaderboardActivity_MembersInjector;->loggedOutApiProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p5, p0, Lcom/intermedia/LeaderboardActivity_MembersInjector;->connectivityManagerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p6, p0, Lcom/intermedia/LeaderboardActivity_MembersInjector;->defaultSharedPrefsProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p7, p0, Lcom/intermedia/LeaderboardActivity_MembersInjector;->userRepositoryProvider:Ljavax/inject/Provider;

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
            "Lcom/intermedia/LeaderboardActivity;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v8, Lcom/intermedia/LeaderboardActivity_MembersInjector;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/intermedia/LeaderboardActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method


# virtual methods
.method public injectMembers(Lcom/intermedia/LeaderboardActivity;)V
    .locals 1

    if-nez p1, :cond_0

    .line 79
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Cannot inject members into a null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/intermedia/LeaderboardActivity_MembersInjector;->connectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    .line 82
    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectConnectivitySnackbarPresenter(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 83
    iget-object v0, p0, Lcom/intermedia/LeaderboardActivity_MembersInjector;->authedApiProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectAuthedApi(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 85
    iget-object v0, p0, Lcom/intermedia/LeaderboardActivity_MembersInjector;->debugReporterProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectDebugReporter(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 87
    iget-object v0, p0, Lcom/intermedia/LeaderboardActivity_MembersInjector;->loggedOutApiProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectLoggedOutApi(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 89
    iget-object v0, p0, Lcom/intermedia/LeaderboardActivity_MembersInjector;->connectivityManagerProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectConnectivityManager(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 91
    iget-object v0, p0, Lcom/intermedia/LeaderboardActivity_MembersInjector;->defaultSharedPrefsProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectDefaultSharedPrefs(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 93
    iget-object v0, p0, Lcom/intermedia/LeaderboardActivity_MembersInjector;->userRepositoryProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectUserRepository(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/intermedia/LeaderboardActivity;

    invoke-virtual {p0, p1}, Lcom/intermedia/LeaderboardActivity_MembersInjector;->injectMembers(Lcom/intermedia/LeaderboardActivity;)V

    return-void
.end method
