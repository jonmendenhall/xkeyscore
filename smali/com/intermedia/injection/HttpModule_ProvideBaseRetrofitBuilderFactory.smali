.class public final Lcom/intermedia/injection/HttpModule_ProvideBaseRetrofitBuilderFactory;
.super Ljava/lang/Object;
.source "HttpModule_ProvideBaseRetrofitBuilderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lretrofit2/Retrofit$Builder;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final clientBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final gsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/intermedia/injection/HttpModule;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/intermedia/injection/HttpModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/injection/HttpModule;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient$Builder;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/intermedia/injection/HttpModule_ProvideBaseRetrofitBuilderFactory;->module:Lcom/intermedia/injection/HttpModule;

    .line 30
    iput-object p2, p0, Lcom/intermedia/injection/HttpModule_ProvideBaseRetrofitBuilderFactory;->gsonProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/intermedia/injection/HttpModule_ProvideBaseRetrofitBuilderFactory;->clientBuilderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/intermedia/injection/HttpModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/injection/HttpModule;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient$Builder;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lretrofit2/Retrofit$Builder;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/intermedia/injection/HttpModule_ProvideBaseRetrofitBuilderFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/intermedia/injection/HttpModule_ProvideBaseRetrofitBuilderFactory;-><init>(Lcom/intermedia/injection/HttpModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvideBaseRetrofitBuilder(Lcom/intermedia/injection/HttpModule;Lcom/google/gson/Gson;Lokhttp3/OkHttpClient$Builder;)Lretrofit2/Retrofit$Builder;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/intermedia/injection/HttpModule;->provideBaseRetrofitBuilder(Lcom/google/gson/Gson;Lokhttp3/OkHttpClient$Builder;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/intermedia/injection/HttpModule_ProvideBaseRetrofitBuilderFactory;->get()Lretrofit2/Retrofit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public get()Lretrofit2/Retrofit$Builder;
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/intermedia/injection/HttpModule_ProvideBaseRetrofitBuilderFactory;->module:Lcom/intermedia/injection/HttpModule;

    iget-object v1, p0, Lcom/intermedia/injection/HttpModule_ProvideBaseRetrofitBuilderFactory;->gsonProvider:Ljavax/inject/Provider;

    .line 38
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/intermedia/injection/HttpModule_ProvideBaseRetrofitBuilderFactory;->clientBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/intermedia/injection/HttpModule;->provideBaseRetrofitBuilder(Lcom/google/gson/Gson;Lokhttp3/OkHttpClient$Builder;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 37
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Retrofit$Builder;

    return-object v0
.end method
