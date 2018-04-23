.class public final Lcom/intermedia/injection/ApplicationModule_ProvideConnectivityManagerFactory;
.super Ljava/lang/Object;
.source "ApplicationModule_ProvideConnectivityManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/net/ConnectivityManager;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/intermedia/injection/ApplicationModule;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/intermedia/injection/ApplicationModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/injection/ApplicationModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/intermedia/injection/ApplicationModule_ProvideConnectivityManagerFactory;->module:Lcom/intermedia/injection/ApplicationModule;

    .line 25
    iput-object p2, p0, Lcom/intermedia/injection/ApplicationModule_ProvideConnectivityManagerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/intermedia/injection/ApplicationModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/injection/ApplicationModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/intermedia/injection/ApplicationModule_ProvideConnectivityManagerFactory;

    invoke-direct {v0, p0, p1}, Lcom/intermedia/injection/ApplicationModule_ProvideConnectivityManagerFactory;-><init>(Lcom/intermedia/injection/ApplicationModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvideConnectivityManager(Lcom/intermedia/injection/ApplicationModule;Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/intermedia/injection/ApplicationModule;->provideConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Landroid/net/ConnectivityManager;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/intermedia/injection/ApplicationModule_ProvideConnectivityManagerFactory;->module:Lcom/intermedia/injection/ApplicationModule;

    iget-object v1, p0, Lcom/intermedia/injection/ApplicationModule_ProvideConnectivityManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 31
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/intermedia/injection/ApplicationModule;->provideConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/intermedia/injection/ApplicationModule_ProvideConnectivityManagerFactory;->get()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method
