.class public Lcom/intermedia/util/logging/DebugReporter;
.super Ljava/lang/Object;
.source "DebugReporter.java"


# annotations
.annotation runtime Lcom/intermedia/injection/ApplicationScope;
.end annotation


# instance fields
.field private final loggers:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/intermedia/util/logging/DebugLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/intermedia/util/logging/LogcatLogger;Lcom/intermedia/util/logging/CrashlyticsLogger;Lcom/intermedia/util/logging/WatchdogLogger;)V
    .locals 0
    .param p1    # Lcom/intermedia/util/logging/LogcatLogger;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/util/logging/CrashlyticsLogger;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/intermedia/util/logging/WatchdogLogger;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/intermedia/util/logging/DebugReporter;->loggers:Ljava/util/List;

    .line 25
    iget-object p1, p0, Lcom/intermedia/util/logging/DebugReporter;->loggers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object p1, p0, Lcom/intermedia/util/logging/DebugReporter;->loggers:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public log(Lcom/intermedia/util/logging/events/LoggableEvent;)V
    .locals 2
    .param p1    # Lcom/intermedia/util/logging/events/LoggableEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    iget-object v0, p0, Lcom/intermedia/util/logging/DebugReporter;->loggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intermedia/util/logging/DebugLogger;

    .line 31
    invoke-interface {v1, p1}, Lcom/intermedia/util/logging/DebugLogger;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method
