.class public Lcom/intermedia/login/PhoneVerificationActivity;
.super Lcom/intermedia/injection/BaseInjectedActivity;
.source "PhoneVerificationActivity.java"


# instance fields
.field apiErrorParser:Lcom/intermedia/network/ApiErrorParser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private presenter:Lcom/intermedia/login/PhoneVerificationPresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/intermedia/injection/BaseInjectedActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/app/Activity;I)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/intermedia/login/PhoneVerificationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected inject(Lcom/intermedia/injection/BaseActivityComponent;)V
    .locals 0
    .param p1    # Lcom/intermedia/injection/BaseActivityComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    invoke-interface {p1, p0}, Lcom/intermedia/injection/BaseActivityComponent;->inject(Lcom/intermedia/login/PhoneVerificationActivity;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 30
    invoke-super {p0, p1}, Lcom/intermedia/injection/BaseInjectedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0025

    .line 31
    invoke-virtual {p0, v0}, Lcom/intermedia/login/PhoneVerificationActivity;->setContentView(I)V

    .line 32
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v1, "phoneAuth_started"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/intermedia/login/PhoneVerificationPresenter;

    new-instance v4, Lcom/intermedia/login/PhoneVerificationViewHost;

    const v1, 0x7f0a007d

    .line 35
    invoke-virtual {p0, v1}, Lcom/intermedia/login/PhoneVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/intermedia/login/PhoneVerificationViewHost;-><init>(Landroid/view/View;)V

    iget-object v6, p0, Lcom/intermedia/login/PhoneVerificationActivity;->apiErrorParser:Lcom/intermedia/network/ApiErrorParser;

    iget-object v7, p0, Lcom/intermedia/login/PhoneVerificationActivity;->loggedOutApi:Lcom/intermedia/network/LoggedOutApiService;

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/intermedia/login/PhoneVerificationPresenter;-><init>(Lcom/intermedia/login/PhoneVerificationActivity;Lcom/intermedia/login/PhoneVerificationViewHost;Landroid/os/Bundle;Lcom/intermedia/network/ApiErrorParser;Lcom/intermedia/network/LoggedOutApiService;)V

    iput-object v0, p0, Lcom/intermedia/login/PhoneVerificationActivity;->presenter:Lcom/intermedia/login/PhoneVerificationPresenter;

    .line 37
    iget-object p1, p0, Lcom/intermedia/login/PhoneVerificationActivity;->presenter:Lcom/intermedia/login/PhoneVerificationPresenter;

    invoke-virtual {p1}, Lcom/intermedia/login/PhoneVerificationPresenter;->configure()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/intermedia/injection/BaseInjectedActivity;->onDestroy()V

    .line 54
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationActivity;->presenter:Lcom/intermedia/login/PhoneVerificationPresenter;

    invoke-virtual {v0}, Lcom/intermedia/login/PhoneVerificationPresenter;->release()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-super {p0, p1}, Lcom/intermedia/injection/BaseInjectedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationActivity;->presenter:Lcom/intermedia/login/PhoneVerificationPresenter;

    invoke-virtual {v0, p1}, Lcom/intermedia/login/PhoneVerificationPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
