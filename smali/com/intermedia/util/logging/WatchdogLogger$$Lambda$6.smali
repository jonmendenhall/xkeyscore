.class final synthetic Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/intermedia/util/logging/WatchdogLogger;

.field private final arg$2:Lorg/joda/time/DateTime;

.field private final arg$3:Lcom/intermedia/util/logging/events/LoggableEvent;


# direct methods
.method constructor <init>(Lcom/intermedia/util/logging/WatchdogLogger;Lorg/joda/time/DateTime;Lcom/intermedia/util/logging/events/LoggableEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$6;->arg$1:Lcom/intermedia/util/logging/WatchdogLogger;

    iput-object p2, p0, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$6;->arg$2:Lorg/joda/time/DateTime;

    iput-object p3, p0, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$6;->arg$3:Lcom/intermedia/util/logging/events/LoggableEvent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$6;->arg$1:Lcom/intermedia/util/logging/WatchdogLogger;

    iget-object v1, p0, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$6;->arg$2:Lorg/joda/time/DateTime;

    iget-object v2, p0, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$6;->arg$3:Lcom/intermedia/util/logging/events/LoggableEvent;

    invoke-virtual {v0, v1, v2}, Lcom/intermedia/util/logging/WatchdogLogger;->lambda$logInternal$3$WatchdogLogger(Lorg/joda/time/DateTime;Lcom/intermedia/util/logging/events/LoggableEvent;)V

    return-void
.end method
