.class final Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;
.super Ljava/lang/Object;
.source "DaggerApplicationComponent.java"

# interfaces
.implements Lcom/intermedia/injection/UserComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/DaggerApplicationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentImpl;,
        Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$BaseActivityComponentBuilder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private accessTokenRefresherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/AccessTokenRefresher;",
            ">;"
        }
    .end annotation
.end field

.field private avatarUploaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/AvatarUploader;",
            ">;"
        }
    .end annotation
.end field

.field private deviceRegistrarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/libs/DeviceRegistrar;",
            ">;"
        }
    .end annotation
.end field

.field private logoutManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/LogoutManager;",
            ">;"
        }
    .end annotation
.end field

.field private newActivityComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/injection/BaseActivityComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private provideAuthenticatedApiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/AuthedApiService;",
            ">;"
        }
    .end annotation
.end field

.field private provideUserConfigSharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private socketSessionReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/av/media/SocketSessionReporter;",
            ">;"
        }
    .end annotation
.end field

.field private stkHeaderInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/StkHeaderInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/intermedia/DaggerApplicationComponent;

.field private unauthorizedResponseInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/UnauthorizedResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private userConfigRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/config/UserConfigRepository;",
            ">;"
        }
    .end annotation
.end field

.field private userRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/UserRepository;",
            ">;"
        }
    .end annotation
.end field

.field private viewModelMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private viewModelMembersInjector2:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private viewModelMembersInjector3:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private viewModelMembersInjector4:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private viewModelMembersInjector5:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 414
    const-class v0, Lcom/intermedia/DaggerApplicationComponent;

    return-void
.end method

