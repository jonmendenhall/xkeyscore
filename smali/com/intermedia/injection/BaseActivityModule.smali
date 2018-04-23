.class public Lcom/intermedia/injection/BaseActivityModule;
.super Ljava/lang/Object;
.source "BaseActivityModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/intermedia/injection/BaseActivityModule;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method provideConnectivitySnackbarPresenter(Lcom/intermedia/network/NetworkConnectivityManager;)Lcom/intermedia/network/ConnectivitySnackbarPresenter;
    .locals 2
    .param p1    # Lcom/intermedia/network/NetworkConnectivityManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 24
    new-instance v0, Lcom/intermedia/network/ConnectivitySnackbarPresenter;

    iget-object v1, p0, Lcom/intermedia/injection/BaseActivityModule;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/intermedia/network/ConnectivitySnackbarPresenter;-><init>(Landroid/app/Activity;Lcom/intermedia/network/NetworkConnectivityManager;)V

    return-object v0
.end method
