.class public final Lcom/intermedia/injection/BaseActivityModule_ProvideConnectivitySnackbarPresenterFactory;
.super Ljava/lang/Object;
.source "BaseActivityModule_ProvideConnectivitySnackbarPresenterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/intermedia/network/ConnectivitySnackbarPresenter;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final module:Lcom/intermedia/injection/BaseActivityModule;

.field private final networkConnectivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/NetworkConnectivityManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/intermedia/injection/BaseActivityModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/injection/BaseActivityModule;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/NetworkConnectivityManager;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/intermedia/injection/BaseActivityModule_ProvideConnectivitySnackbarPresenterFactory;->module:Lcom/intermedia/injection/BaseActivityModule;

    .line 26
    iput-object p2, p0, Lcom/intermedia/injection/BaseActivityModule_ProvideConnectivitySnackbarPresenterFactory;->networkConnectivityManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/intermedia/injection/BaseActivityModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/injection/BaseActivityModule;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/NetworkConnectivityManager;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/intermedia/network/ConnectivitySnackbarPresenter;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/intermedia/injection/BaseActivityModule_ProvideConnectivitySnackbarPresenterFactory;

    invoke-direct {v0, p0, p1}, Lcom/intermedia/injection/BaseActivityModule_ProvideConnectivitySnackbarPresenterFactory;-><init>(Lcom/intermedia/injection/BaseActivityModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvideConnectivitySnackbarPresenter(Lcom/intermedia/injection/BaseActivityModule;Lcom/intermedia/network/NetworkConnectivityManager;)Lcom/intermedia/network/ConnectivitySnackbarPresenter;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/intermedia/injection/BaseActivityModule;->provideConnectivitySnackbarPresenter(Lcom/intermedia/network/NetworkConnectivityManager;)Lcom/intermedia/network/ConnectivitySnackbarPresenter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/intermedia/network/ConnectivitySnackbarPresenter;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/intermedia/injection/BaseActivityModule_ProvideConnectivitySnackbarPresenterFactory;->module:Lcom/intermedia/injection/BaseActivityModule;

    iget-object v1, p0, Lcom/intermedia/injection/BaseActivityModule_ProvideConnectivitySnackbarPresenterFactory;->networkConnectivityManagerProvider:Ljavax/inject/Provider;

    .line 32
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intermedia/network/NetworkConnectivityManager;

    invoke-virtual {v0, v1}, Lcom/intermedia/injection/BaseActivityModule;->provideConnectivitySnackbarPresenter(Lcom/intermedia/network/NetworkConnectivityManager;)Lcom/intermedia/network/ConnectivitySnackbarPresenter;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 31
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/network/ConnectivitySnackbarPresenter;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/intermedia/injection/BaseActivityModule_ProvideConnectivitySnackbarPresenterFactory;->get()Lcom/intermedia/network/ConnectivitySnackbarPresenter;

    move-result-object v0

    return-object v0
.end method
