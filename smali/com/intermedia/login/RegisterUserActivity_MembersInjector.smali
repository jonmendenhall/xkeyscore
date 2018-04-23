.class public final Lcom/intermedia/login/RegisterUserActivity_MembersInjector;
.super Ljava/lang/Object;
.source "RegisterUserActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/intermedia/login/RegisterUserActivity;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final apiErrorParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/ApiErrorParser;",
            ">;"
        }
    .end annotation
.end field

.field private final authedApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/AuthedApiService;",
            ">;"
        }
    .end annotation
.end field

.field private final avatarUploaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/AvatarUploader;",
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

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lcom/intermedia/network/ApiErrorParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/AvatarUploader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;->connectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p2, p0, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;->authedApiProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p3, p0, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;->debugReporterProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p4, p0, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;->loggedOutApiProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p5, p0, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;->connectivityManagerProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p6, p0, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;->defaultSharedPrefsProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p7, p0, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;->userRepositoryProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p8, p0, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;->apiErrorParserProvider:Ljavax/inject/Provider;

    .line 71
    iput-object p9, p0, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;->avatarUploaderProvider:Ljavax/inject/Provider;

    .line 73
    iput-object p10, p0, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;->sessionManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 12
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
            "Lcom/intermedia/network/ApiErrorParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/AvatarUploader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/login/RegisterUserActivity;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v11, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v11
.end method

.method public static injectApiErrorParser(Lcom/intermedia/login/RegisterUserActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/login/RegisterUserActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/ApiErrorParser;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/network/ApiErrorParser;

    iput-object p1, p0, Lcom/intermedia/login/RegisterUserActivity;->apiErrorParser:Lcom/intermedia/network/ApiErrorParser;

    return-void
.end method

.method public static injectAvatarUploader(Lcom/intermedia/login/RegisterUserActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/login/RegisterUserActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/AvatarUploader;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/user/AvatarUploader;

    iput-object p1, p0, Lcom/intermedia/login/RegisterUserActivity;->avatarUploader:Lcom/intermedia/user/AvatarUploader;

    return-void
.end method

.method public static injectSessionManager(Lcom/intermedia/login/RegisterUserActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/login/RegisterUserActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;)V"
        }
    .end annotation

    .line 136
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/user/session/SessionManager;

    iput-object p1, p0, Lcom/intermedia/login/RegisterUserActivity;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/intermedia/login/RegisterUserActivity;)V
    .locals 1

    if-nez p1, :cond_0

    .line 103
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Cannot inject members into a null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;->connectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    .line 106
    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectConnectivitySnackbarPresenter(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 107
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;->authedApiProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectAuthedApi(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 109
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;->debugReporterProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectDebugReporter(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 111
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;->loggedOutApiProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectLoggedOutApi(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 113
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;->connectivityManagerProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectConnectivityManager(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 115
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;->defaultSharedPrefsProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectDefaultSharedPrefs(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 117
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;->userRepositoryProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectUserRepository(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 119
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;->apiErrorParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/network/ApiErrorParser;

    iput-object v0, p1, Lcom/intermedia/login/RegisterUserActivity;->apiErrorParser:Lcom/intermedia/network/ApiErrorParser;

    .line 120
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;->avatarUploaderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/user/AvatarUploader;

    iput-object v0, p1, Lcom/intermedia/login/RegisterUserActivity;->avatarUploader:Lcom/intermedia/user/AvatarUploader;

    .line 121
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;->sessionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/user/session/SessionManager;

    iput-object v0, p1, Lcom/intermedia/login/RegisterUserActivity;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/intermedia/login/RegisterUserActivity;

    invoke-virtual {p0, p1}, Lcom/intermedia/login/RegisterUserActivity_MembersInjector;->injectMembers(Lcom/intermedia/login/RegisterUserActivity;)V

    return-void
.end method
