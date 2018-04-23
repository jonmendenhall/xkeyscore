.class public Lcom/intermedia/util/analytics/FBClientEventLogger;
.super Ljava/lang/Object;
.source "FBClientEventLogger.java"

# interfaces
.implements Lcom/intermedia/util/analytics/ClientEventLogger;


# instance fields
.field private final logger:Lcom/facebook/appevents/AppEventsLogger;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/util/analytics/FBClientEventLogger;->logger:Lcom/facebook/appevents/AppEventsLogger;

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    iget-object v0, p0, Lcom/intermedia/util/analytics/FBClientEventLogger;->logger:Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {v0, p1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method public log(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    iget-object v0, p0, Lcom/intermedia/util/analytics/FBClientEventLogger;->logger:Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
