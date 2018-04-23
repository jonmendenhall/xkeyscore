.class public Lcom/intermedia/network/ConnectivitySnackbarPresenter;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivitySnackbarPresenter.java"


# instance fields
.field private final activity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final networkConnectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field networkIsNotAvailable:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f11013e
    .end annotation
.end field

.field private noNetworkSnackbar:Landroid/support/design/widget/Snackbar;

.field redColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f060089
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/intermedia/network/NetworkConnectivityManager;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/network/NetworkConnectivityManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 29
    iput-object p1, p0, Lcom/intermedia/network/ConnectivitySnackbarPresenter;->activity:Landroid/app/Activity;

    .line 30
    iput-object p2, p0, Lcom/intermedia/network/ConnectivitySnackbarPresenter;->networkConnectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 35
    iget-object p1, p0, Lcom/intermedia/network/ConnectivitySnackbarPresenter;->networkConnectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;

    invoke-virtual {p1}, Lcom/intermedia/network/NetworkConnectivityManager;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/intermedia/network/ConnectivitySnackbarPresenter;->noNetworkSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-static {p1}, Lcom/intermedia/util/NullableUtils;->isNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 37
    iget-object p1, p0, Lcom/intermedia/network/ConnectivitySnackbarPresenter;->activity:Landroid/app/Activity;

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/intermedia/network/ConnectivitySnackbarPresenter;->networkIsNotAvailable:Ljava/lang/String;

    const/4 v0, -0x2

    invoke-static {p1, p2, v0}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/network/ConnectivitySnackbarPresenter;->noNetworkSnackbar:Landroid/support/design/widget/Snackbar;

    .line 40
    iget-object p1, p0, Lcom/intermedia/network/ConnectivitySnackbarPresenter;->noNetworkSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/intermedia/network/ConnectivitySnackbarPresenter;->redColor:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 41
    iget-object p1, p0, Lcom/intermedia/network/ConnectivitySnackbarPresenter;->noNetworkSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/intermedia/network/ConnectivitySnackbarPresenter;->noNetworkSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-static {p1}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 45
    iget-object p1, p0, Lcom/intermedia/network/ConnectivitySnackbarPresenter;->noNetworkSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->dismiss()V

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/intermedia/network/ConnectivitySnackbarPresenter;->noNetworkSnackbar:Landroid/support/design/widget/Snackbar;

    :cond_1
    :goto_0
    return-void
.end method
