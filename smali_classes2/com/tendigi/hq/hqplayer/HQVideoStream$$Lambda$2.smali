.class final synthetic Lcom/tendigi/hq/hqplayer/HQVideoStream$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tendigi/hq/hqplayer/HQNALParser$NALListener;


# instance fields
.field private final arg$1:Lcom/tendigi/hq/hqplayer/HQVideoStream;

.field private final arg$2:[B

.field private final arg$3:Lcom/tendigi/hq/hqplayer/HQStreamPacket;


# direct methods
.method constructor <init>(Lcom/tendigi/hq/hqplayer/HQVideoStream;[BLcom/tendigi/hq/hqplayer/HQStreamPacket;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$$Lambda$2;->arg$1:Lcom/tendigi/hq/hqplayer/HQVideoStream;

    iput-object p2, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$$Lambda$2;->arg$2:[B

    iput-object p3, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$$Lambda$2;->arg$3:Lcom/tendigi/hq/hqplayer/HQStreamPacket;

    return-void
.end method


# virtual methods
.method public onNAL(III)V
    .locals 6

    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$$Lambda$2;->arg$1:Lcom/tendigi/hq/hqplayer/HQVideoStream;

    iget-object v1, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$$Lambda$2;->arg$2:[B

    iget-object v2, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$$Lambda$2;->arg$3:Lcom/tendigi/hq/hqplayer/HQStreamPacket;

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tendigi/hq/hqplayer/HQVideoStream;->lambda$readPacket$2$HQVideoStream([BLcom/tendigi/hq/hqplayer/HQStreamPacket;III)V

    return-void
.end method
