.class public final Lcom/intermedia/DaggerApplicationComponent;
.super Ljava/lang/Object;
.source "DaggerApplicationComponent.java"

# interfaces
.implements Lcom/intermedia/ApplicationComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/DaggerApplicationComponent$UserComponentImpl;,
        Lcom/intermedia/DaggerApplicationComponent$UserComponentBuilder;,
        Lcom/intermedia/DaggerApplicationComponent$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private apiErrorParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/ApiErrorParser;",
            ">;"
        }
    .end annotation
.end field

.field private apiUrlSupplierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/ApiUrlSupplier;",
            ">;"
        }
    .end annotation
.end field

.field private apiUtilsMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/service/ApiUtils;",
            ">;"
        }
    .end annotation
.end field

.field private clientEventReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/util/analytics/ClientEventReporter;",
            ">;"
        }
    .end annotation
.end field

.field private connectivityChangeLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/ConnectivityChangeLogger;",
            ">;"
        }
    .end annotation
.end field

.field private crashlyticsLoggerProvider:Ljavax/inject/Provider;

.field private debugReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/util/logging/DebugReporter;",
            ">;"
        }
    .end annotation
.end field

.field private hQApplicationMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/HQApplication;",
            ">;"
        }
    .end annotation
.end field

.field private logcatLoggerProvider:Ljavax/inject/Provider;

.field private loggedOutConfigRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/config/LoggedOutConfigRepository;",
            ">;"
        }
    .end annotation
.end field

.field private networkConnectivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/NetworkConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideApplicationContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private provideBaseOkHttpClientBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private provideBaseRetrofitBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private provideConnectivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideGsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private provideLoggedOutApiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/LoggedOutApiService;",
            ">;"
        }
    .end annotation
.end field

.field private provideOkHttpClientBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private provideOkHttpClientBuilderWithStethoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private providePicassoBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/squareup/picasso/Picasso;",
            ">;"
        }
    .end annotation
.end field

.field private provideSharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private sessionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;"
        }
    .end annotation
.end field

.field private showTimeRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/game/ShowTimeRepository;",
            ">;"
        }
    .end annotation
.end field

.field private trueTimeInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/initializers/TrueTimeInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private userComponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/injection/UserComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private viewModelMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/login/RegisterUserViewModel$ViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private watchdogFileSupplierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/util/logging/WatchdogFileSupplier;",
            ">;"
        }
    .end annotation
.end field

