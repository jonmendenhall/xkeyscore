.class final synthetic Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/util/logging/WatchdogLogger;


# direct methods
.method constructor <init>(Lcom/intermedia/util/logging/WatchdogLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$5;->arg$1:Lcom/intermedia/util/logging/WatchdogLogger;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$5;->arg$1:Lcom/intermedia/util/logging/WatchdogLogger;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/intermedia/util/logging/WatchdogLogger;->lambda$log$2$WatchdogLogger(Ljava/lang/Boolean;)V

    return-void
.end method
