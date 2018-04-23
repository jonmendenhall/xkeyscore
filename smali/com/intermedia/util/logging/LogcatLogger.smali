.class Lcom/intermedia/util/logging/LogcatLogger;
.super Ljava/lang/Object;
.source "LogcatLogger.java"

# interfaces
.implements Lcom/intermedia/util/logging/DebugLogger;


# annotations
.annotation runtime Lcom/intermedia/injection/ApplicationScope;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Lcom/intermedia/util/logging/events/LoggableEvent;)V
    .locals 1
    .param p1    # Lcom/intermedia/util/logging/events/LoggableEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    invoke-virtual {p1}, Lcom/intermedia/util/logging/events/LoggableEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