.field private watchdogLoggerProvider:Ljavax/inject/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/intermedia/DaggerApplicationComponent$Builder;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-direct {p0, p1}, Lcom/intermedia/DaggerApplicationComponent;->initialize(Lcom/intermedia/DaggerApplicationComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/intermedia/DaggerApplicationComponent$Builder;Lcom/intermedia/DaggerApplicationComponent$1;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/intermedia/DaggerApplicationComponent;-><init>(Lcom/intermedia/DaggerApplicationComponent$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent;->apiErrorParserProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideBaseRetrofitBuilderProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideOkHttpClientBuilderProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent;->apiUrlSupplierProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideSharedPreferencesProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent;->networkConnectivityManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent;->debugReporterProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent;->connectivityChangeLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent;->loggedOutConfigRepositoryProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent;->showTimeRepositoryProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$700(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$800(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent;->sessionManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$900(Lcom/intermedia/DaggerApplicationComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideLoggedOutApiServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static builder()Lcom/intermedia/DaggerApplicationComponent$Builder;
    .locals 2

    .line 172
    new-instance v0, Lcom/intermedia/DaggerApplicationComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/intermedia/DaggerApplicationComponent$Builder;-><init>(Lcom/intermedia/DaggerApplicationComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/intermedia/DaggerApplicationComponent$Builder;)V
    .locals 3

    .line 180
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$Builder;->access$100(Lcom/intermedia/DaggerApplicationComponent$Builder;)Lcom/intermedia/injection/ApplicationModule;

    move-result-object v0

    invoke-static {v0}, Lcom/intermedia/injection/ApplicationModule_ProvideSharedPreferencesFactory;->create(Lcom/intermedia/injection/ApplicationModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 179
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 182
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 183
    invoke-static {v0}, Lcom/intermedia/service/ApiUtils_MembersInjector;->create(Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->apiUtilsMembersInjector:Ldagger/MembersInjector;

    .line 187
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$Builder;->access$100(Lcom/intermedia/DaggerApplicationComponent$Builder;)Lcom/intermedia/injection/ApplicationModule;

    move-result-object v0

    invoke-static {v0}, Lcom/intermedia/injection/ApplicationModule_ProvideApplicationContextFactory;->create(Lcom/intermedia/injection/ApplicationModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 186
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    .line 189
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    .line 190
    invoke-static {v0}, Lcom/intermedia/initializers/TrueTimeInitializer_Factory;->create(Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->trueTimeInitializerProvider:Ljavax/inject/Provider;

    .line 192
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->trueTimeInitializerProvider:Ljavax/inject/Provider;

    .line 193
    invoke-static {v0}, Lcom/intermedia/HQApplication_MembersInjector;->create(Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->hQApplicationMembersInjector:Ldagger/MembersInjector;

    .line 197
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$Builder;->access$100(Lcom/intermedia/DaggerApplicationComponent$Builder;)Lcom/intermedia/injection/ApplicationModule;

    move-result-object v0

    invoke-static {v0}, Lcom/intermedia/injection/ApplicationModule_ProvideGsonFactory;->create(Lcom/intermedia/injection/ApplicationModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 196
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideGsonProvider:Ljavax/inject/Provider;

    .line 201
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$Builder;->access$200(Lcom/intermedia/DaggerApplicationComponent$Builder;)Lcom/intermedia/injection/HttpModule;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/DaggerApplicationComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    .line 200
    invoke-static {v0, v1}, Lcom/intermedia/injection/HttpModule_ProvideBaseOkHttpClientBuilderFactory;->create(Lcom/intermedia/injection/HttpModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideBaseOkHttpClientBuilderProvider:Ljavax/inject/Provider;

    .line 205
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$Builder;->access$300(Lcom/intermedia/DaggerApplicationComponent$Builder;)Lcom/intermedia/ExternalApplicationModule;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/DaggerApplicationComponent;->provideBaseOkHttpClientBuilderProvider:Ljavax/inject/Provider;

    .line 204
    invoke-static {v0, v1}, Lcom/intermedia/ExternalApplicationModule_ProvideOkHttpClientBuilderFactory;->create(Lcom/intermedia/ExternalApplicationModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideOkHttpClientBuilderProvider:Ljavax/inject/Provider;

    .line 209
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$Builder;->access$200(Lcom/intermedia/DaggerApplicationComponent$Builder;)Lcom/intermedia/injection/HttpModule;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/DaggerApplicationComponent;->provideGsonProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/intermedia/DaggerApplicationComponent;->provideOkHttpClientBuilderProvider:Ljavax/inject/Provider;

    .line 208
    invoke-static {v0, v1, v2}, Lcom/intermedia/injection/HttpModule_ProvideBaseRetrofitBuilderFactory;->create(Lcom/intermedia/injection/HttpModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideBaseRetrofitBuilderProvider:Ljavax/inject/Provider;

    .line 211
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 212
    invoke-static {v0}, Lcom/intermedia/network/ApiUrlSupplier_Factory;->create(Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->apiUrlSupplierProvider:Ljavax/inject/Provider;

    .line 216
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$Builder;->access$200(Lcom/intermedia/DaggerApplicationComponent$Builder;)Lcom/intermedia/injection/HttpModule;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/DaggerApplicationComponent;->provideBaseRetrofitBuilderProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/intermedia/DaggerApplicationComponent;->apiUrlSupplierProvider:Ljavax/inject/Provider;

    .line 215
    invoke-static {v0, v1, v2}, Lcom/intermedia/injection/HttpModule_ProvideLoggedOutApiServiceFactory;->create(Lcom/intermedia/injection/HttpModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideLoggedOutApiServiceProvider:Ljavax/inject/Provider;

    .line 218
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideLoggedOutApiServiceProvider:Ljavax/inject/Provider;

    .line 219
    invoke-static {v0}, Lcom/intermedia/login/RegisterUserViewModel_ViewModel_MembersInjector;->create(Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->viewModelMembersInjector:Ldagger/MembersInjector;

    .line 221
    new-instance v0, Lcom/intermedia/DaggerApplicationComponent$1;

    invoke-direct {v0, p0}, Lcom/intermedia/DaggerApplicationComponent$1;-><init>(Lcom/intermedia/DaggerApplicationComponent;)V

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->userComponentBuilderProvider:Ljavax/inject/Provider;

    .line 231
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$Builder;->access$300(Lcom/intermedia/DaggerApplicationComponent$Builder;)Lcom/intermedia/ExternalApplicationModule;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/DaggerApplicationComponent;->provideBaseOkHttpClientBuilderProvider:Ljavax/inject/Provider;

    .line 230
    invoke-static {v0, v1}, Lcom/intermedia/ExternalApplicationModule_ProvideOkHttpClientBuilderWithStethoFactory;->create(Lcom/intermedia/ExternalApplicationModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideOkHttpClientBuilderWithStethoProvider:Ljavax/inject/Provider;

    .line 236
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$Builder;->access$200(Lcom/intermedia/DaggerApplicationComponent$Builder;)Lcom/intermedia/injection/HttpModule;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/DaggerApplicationComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/intermedia/DaggerApplicationComponent;->provideOkHttpClientBuilderWithStethoProvider:Ljavax/inject/Provider;

    .line 235
    invoke-static {v0, v1, v2}, Lcom/intermedia/injection/HttpModule_ProvidePicassoBuilderFactory;->create(Lcom/intermedia/injection/HttpModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 234
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->providePicassoBuilderProvider:Ljavax/inject/Provider;

    .line 240
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    .line 241
    invoke-static {v0}, Lcom/intermedia/user/session/SessionManager_Factory;->create(Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->sessionManagerProvider:Ljavax/inject/Provider;

    .line 243
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/intermedia/DaggerApplicationComponent;->provideSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 245
    invoke-static {v0, v1}, Lcom/intermedia/util/logging/WatchdogFileSupplier_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 244
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->watchdogFileSupplierProvider:Ljavax/inject/Provider;

    .line 248
    invoke-static {}, Lcom/intermedia/util/logging/LogcatLogger_Factory;->create()Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->logcatLoggerProvider:Ljavax/inject/Provider;

    .line 250
    invoke-static {}, Lcom/intermedia/util/logging/CrashlyticsLogger_Factory;->create()Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->crashlyticsLoggerProvider:Ljavax/inject/Provider;

    .line 252
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->watchdogFileSupplierProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/intermedia/DaggerApplicationComponent;->trueTimeInitializerProvider:Ljavax/inject/Provider;

    .line 254
    invoke-static {v0, v1}, Lcom/intermedia/util/logging/WatchdogLogger_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 253
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->watchdogLoggerProvider:Ljavax/inject/Provider;

    .line 257
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->logcatLoggerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/intermedia/DaggerApplicationComponent;->crashlyticsLoggerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/intermedia/DaggerApplicationComponent;->watchdogLoggerProvider:Ljavax/inject/Provider;

    .line 259
    invoke-static {v0, v1, v2}, Lcom/intermedia/util/logging/DebugReporter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 258
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->debugReporterProvider:Ljavax/inject/Provider;

    .line 262
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    .line 263
    invoke-static {v0}, Lcom/intermedia/util/analytics/ClientEventReporter_Factory;->create(Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->clientEventReporterProvider:Ljavax/inject/Provider;

    .line 265
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 266
    invoke-static {v0}, Lcom/intermedia/game/ShowTimeRepository_Factory;->create(Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->showTimeRepositoryProvider:Ljavax/inject/Provider;

    .line 271
    invoke-static {p1}, Lcom/intermedia/DaggerApplicationComponent$Builder;->access$100(Lcom/intermedia/DaggerApplicationComponent$Builder;)Lcom/intermedia/injection/ApplicationModule;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    .line 270
    invoke-static {p1, v0}, Lcom/intermedia/injection/ApplicationModule_ProvideConnectivityManagerFactory;->create(Lcom/intermedia/injection/ApplicationModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object p1

    .line 269
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent;->provideConnectivityManagerProvider:Ljavax/inject/Provider;

    .line 273
    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent;->provideConnectivityManagerProvider:Ljavax/inject/Provider;

    .line 275
    invoke-static {p1}, Lcom/intermedia/network/NetworkConnectivityManager_Factory;->create(Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object p1

    .line 274
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent;->networkConnectivityManagerProvider:Ljavax/inject/Provider;

    .line 277
    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent;->provideGsonProvider:Ljavax/inject/Provider;

    .line 278
    invoke-static {p1}, Lcom/intermedia/network/ApiErrorParser_Factory;->create(Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent;->apiErrorParserProvider:Ljavax/inject/Provider;

    .line 283
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->networkConnectivityManagerProvider:Ljavax/inject/Provider;

    .line 282
    invoke-static {p1, v0}, Lcom/intermedia/network/ConnectivityChangeLogger_Factory;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object p1

    .line 281
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent;->connectivityChangeLoggerProvider:Ljavax/inject/Provider;

    .line 286
    iget-object p1, p0, Lcom/intermedia/DaggerApplicationComponent;->provideSharedPreferencesProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideGsonProvider:Ljavax/inject/Provider;

    .line 288
    invoke-static {p1, v0}, Lcom/intermedia/config/LoggedOutConfigRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object p1

    .line 287
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent;->loggedOutConfigRepositoryProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public getClientEventReporter()Lcom/intermedia/util/analytics/ClientEventReporter;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->clientEventReporterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/util/analytics/ClientEventReporter;

    return-object v0
.end method

.method public getDebugReporter()Lcom/intermedia/util/logging/DebugReporter;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->debugReporterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/util/logging/DebugReporter;

    return-object v0
.end method

.method public getGson()Lcom/google/gson/Gson;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->provideGsonProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    return-object v0
.end method

.method public getNetworkConnectivityManager()Lcom/intermedia/network/NetworkConnectivityManager;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->networkConnectivityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/network/NetworkConnectivityManager;

    return-object v0
.end method

.method public getPicasso()Lcom/squareup/picasso/Picasso;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->providePicassoBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method public getSessionManager()Lcom/intermedia/user/session/SessionManager;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->sessionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/user/session/SessionManager;

    return-object v0
.end method

.method public getShowTimeRepository()Lcom/intermedia/game/ShowTimeRepository;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->showTimeRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/game/ShowTimeRepository;

    return-object v0
.end method

.method public getWatchdogFileSupplier()Lcom/intermedia/util/logging/WatchdogFileSupplier;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->watchdogFileSupplierProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/util/logging/WatchdogFileSupplier;

    return-object v0
.end method

.method public inject(Lcom/intermedia/HQApplication;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->hQApplicationMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lcom/intermedia/InternalToolsActivity;)V
    .locals 1

    .line 304
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lcom/intermedia/login/RegisterUserViewModel$ViewModel;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->viewModelMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public inject(Lcom/intermedia/service/ApiUtils;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->apiUtilsMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public newUserComponent()Lcom/intermedia/injection/UserComponent$Builder;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent;->userComponentBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/injection/UserComponent$Builder;

    return-object v0
.end method
