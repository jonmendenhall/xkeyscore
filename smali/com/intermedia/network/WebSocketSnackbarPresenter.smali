.class public Lcom/intermedia/network/WebSocketSnackbarPresenter;
.super Landroid/content/BroadcastReceiver;
.source "WebSocketSnackbarPresenter.java"


# static fields
.field public static final INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final activity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final connectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field reconnecting:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f11016b
    .end annotation
.end field

.field private reconnectingSnackbar:Landroid/support/design/widget/Snackbar;

.field redColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f060089
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/intermedia/network/WebSocketSnackbarPresenter;->INTENT_FILTER:Landroid/content/IntentFilter;

    .line 23
    sget-object v0, Lcom/intermedia/network/WebSocketSnackbarPresenter;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "websocket_connected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/intermedia/network/WebSocketSnackbarPresenter;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "websocket_reconnecting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

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

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/intermedia/network/WebSocketSnackbarPresenter;->connectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;

    .line 38
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 39
    iput-object p1, p0, Lcom/intermedia/network/WebSocketSnackbarPresenter;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intermedia/util/NullableUtils;->isNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6f4b6d5d

    if-eq v0, v1, :cond_2

    const v1, 0x626d3c91

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "websocket_connected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x2

    goto :goto_0

    :cond_2
    const-string v0, "websocket_reconnecting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 63
    iget-object p1, p0, Lcom/intermedia/network/WebSocketSnackbarPresenter;->reconnectingSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-static {p1}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 64
    iget-object p1, p0, Lcom/intermedia/network/WebSocketSnackbarPresenter;->reconnectingSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->dismiss()V

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/intermedia/network/WebSocketSnackbarPresenter;->reconnectingSnackbar:Landroid/support/design/widget/Snackbar;

    goto :goto_1

    .line 51
    :cond_4
    iget-object p1, p0, Lcom/intermedia/network/WebSocketSnackbarPresenter;->connectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;

    invoke-virtual {p1}, Lcom/intermedia/network/NetworkConnectivityManager;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/intermedia/network/WebSocketSnackbarPresenter;->reconnectingSnackbar:Landroid/support/design/widget/Snackbar;

    .line 52
    invoke-static {p1}, Lcom/intermedia/util/NullableUtils;->isNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 53
    iget-object p1, p0, Lcom/intermedia/network/WebSocketSnackbarPresenter;->activity:Landroid/app/Activity;

    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/intermedia/network/WebSocketSnackbarPresenter;->reconnecting:Ljava/lang/String;

    const/4 v0, -0x2

    invoke-static {p1, p2, v0}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/network/WebSocketSnackbarPresenter;->reconnectingSnackbar:Landroid/support/design/widget/Snackbar;

    .line 56
    iget-object p1, p0, Lcom/intermedia/network/WebSocketSnackbarPresenter;->reconnectingSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/intermedia/network/WebSocketSnackbarPresenter;->redColor:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 57
    iget-object p1, p0, Lcom/intermedia/network/WebSocketSnackbarPresenter;->reconnectingSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    :cond_5
    :goto_1
    return-void
.end method
