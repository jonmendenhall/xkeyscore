.class final synthetic Lcom/intermedia/game/StreamController$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tendigi/hq/hqplayer/FrameRateSampler$StreamTimeoutListener;


# instance fields
.field private final arg$1:Lcom/intermedia/game/StreamController;

.field private final arg$2:Lcom/intermedia/network/NetworkConnectivityManager;


# direct methods
.method constructor <init>(Lcom/intermedia/game/StreamController;Lcom/intermedia/network/NetworkConnectivityManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/game/StreamController$$Lambda$2;->arg$1:Lcom/intermedia/game/StreamController;

    iput-object p2, p0, Lcom/intermedia/game/StreamController$$Lambda$2;->arg$2:Lcom/intermedia/network/NetworkConnectivityManager;

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcom/intermedia/game/StreamController$$Lambda$2;->arg$1:Lcom/intermedia/game/StreamController;

    iget-object v1, p0, Lcom/intermedia/game/StreamController$$Lambda$2;->arg$2:Lcom/intermedia/network/NetworkConnectivityManager;

    invoke-virtual {v0, v1}, Lcom/intermedia/game/StreamController;->lambda$new$4$StreamController(Lcom/intermedia/network/NetworkConnectivityManager;)V

    return-void
.end method
