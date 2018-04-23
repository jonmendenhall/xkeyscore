.class public final Lcom/intermedia/injection/UserModule_ProvideAuthenticatedApiServiceFactory;
.super Ljava/lang/Object;
.source "UserModule_ProvideAuthenticatedApiServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/intermedia/network/AuthedApiService;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final apiUrlSupplierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/ApiUrlSupplier;",
            ">;"
        }
    .end annotation
.end field

.field private final clientBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/intermedia/injection/UserModule;

.field private final retrofitBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit$Builder;",
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

.field private final stkHeaderInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/StkHeaderInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final unauthorizedResponseInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/UnauthorizedResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/intermedia/injection/UserModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/injection/UserModule;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/ApiUrlSupplier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/UnauthorizedResponseInterceptor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/StkHeaderInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/intermedia/injection/UserModule_ProvideAuthenticatedApiServiceFactory;->module:Lcom/intermedia/injection/UserModule;

    .line 46
    iput-object p2, p0, Lcom/intermedia/injection/UserModule_ProvideAuthenticatedApiServiceFactory;->retrofitBuilderProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lcom/intermedia/injection/UserModule_ProvideAuthenticatedApiServiceFactory;->clientBuilderProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p4, p0, Lcom/intermedia/injection/UserModule_ProvideAuthenticatedApiServiceFactory;->sessionManagerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p5, p0, Lcom/intermedia/injection/UserModule_ProvideAuthenticatedApiServiceFactory;->apiUrlSupplierProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p6, p0, Lcom/intermedia/injection/UserModule_ProvideAuthenticatedApiServiceFactory;->unauthorizedResponseInterceptorProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p7, p0, Lcom/intermedia/injection/UserModule_ProvideAuthenticatedApiServiceFactory;->stkHeaderInterceptorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/intermedia/injection/UserModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/injection/UserModule;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/SessionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/ApiUrlSupplier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/session/UnauthorizedResponseInterceptor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/StkHeaderInterceptor;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/intermedia/network/AuthedApiService;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v8, Lcom/intermedia/injection/UserModule_ProvideAuthenticatedApiServiceFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/intermedia/injection/UserModule_ProvideAuthenticatedApiServiceFactory;-><init>(Lcom/intermedia/injection/UserModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static proxyProvideAuthenticatedApiService(Lcom/intermedia/injection/UserModule;Lretrofit2/Retrofit$Builder;Lokhttp3/OkHttpClient$Builder;Lcom/intermedia/user/session/SessionManager;Lcom/intermedia/network/ApiUrlSupplier;Lcom/intermedia/user/session/UnauthorizedResponseInterceptor;Lcom/intermedia/user/StkHeaderInterceptor;)Lcom/intermedia/network/AuthedApiService;
    .locals 0

    .line 103
    invoke-virtual/range {p0 .. p6}, Lcom/intermedia/injection/UserModule;->provideAuthenticatedApiService(Lretrofit2/Retrofit$Builder;Lokhttp3/OkHttpClient$Builder;Lcom/intermedia/user/session/SessionManager;Lcom/intermedia/network/ApiUrlSupplier;Lcom/intermedia/user/session/UnauthorizedResponseInterceptor;Lcom/intermedia/user/StkHeaderInterceptor;)Lcom/intermedia/network/AuthedApiService;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/intermedia/network/AuthedApiService;
    .locals 7

    .line 61
    iget-object v0, p0, Lcom/intermedia/injection/UserModule_ProvideAuthenticatedApiServiceFactory;->module:Lcom/intermedia/injection/UserModule;

    iget-object v1, p0, Lcom/intermedia/injection/UserModule_ProvideAuthenticatedApiServiceFactory;->retrofitBuilderProvider:Ljavax/inject/Provider;

    .line 63
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/Retrofit$Builder;

    iget-object v2, p0, Lcom/intermedia/injection/UserModule_ProvideAuthenticatedApiServiceFactory;->clientBuilderProvider:Ljavax/inject/Provider;

    .line 64
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/OkHttpClient$Builder;

    iget-object v3, p0, Lcom/intermedia/injection/UserModule_ProvideAuthenticatedApiServiceFactory;->sessionManagerProvider:Ljavax/inject/Provider;

    .line 65
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/intermedia/user/session/SessionManager;

    iget-object v4, p0, Lcom/intermedia/injection/UserModule_ProvideAuthenticatedApiServiceFactory;->apiUrlSupplierProvider:Ljavax/inject/Provider;

    .line 66
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/intermedia/network/ApiUrlSupplier;

    iget-object v5, p0, Lcom/intermedia/injection/UserModule_ProvideAuthenticatedApiServiceFactory;->unauthorizedResponseInterceptorProvider:Ljavax/inject/Provider;

    .line 67
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/intermedia/user/session/UnauthorizedResponseInterceptor;

    iget-object v6, p0, Lcom/intermedia/injection/UserModule_ProvideAuthenticatedApiServiceFactory;->stkHeaderInterceptorProvider:Ljavax/inject/Provider;

    .line 68
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/intermedia/user/StkHeaderInterceptor;

    .line 62
    invoke-virtual/range {v0 .. v6}, Lcom/intermedia/injection/UserModule;->provideAuthenticatedApiService(Lretrofit2/Retrofit$Builder;Lokhttp3/OkHttpClient$Builder;Lcom/intermedia/user/session/SessionManager;Lcom/intermedia/network/ApiUrlSupplier;Lcom/intermedia/user/session/UnauthorizedResponseInterceptor;Lcom/intermedia/user/StkHeaderInterceptor;)Lcom/intermedia/network/AuthedApiService;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 61
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/network/AuthedApiService;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/intermedia/injection/UserModule_ProvideAuthenticatedApiServiceFactory;->get()Lcom/intermedia/network/AuthedApiService;

    move-result-object v0

    return-object v0
.end method
