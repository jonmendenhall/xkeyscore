.class public abstract Lcom/intermedia/injection/BaseInjectedActivity;
.super Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;
.source "BaseInjectedActivity.java"


# instance fields
.field protected authedApi:Lcom/intermedia/network/AuthedApiService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected connectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected connectivitySnackbarPresenter:Lcom/intermedia/network/ConnectivitySnackbarPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected debugReporter:Lcom/intermedia/util/logging/DebugReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected defaultSharedPrefs:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected loggedOutApi:Lcom/intermedia/network/LoggedOutApiService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected userRepository:Lcom/intermedia/user/UserRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract inject(Lcom/intermedia/injection/BaseActivityComponent;)V
    .param p1    # Lcom/intermedia/injection/BaseActivityComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-super {p0, p1}, Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-static {}, Lcom/intermedia/injection/UserObjectGraph;->get()Lcom/intermedia/injection/UserComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/intermedia/injection/UserComponent;->newActivityComponent()Lcom/intermedia/injection/BaseActivityComponent$Builder;

    move-result-object p1

    new-instance v0, Lcom/intermedia/injection/BaseActivityModule;

    invoke-direct {v0, p0}, Lcom/intermedia/injection/BaseActivityModule;-><init>(Landroid/app/Activity;)V

    .line 31
    invoke-interface {p1, v0}, Lcom/intermedia/injection/BaseActivityComponent$Builder;->activityModule(Lcom/intermedia/injection/BaseActivityModule;)Lcom/intermedia/injection/BaseActivityComponent$Builder;

    move-result-object p1

    .line 32
    invoke-interface {p1}, Lcom/intermedia/injection/BaseActivityComponent$Builder;->build()Lcom/intermedia/injection/BaseActivityComponent;

    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/intermedia/injection/BaseInjectedActivity;->inject(Lcom/intermedia/injection/BaseActivityComponent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;->onPause()V

    .line 44
    iget-object v0, p0, Lcom/intermedia/injection/BaseInjectedActivity;->connectivitySnackbarPresenter:Lcom/intermedia/network/ConnectivitySnackbarPresenter;

    invoke-virtual {p0, v0}, Lcom/intermedia/injection/BaseInjectedActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 37
    invoke-super {p0}, Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;->onResume()V

    .line 38
    iget-object v0, p0, Lcom/intermedia/injection/BaseInjectedActivity;->connectivitySnackbarPresenter:Lcom/intermedia/network/ConnectivitySnackbarPresenter;

    sget-object v1, Lcom/intermedia/network/NetworkConnectivityManager;->FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/intermedia/injection/BaseInjectedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
