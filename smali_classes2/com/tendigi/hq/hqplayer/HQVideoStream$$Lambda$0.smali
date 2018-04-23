.class final synthetic Lcom/tendigi/hq/hqplayer/HQVideoStream$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tendigi/hq/hqplayer/HQNALParser$NALListener;


# instance fields
.field private final arg$1:Landroid/media/MediaFormat;

.field private final arg$2:[B


# direct methods
.method constructor <init>(Landroid/media/MediaFormat;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$$Lambda$0;->arg$1:Landroid/media/MediaFormat;

    iput-object p2, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$$Lambda$0;->arg$2:[B

    return-void
.end method


# virtual methods
.method public onNAL(III)V
    .locals 2

    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$$Lambda$0;->arg$1:Landroid/media/MediaFormat;

    iget-object v1, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$$Lambda$0;->arg$2:[B

    invoke-static {v0, v1, p1, p2, p3}, Lcom/tendigi/hq/hqplayer/HQVideoStream;->lambda$onExtraData$0$HQVideoStream(Landroid/media/MediaFormat;[BIII)V

    return-void
.end method
