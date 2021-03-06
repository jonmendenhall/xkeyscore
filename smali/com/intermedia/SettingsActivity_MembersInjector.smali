.class public final Lcom/intermedia/SettingsActivity_MembersInjector;
.super Ljava/lang/Object;
.source "SettingsActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/intermedia/SettingsActivity;",
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

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lcom/intermedia/config/UserConfigRepository;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/intermedia/SettingsActivity_MembersInjector;->connectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p2, p0, Lcom/intermedia/SettingsActivity_MembersInjector;->authedApiProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p3, p0, Lcom/intermedia/SettingsActivity_MembersInjector;->debugReporterProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p4, p0, Lcom/intermedia/SettingsActivity_MembersInjector;->loggedOutApiProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p5, p0, Lcom/intermedia/SettingsActivity_MembersInjector;->connectivityManagerProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p6, p0, Lcom/intermedia/SettingsActivity_MembersInjector;->defaultSharedPrefsProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p7, p0, Lcom/intermedia/SettingsActivity_MembersInjector;->userRepositoryProvider:Ljavax/inject/Provider;

    .line 72
    iput-object p8, p0, Lcom/intermedia/SettingsActivity_MembersInjector;->avatarUploaderProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p9, p0, Lcom/intermedia/SettingsActivity_MembersInjector;->deviceRegistrarProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p10, p0, Lcom/intermedia/SettingsActivity_MembersInjector;->logoutManagerProvider:Ljavax/inject/Provider;

    .line 78
    iput-object p11, p0, Lcom/intermedia/SettingsActivity_MembersInjector;->userConfigRepositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 13
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
            "Lcom/intermedia/config/UserConfigRepository;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/SettingsActivity;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v12, Lcom/intermedia/SettingsActivity_MembersInjector;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/intermedia/SettingsActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v12
.end method

.method public static injectAvatarUploader(Lcom/intermedia/SettingsActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/SettingsActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/AvatarUploader;",
            ">;)V"
        }
    .end annotation

    .line 134
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/user/AvatarUploader;

    iput-object p1, p0, Lcom/intermedia/SettingsActivity;->avatarUploader:Lcom/intermedia/user/AvatarUploader;

    return-void
.end method

.method public static injectDeviceRegistrar(Lcom/intermedia/SettingsActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/SettingsActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/libs/DeviceRegistrar;",
            ">;)V"
        }
    .end annotation

    .line 139
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/libs/DeviceRegistrar;

    iput-object p1, p0, Lcom/intermedia/SettingsActivity;->deviceRegistrar:Lcom/intermedia/libs/DeviceRegistrar;

    return-void
.end method

.method public static injectLogoutManager(Lcom/intermedia/SettingsActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/SettingsActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/LogoutManager;",
            ">;)V"
        }
    .end annotation

    .line 144
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/user/session/LogoutManager;

    iput-object p1, p0, Lcom/intermedia/SettingsActivity;->logoutManager:Lcom/intermedia/user/session/LogoutManager;

    return-void
.end method

.method public static injectUserConfigRepository(Lcom/intermedia/SettingsActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/SettingsActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/config/UserConfigRepository;",
            ">;)V"
        }
    .end annotation

    .line 149
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/config/UserConfigRepository;

    iput-object p1, p0, Lcom/intermedia/SettingsActivity;->userConfigRepository:Lcom/intermedia/config/UserConfigRepository;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/intermedia/SettingsActivity;)V
    .locals 1

    if-nez p1, :cond_0

    .line 110
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Cannot inject members into a null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/intermedia/SettingsActivity_MembersInjector;->connectivitySnackbarPresenterProvider:Ljavax/inject/Provider;

    .line 113
    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectConnectivitySnackbarPresenter(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 114
    iget-object v0, p0, Lcom/intermedia/SettingsActivity_MembersInjector;->authedApiProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectAuthedApi(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 116
    iget-object v0, p0, Lcom/intermedia/SettingsActivity_MembersInjector;->debugReporterProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectDebugReporter(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 118
    iget-object v0, p0, Lcom/intermedia/SettingsActivity_MembersInjector;->loggedOutApiProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectLoggedOutApi(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 120
    iget-object v0, p0, Lcom/intermedia/SettingsActivity_MembersInjector;->connectivityManagerProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectConnectivityManager(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 122
    iget-object v0, p0, Lcom/intermedia/SettingsActivity_MembersInjector;->defaultSharedPrefsProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectDefaultSharedPrefs(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 124
    iget-object v0, p0, Lcom/intermedia/SettingsActivity_MembersInjector;->userRepositoryProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/intermedia/injection/BaseInjectedActivity_MembersInjector;->injectUserRepository(Lcom/intermedia/injection/BaseInjectedActivity;Ljavax/inject/Provider;)V

    .line 126
    iget-object v0, p0, Lcom/intermedia/SettingsActivity_MembersInjector;->avatarUploaderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/user/AvatarUploader;

    iput-object v0, p1, Lcom/intermedia/SettingsActivity;->avatarUploader:Lcom/intermedia/user/AvatarUploader;

    .line 127
    iget-object v0, p0, Lcom/intermedia/SettingsActivity_MembersInjector;->deviceRegistrarProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/libs/DeviceRegistrar;

    iput-object v0, p1, Lcom/intermedia/SettingsActivity;->deviceRegistrar:Lcom/intermedia/libs/DeviceRegistrar;

    .line 128
    iget-object v0, p0, Lcom/intermedia/SettingsActivity_MembersInjector;->logoutManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/user/session/LogoutManager;

    iput-object v0, p1, Lcom/intermedia/SettingsActivity;->logoutManager:Lcom/intermedia/user/session/LogoutManager;

    .line 129
    iget-object v0, p0, Lcom/intermedia/SettingsActivity_MembersInjector;->userConfigRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/config/UserConfigRepository;

    iput-object v0, p1, Lcom/intermedia/SettingsActivity;->userConfigRepository:Lcom/intermedia/config/UserConfigRepository;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/intermedia/SettingsActivity;

    invoke-virtual {p0, p1}, Lcom/intermedia/SettingsActivity_MembersInjector;->injectMembers(Lcom/intermedia/SettingsActivity;)V

    return-void
.end method
