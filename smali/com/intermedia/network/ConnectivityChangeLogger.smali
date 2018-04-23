.class public Lcom/intermedia/network/ConnectivityChangeLogger;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityChangeLogger.java"


# annotations
.annotation runtime Lcom/intermedia/injection/ApplicationScope;
.end annotation


# instance fields
.field private final connectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/intermedia/network/NetworkConnectivityManager;)V
    .locals 0
    .param p1    # Lcom/intermedia/network/NetworkConnectivityManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/intermedia/network/ConnectivityChangeLogger;->connectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 25
    invoke-static {}, Lcom/intermedia/injection/AppObjectGraph;->get()Lcom/intermedia/ApplicationComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/intermedia/ApplicationComponent;->getDebugReporter()Lcom/intermedia/util/logging/DebugReporter;

    move-result-object p1

    iget-object p2, p0, Lcom/intermedia/network/ConnectivityChangeLogger;->connectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;

    invoke-virtual {p2}, Lcom/intermedia/network/NetworkConnectivityManager;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/intermedia/util/logging/events/Connectivity$Changed;

    iget-object v0, p0, Lcom/intermedia/network/ConnectivityChangeLogger;->connectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;

    .line 26
    invoke-virtual {v0}, Lcom/intermedia/network/NetworkConnectivityManager;->getNetworkInfo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/intermedia/util/logging/events/Connectivity$Changed;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/intermedia/util/logging/events/Connectivity$Disconnected;

    invoke-direct {p2}, Lcom/intermedia/util/logging/events/Connectivity$Disconnected;-><init>()V

    .line 25
    :goto_0
    invoke-virtual {p1, p2}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    return-void
.end method
