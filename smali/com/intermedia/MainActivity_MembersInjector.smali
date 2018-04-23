.class public final Lcom/intermedia/MainActivity_MembersInjector;
.super Ljava/lang/Object;
.source "MainActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/intermedia/MainActivity;",
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

.field private final deviceRegistrarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/libs/DeviceRegistrar;",
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

.field private final logoutManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/LogoutManager;",
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

.field private final showTimeRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/game/ShowTimeRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final userConfigRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/config/UserConfigRepository;",
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

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lcom/intermedia/user/AvatarUploader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/libs/DeviceRegistrar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/LogoutManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/game/ShowTimeRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/config/UserConfigRepository;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/intermedia/MainActivity_MembersInjector;->connectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p2, p0, Lcom/intermedia/MainActivity_MembersInjector;->authedApiProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p3, p0, Lcom/intermedia/MainActivity_MembersInjector;->debugReporterProvider:Ljavax/inject/Provider;

    .line 72
    iput-object p4, p0, Lcom/intermedia/MainActivity_MembersInjector;->loggedOutApiProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p5, p0, Lcom/intermedia/MainActivity_MembersInjector;->connectivityManagerProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p6, p0, Lcom/intermedia/MainActivity_MembersInjector;->defaultSharedPrefsProvider:Ljavax/inject/Provider;

    .line 78
    iput-object p7, p0, Lcom/intermedia/MainActivity_MembersInjector;->userRepositoryProvider:Ljavax/inject/Provider;

    .line 80
    iput-object p8, p0, Lcom/intermedia/MainActivity_MembersInjector;->avatarUploaderProvider:Ljavax/inject/Provider;

    .line 82
    iput-object p9, p0, Lcom/intermedia/MainActivity_MembersInjector;->deviceRegistrarProvider:Ljavax/inject/Provider;

    .line 84
    iput-object p10, p0, Lcom/intermedia/MainActivity_MembersInjector;->logoutManagerProvider:Ljavax/inject/Provider;

    .line 86
    iput-object p11, p0, Lcom/intermedia/MainActivity_MembersInjector;->sessionManagerProvider:Ljavax/inject/Provider;

    .line 88
    iput-object p12, p0, Lcom/intermedia/MainActivity_MembersInjector;->showTimeRepositoryProvider:Ljavax/inject/Provider;

    .line 90
    iput-object p13, p0, Lcom/intermedia/MainActivity_MembersInjector;->userConfigRepositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 15
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
            "Lcom/intermedia/user/AvatarUploader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/libs/DeviceRegistrar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/LogoutManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/game/ShowTimeRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/config/UserConfigRepository;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/MainActivity;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v14, Lcom/intermedia/MainActivity_MembersInjector;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/intermedia/MainActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v14
.end method

