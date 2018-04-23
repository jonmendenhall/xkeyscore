.class public final Lcom/intermedia/injection/HttpModule_ProvidePicassoBuilderFactory;
.super Ljava/lang/Object;
.source "HttpModule_ProvidePicassoBuilderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/squareup/picasso/Picasso;",
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

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient$Builder;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/intermedia/injection/HttpModule_ProvidePicassoBuilderFactory;->module:Lcom/intermedia/injection/HttpModule;

    .line 29
    iput-object p2, p0, Lcom/intermedia/injection/HttpModule_ProvidePicassoBuilderFactory;->contextProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/intermedia/injection/HttpModule_ProvidePicassoBuilderFactory;->builderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/intermedia/injection/HttpModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/injection/HttpModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient$Builder;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/squareup/picasso/Picasso;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/intermedia/injection/HttpModule_ProvidePicassoBuilderFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/intermedia/injection/HttpModule_ProvidePicassoBuilderFactory;-><init>(Lcom/intermedia/injection/HttpModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidePicassoBuilder(Lcom/intermedia/injection/HttpModule;Landroid/content/Context;Lokhttp3/OkHttpClient$Builder;)Lcom/squareup/picasso/Picasso;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/intermedia/injection/HttpModule;->providePicassoBuilder(Landroid/content/Context;Lokhttp3/OkHttpClient$Builder;)Lcom/squareup/picasso/Picasso;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/squareup/picasso/Picasso;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/intermedia/injection/HttpModule_ProvidePicassoBuilderFactory;->module:Lcom/intermedia/injection/HttpModule;

    iget-object v1, p0, Lcom/intermedia/injection/HttpModule_ProvidePicassoBuilderFactory;->contextProvider:Ljavax/inject/Provider;

    .line 37
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/intermedia/injection/HttpModule_ProvidePicassoBuilderFactory;->builderProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/intermedia/injection/HttpModule;->providePicassoBuilder(Landroid/content/Context;Lokhttp3/OkHttpClient$Builder;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 36
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/intermedia/injection/HttpModule_ProvidePicassoBuilderFactory;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    return-object v0
.end method
