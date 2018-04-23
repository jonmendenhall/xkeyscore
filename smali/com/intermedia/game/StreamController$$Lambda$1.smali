.class final synthetic Lcom/intermedia/game/StreamController$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tendigi/hq/hqplayer/FrameRateSampler$LongAverageFrameRateListener;


# instance fields
.field private final arg$1:Lcom/intermedia/game/StreamController;


# direct methods
.method constructor <init>(Lcom/intermedia/game/StreamController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/game/StreamController$$Lambda$1;->arg$1:Lcom/intermedia/game/StreamController;

    return-void
.end method


# virtual methods
.method public call(I)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/game/StreamController$$Lambda$1;->arg$1:Lcom/intermedia/game/StreamController;

    invoke-virtual {v0, p1}, Lcom/intermedia/game/StreamController;->lambda$new$3$StreamController(I)V

    return-void
.end method
