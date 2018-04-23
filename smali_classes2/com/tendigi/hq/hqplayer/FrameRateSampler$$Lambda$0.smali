.class final synthetic Lcom/tendigi/hq/hqplayer/FrameRateSampler$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/tendigi/hq/hqplayer/FrameRateSampler$StreamTimeoutListener;


# direct methods
.method private constructor <init>(Lcom/tendigi/hq/hqplayer/FrameRateSampler$StreamTimeoutListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler$$Lambda$0;->arg$1:Lcom/tendigi/hq/hqplayer/FrameRateSampler$StreamTimeoutListener;

    return-void
.end method

.method static get$Lambda(Lcom/tendigi/hq/hqplayer/FrameRateSampler$StreamTimeoutListener;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tendigi/hq/hqplayer/FrameRateSampler$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/tendigi/hq/hqplayer/FrameRateSampler$$Lambda$0;-><init>(Lcom/tendigi/hq/hqplayer/FrameRateSampler$StreamTimeoutListener;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler$$Lambda$0;->arg$1:Lcom/tendigi/hq/hqplayer/FrameRateSampler$StreamTimeoutListener;

    invoke-interface {v0}, Lcom/tendigi/hq/hqplayer/FrameRateSampler$StreamTimeoutListener;->call()V

    return-void
.end method