.method private constructor <init>(Lcom/intermedia/DaggerApplicationComponent;Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    invoke-direct {p0, p2}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->initialize(Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/intermedia/DaggerApplicationComponent;Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;Lcom/intermedia/DaggerApplicationComponent$1;)V
    .locals 0

    .line 414
    invoke-direct {p0, p1, p2}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;-><init>(Lcom/intermedia/DaggerApplicationComponent;Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 414
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->provideAuthenticatedApiServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 414
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->userRepositoryProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 414
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->socketSessionReporterProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 414
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->userConfigRepositoryProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 414
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->avatarUploaderProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 414
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->deviceRegistrarProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 414
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->logoutManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method private initialize(Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;)V
    .locals 8

    .line 457
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 460
    invoke-static {v0}, Lcom/intermedia/DaggerApplicationComponent;->access$700(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 461
    invoke-static {v1}, Lcom/intermedia/DaggerApplicationComponent;->access$800(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 459
    invoke-static {v0, v1}, Lcom/intermedia/user/UserRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 458
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->userRepositoryProvider:Ljavax/inject/Provider;

    .line 463
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 466
    invoke-static {v0}, Lcom/intermedia/DaggerApplicationComponent;->access$700(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 467
    invoke-static {v1}, Lcom/intermedia/DaggerApplicationComponent;->access$800(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->userRepositoryProvider:Ljavax/inject/Provider;

    .line 465
    invoke-static {v0, v1, v2}, Lcom/intermedia/user/session/LogoutManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 464
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->logoutManagerProvider:Ljavax/inject/Provider;

    .line 470
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 473
    invoke-static {v0}, Lcom/intermedia/DaggerApplicationComponent;->access$900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 474
    invoke-static {v1}, Lcom/intermedia/DaggerApplicationComponent;->access$1000(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 475
    invoke-static {v2}, Lcom/intermedia/DaggerApplicationComponent;->access$800(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->logoutManagerProvider:Ljavax/inject/Provider;

    .line 472
    invoke-static {v0, v1, v2, v3}, Lcom/intermedia/user/session/AccessTokenRefresher_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 471
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->accessTokenRefresherProvider:Ljavax/inject/Provider;

    .line 478
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->accessTokenRefresherProvider:Ljavax/inject/Provider;

    .line 480
    invoke-static {v0}, Lcom/intermedia/user/session/UnauthorizedResponseInterceptor_Factory;->create(Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 479
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->unauthorizedResponseInterceptorProvider:Ljavax/inject/Provider;

    .line 482
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->userRepositoryProvider:Ljavax/inject/Provider;

    .line 483
    invoke-static {v0}, Lcom/intermedia/user/StkHeaderInterceptor_Factory;->create(Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->stkHeaderInterceptorProvider:Ljavax/inject/Provider;

    .line 488
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;->access$1100(Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;)Lcom/intermedia/injection/UserModule;

    move-result-object v1

    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 489
    invoke-static {v0}, Lcom/intermedia/DaggerApplicationComponent;->access$1200(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 490
    invoke-static {v0}, Lcom/intermedia/DaggerApplicationComponent;->access$1300(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 491
    invoke-static {v0}, Lcom/intermedia/DaggerApplicationComponent;->access$800(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 492
    invoke-static {v0}, Lcom/intermedia/DaggerApplicationComponent;->access$1400(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v6, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->unauthorizedResponseInterceptorProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->stkHeaderInterceptorProvider:Ljavax/inject/Provider;

    .line 487
    invoke-static/range {v1 .. v7}, Lcom/intermedia/injection/UserModule_ProvideAuthenticatedApiServiceFactory;->create(Lcom/intermedia/injection/UserModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 486
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->provideAuthenticatedApiServiceProvider:Ljavax/inject/Provider;

    .line 496
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 498
    invoke-static {v0}, Lcom/intermedia/DaggerApplicationComponent;->access$1000(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->provideAuthenticatedApiServiceProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 500
    invoke-static {v2}, Lcom/intermedia/DaggerApplicationComponent;->access$900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 501
    invoke-static {v3}, Lcom/intermedia/DaggerApplicationComponent;->access$800(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->userRepositoryProvider:Ljavax/inject/Provider;

    .line 497
    invoke-static {v0, v1, v2, v3, v4}, Lcom/intermedia/viewmodels/AddReferralDialogViewModel_ViewModel_MembersInjector;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->viewModelMembersInjector:Ldagger/MembersInjector;

    .line 504
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 506
    invoke-static {v0}, Lcom/intermedia/DaggerApplicationComponent;->access$1000(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->provideAuthenticatedApiServiceProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 508
    invoke-static {v2}, Lcom/intermedia/DaggerApplicationComponent;->access$900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 509
    invoke-static {v3}, Lcom/intermedia/DaggerApplicationComponent;->access$800(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->userRepositoryProvider:Ljavax/inject/Provider;

    .line 505
    invoke-static {v0, v1, v2, v3, v4}, Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel_ViewModel_MembersInjector;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->viewModelMembersInjector2:Ldagger/MembersInjector;

    .line 512
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->provideAuthenticatedApiServiceProvider:Ljavax/inject/Provider;

    .line 513
    invoke-static {v0}, Lcom/intermedia/friends/InGameFriendsViewModel_ViewModel_MembersInjector;->create(Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->viewModelMembersInjector3:Ldagger/MembersInjector;

    .line 516
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->provideAuthenticatedApiServiceProvider:Ljavax/inject/Provider;

    .line 517
    invoke-static {v0}, Lcom/intermedia/viewmodels/LeaderboardViewModel_ViewModel_MembersInjector;->create(Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->viewModelMembersInjector4:Ldagger/MembersInjector;

    .line 520
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->provideAuthenticatedApiServiceProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->userRepositoryProvider:Ljavax/inject/Provider;

    .line 521
    invoke-static {v0, v1}, Lcom/intermedia/viewmodels/SettingsViewModel_ViewModel_MembersInjector;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->viewModelMembersInjector5:Ldagger/MembersInjector;

    .line 524
    new-instance v0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$1;

    invoke-direct {v0, p0}, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl$1;-><init>(Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;)V

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->newActivityComponentProvider:Ljavax/inject/Provider;

    .line 532
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 535
    invoke-static {v0}, Lcom/intermedia/DaggerApplicationComponent;->access$800(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 534
    invoke-static {v0}, Lcom/intermedia/av/media/SocketSessionReporter_Factory;->create(Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 533
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->socketSessionReporterProvider:Ljavax/inject/Provider;

    .line 540
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;->access$1100(Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;)Lcom/intermedia/injection/UserModule;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 541
    invoke-static {v0}, Lcom/intermedia/DaggerApplicationComponent;->access$700(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 539
    invoke-static {p1, v0}, Lcom/intermedia/injection/UserModule_ProvideUserConfigSharedPreferencesFactory;->create(Lcom/intermedia/injection/UserModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object p1

    .line 538
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->provideUserConfigSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 543
    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->provideAuthenticatedApiServiceProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->provideUserConfigSharedPreferencesProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 548
    invoke-static {v1}, Lcom/intermedia/DaggerApplicationComponent;->access$800(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 549
    invoke-static {v2}, Lcom/intermedia/DaggerApplicationComponent;->access$1000(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 545
    invoke-static {p1, v0, v1, v2}, Lcom/intermedia/config/UserConfigRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object p1

    .line 544
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->userConfigRepositoryProvider:Ljavax/inject/Provider;

    .line 551
    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->provideAuthenticatedApiServiceProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 555
    invoke-static {v0}, Lcom/intermedia/DaggerApplicationComponent;->access$700(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 556
    invoke-static {v1}, Lcom/intermedia/DaggerApplicationComponent;->access$800(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 557
    invoke-static {v2}, Lcom/intermedia/DaggerApplicationComponent;->access$1600(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->userRepositoryProvider:Ljavax/inject/Provider;

    .line 553
    invoke-static {p1, v0, v1, v2, v3}, Lcom/intermedia/user/AvatarUploader_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object p1

    .line 552
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->avatarUploaderProvider:Ljavax/inject/Provider;

    .line 560
    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 563
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent;->access$800(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->provideAuthenticatedApiServiceProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->userRepositoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->this$0:Lcom/intermedia/DaggerApplicationComponent;

    .line 566
    invoke-static {v2}, Lcom/intermedia/DaggerApplicationComponent;->access$1600(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 562
    invoke-static {p1, v0, v1, v2}, Lcom/intermedia/libs/DeviceRegistrar_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object p1

    .line 561
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->deviceRegistrarProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public inject(Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;)V
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->viewModelMembersInjector3:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;)V
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->viewModelMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;)V
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->viewModelMembersInjector2:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;)V
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->viewModelMembersInjector4:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;)V
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->viewModelMembersInjector5:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public newActivityComponent()Lcom/intermedia/injection/BaseActivityComponent$Builder;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;->newActivityComponentProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/injection/BaseActivityComponent$Builder;

    return-object v0
.end method