.method public static injectAvatarUploader(Lcom/intermedia/MainActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/MainActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/AvatarUploader;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/user/AvatarUploader;

    iput-object p1, p0, Lcom/intermedia/MainActivity;->avatarUploader:Lcom/intermedia/user/AvatarUploader;

    return-void
.end method

.method public static injectDeviceRegistrar(Lcom/intermedia/MainActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/MainActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/libs/DeviceRegistrar;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/libs/DeviceRegistrar;

    iput-object p1, p0, Lcom/intermedia/MainActivity;->deviceRegistrar:Lcom/intermedia/libs/DeviceRegistrar;

    return-void
.end method

.method public static injectLogoutManager(Lcom/intermedia/MainActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/MainActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/LogoutManager;",
            ">;)V"
        }
    .end annotation

    .line 162
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/user/session/LogoutManager;

    iput-object p1, p0, Lcom/intermedia/MainActivity;->logoutManager:Lcom/intermedia/user/session/LogoutManager;

    return-void
.end method

.method public static injectSessionManager(Lcom/intermedia/MainActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/MainActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;)V"
        }
    .end annotation

    .line 167
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/user/session/SessionManager;

    iput-object p1, p0, Lcom/intermedia/MainActivity;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    return-void
.end method

.method public static injectShowTimeRepository(Lcom/intermedia/MainActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/MainActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/game/ShowTimeRepository;",
            ">;)V"
        }
    .end annotation

    .line 172
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/game/ShowTimeRepository;

    iput-object p1, p0, Lcom/intermedia/MainActivity;->showTimeRepository:Lcom/intermedia/game/ShowTimeRepository;

    return-void
.end method

.method public static injectUserConfigRepository(Lcom/intermedia/MainActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/MainActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/config/UserConfigRepository;",
            ">;)V"
        }
    .end annotation

    .line 177
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/config/UserConfigRepository;

    iput-object p1, p0, Lcom/intermedia/MainActivity;->userConfigRepository:Lcom/intermedia/config/UserConfigRepository;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/intermedia/MainActivity;)V
    .locals 1

    if-nez p1, :cond_0

    .line 126
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Cannot inject members into a null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/intermedia/MainActivity_MembersInjector;->connectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    .line 129
    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectConnectivitySnackbarPresenter(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 130
    iget-object v0, p0, Lcom/intermedia/MainActivity_MembersInjector;->authedApiProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectAuthedApi(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 132
    iget-object v0, p0, Lcom/intermedia/MainActivity_MembersInjector;->debugReporterProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectDebugReporter(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 134
    iget-object v0, p0, Lcom/intermedia/MainActivity_MembersInjector;->loggedOutApiProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectLoggedOutApi(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 136
    iget-object v0, p0, Lcom/intermedia/MainActivity_MembersInjector;->connectivityManagerProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectConnectivityManager(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 138
    iget-object v0, p0, Lcom/intermedia/MainActivity_MembersInjector;->defaultSharedPrefsProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectDefaultSharedPrefs(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 140
    iget-object v0, p0, Lcom/intermedia/MainActivity_MembersInjector;->userRepositoryProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectUserRepository(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 142
    iget-object v0, p0, Lcom/intermedia/MainActivity_MembersInjector;->avatarUploaderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/user/AvatarUploader;

    iput-object v0, p1, Lcom/intermedia/MainActivity;->avatarUploader:Lcom/intermedia/user/AvatarUploader;

    .line 143
    iget-object v0, p0, Lcom/intermedia/MainActivity_MembersInjector;->deviceRegistrarProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/libs/DeviceRegistrar;

    iput-object v0, p1, Lcom/intermedia/MainActivity;->deviceRegistrar:Lcom/intermedia/libs/DeviceRegistrar;

    .line 144
    iget-object v0, p0, Lcom/intermedia/MainActivity_MembersInjector;->logoutManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/user/session/LogoutManager;

    iput-object v0, p1, Lcom/intermedia/MainActivity;->logoutManager:Lcom/intermedia/user/session/LogoutManager;

    .line 145
    iget-object v0, p0, Lcom/intermedia/MainActivity_MembersInjector;->sessionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/user/session/SessionManager;

    iput-object v0, p1, Lcom/intermedia/MainActivity;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    .line 146
    iget-object v0, p0, Lcom/intermedia/MainActivity_MembersInjector;->showTimeRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/game/ShowTimeRepository;

    iput-object v0, p1, Lcom/intermedia/MainActivity;->showTimeRepository:Lcom/intermedia/game/ShowTimeRepository;

    .line 147
    iget-object v0, p0, Lcom/intermedia/MainActivity_MembersInjector;->userConfigRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/config/UserConfigRepository;

    iput-object v0, p1, Lcom/intermedia/MainActivity;->userConfigRepository:Lcom/intermedia/config/UserConfigRepository;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/intermedia/MainActivity;

    invoke-virtual {p0, p1}, Lcom/intermedia/MainActivity_MembersInjector;->injectMembers(Lcom/intermedia/MainActivity;)V

    return-void
.end method
