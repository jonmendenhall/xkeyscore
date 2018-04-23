.class public final Lcom/intermedia/ExternalApplicationModule_ProvideOkHttpClientBuilderWithStethoFactory;
.super Ljava/lang/Object;
.source "ExternalApplicationModule_ProvideOkHttpClientBuilderWithStethoFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lokhttp3/OkHttpClient$Builder;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final builderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/intermedia/ExternalApplicationModule;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/intermedia/ExternalApplicationModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/ExternalApplicationModule;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient$Builder;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/intermedia/ExternalApplicationModule_ProvideOkHttpClientBuilderWithStethoFactory;->module:Lcom/intermedia/ExternalApplicationModule;

    .line 24
    iput-object p2, p0, Lcom/intermedia/ExternalApplicationModule_ProvideOkHttpClientBuilderWithStethoFactory;->builderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/intermedia/ExternalApplicationModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/ExternalApplicationModule;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient$Builder;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lokhttp3/OkHttpClient$Builder;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/intermedia/ExternalApplicationModule_ProvideOkHttpClientBuilderWithStethoFactory;

    invoke-direct {v0, p0, p1}, Lcom/intermedia/ExternalApplicationModule_ProvideOkHttpClientBuilderWithStethoFactory;-><init>(Lcom/intermedia/ExternalApplicationModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvideOkHttpClientBuilderWithStetho(Lcom/intermedia/ExternalApplicationModule;Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/intermedia/ExternalApplicationModule;->provideOkHttpClientBuilderWithStetho(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/intermedia/ExternalApplicationModule_ProvideOkHttpClientBuilderWithStethoFactory;->get()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/OkHttpClient$Builder;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/intermedia/ExternalApplicationModule_ProvideOkHttpClientBuilderWithStethoFactory;->module:Lcom/intermedia/ExternalApplicationModule;

    iget-object v1, p0, Lcom/intermedia/ExternalApplicationModule_ProvideOkHttpClientBuilderWithStethoFactory;->builderProvider:Ljavax/inject/Provider;

    .line 30
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0, v1}, Lcom/intermedia/ExternalApplicationModule;->provideOkHttpClientBuilderWithStetho(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 29
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    return-object v0
.end method
