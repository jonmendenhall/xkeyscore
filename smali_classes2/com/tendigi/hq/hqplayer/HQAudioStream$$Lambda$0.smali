.class final synthetic Lcom/tendigi/hq/hqplayer/HQAudioStream$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/tendigi/hq/hqplayer/HQAudioStream;

.field private final arg$2:I

.field private final arg$3:I

.field private final arg$4:[B


# direct methods
.method constructor <init>(Lcom/tendigi/hq/hqplayer/HQAudioStream;II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream$$Lambda$0;->arg$1:Lcom/tendigi/hq/hqplayer/HQAudioStream;

    iput p2, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream$$Lambda$0;->arg$2:I

    iput p3, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream$$Lambda$0;->arg$3:I

    iput-object p4, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream$$Lambda$0;->arg$4:[B

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream$$Lambda$0;->arg$1:Lcom/tendigi/hq/hqplayer/HQAudioStream;

    iget v1, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream$$Lambda$0;->arg$2:I

    iget v2, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream$$Lambda$0;->arg$3:I

    iget-object v3, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream$$Lambda$0;->arg$4:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/tendigi/hq/hqplayer/HQAudioStream;->lambda$onExtraData$0$HQAudioStream(II[B)V

    return-void
.end method
