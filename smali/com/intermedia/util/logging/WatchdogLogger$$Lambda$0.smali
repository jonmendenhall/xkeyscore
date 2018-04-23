.class final synthetic Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field static final $instance:Ljava/util/concurrent/Callable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$0;

    invoke-direct {v0}, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$0;-><init>()V

    sput-object v0, Lcom/intermedia/util/logging/WatchdogLogger$$Lambda$0;->$instance:Ljava/util/concurrent/Callable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/instacart/library/truetime/TrueTime;->isInitialized()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
