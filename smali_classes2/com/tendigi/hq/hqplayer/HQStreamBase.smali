.class abstract Lcom/tendigi/hq/hqplayer/HQStreamBase;
.super Ljava/lang/Object;
.source "HQStreamBase.java"


# instance fields
.field private context:Lcom/tendigi/hq/hqplayer/HQStreamContext;

.field private stream:J

.field private streamIndex:I

.field private timescale:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native jniClose()V
.end method

.method private native jniOpenStream()V
.end method


# virtual methods
.method protected convertTimestampToSeconds(J)D
    .locals 2

    long-to-double p1, p1

    .line 28
    iget v0, p0, Lcom/tendigi/hq/hqplayer/HQStreamBase;->timescale:I

    int-to-double v0, v0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method protected getContext()Lcom/tendigi/hq/hqplayer/HQStreamContext;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQStreamBase;->context:Lcom/tendigi/hq/hqplayer/HQStreamContext;

    return-object v0
.end method

.method abstract onExtraData(II[B)V
.end method

.method protected onStreamInfo(JIILcom/tendigi/hq/hqplayer/HQStreamContext;)V
    .locals 0
    .param p5    # Lcom/tendigi/hq/hqplayer/HQStreamContext;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    iput-wide p1, p0, Lcom/tendigi/hq/hqplayer/HQStreamBase;->stream:J

    .line 39
    iput p3, p0, Lcom/tendigi/hq/hqplayer/HQStreamBase;->streamIndex:I

    .line 40
    iput p4, p0, Lcom/tendigi/hq/hqplayer/HQStreamBase;->timescale:I

    .line 41
    iput-object p5, p0, Lcom/tendigi/hq/hqplayer/HQStreamBase;->context:Lcom/tendigi/hq/hqplayer/HQStreamContext;

    return-void
.end method

.method open()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/tendigi/hq/hqplayer/HQStreamBase;->jniOpenStream()V

    return-void
.end method

.method abstract readPacket(Lcom/tendigi/hq/hqplayer/HQStreamPacket;)V
.end method

.method release()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/tendigi/hq/hqplayer/HQStreamBase;->jniClose()V

    return-void
.end method
