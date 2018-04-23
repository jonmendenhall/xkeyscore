.class final synthetic Lcom/tendigi/hq/hqplayer/FrameRateSampler$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/tendigi/hq/hqplayer/FrameRateSampler$LongAverageFrameRateListener;

.field private final arg$2:I


# direct methods
.method constructor <init>(Lcom/tendigi/hq/hqplayer/FrameRateSampler$LongAverageFrameRateListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler$$Lambda$2;->arg$1:Lcom/tendigi/hq/hqplayer/FrameRateSampler$LongAverageFrameRateListener;

    iput p2, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler$$Lambda$2;->arg$2:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler$$Lambda$2;->arg$1:Lcom/tendigi/hq/hqplayer/FrameRateSampler$LongAverageFrameRateListener;

    iget v1, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler$$Lambda$2;->arg$2:I

    invoke-static {v0, v1}, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->lambda$recordBufferedFrameCount$1$FrameRateSampler(Lcom/tendigi/hq/hqplayer/FrameRateSampler$LongAverageFrameRateListener;I)V

    return-void
.end method
