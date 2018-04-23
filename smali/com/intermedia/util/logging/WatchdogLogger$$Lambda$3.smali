.class final synthetic Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/util/logging/WatchdogLogger;

.field private final arg$2:Lcom/intermedia/util/logging/events/LoggableEvent;


# direct methods
.method constructor <init>(Lcom/intermedia/util/logging/WatchdogLogger;Lcom/intermedia/util/logging/events/LoggableEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$3;->arg$1:Lcom/intermedia/util/logging/WatchdogLogger;

    iput-object p2, p0, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$3;->arg$2:Lcom/intermedia/util/logging/events/LoggableEvent;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$3;->arg$1:Lcom/intermedia/util/logging/WatchdogLogger;

    iget-object v1, p0, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$3;->arg$2:Lcom/intermedia/util/logging/events/LoggableEvent;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lcom/intermedia/util/logging/WatchdogLogger;->lambda$log$1$WatchdogLogger(Lcom/intermedia/util/logging/events/LoggableEvent;Ljava/lang/Boolean;)V

    return-void
.end method
