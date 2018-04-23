.class Lcom/tendigi/hq/hqplayer/HQVideoStream$CodecCallback;
.super Landroid/media/MediaCodec$Callback;
.source "HQVideoStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendigi/hq/hqplayer/HQVideoStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CodecCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendigi/hq/hqplayer/HQVideoStream;


# direct methods
.method private constructor <init>(Lcom/tendigi/hq/hqplayer/HQVideoStream;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$CodecCallback;->this$0:Lcom/tendigi/hq/hqplayer/HQVideoStream;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tendigi/hq/hqplayer/HQVideoStream;Lcom/tendigi/hq/hqplayer/HQVideoStream$1;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/tendigi/hq/hqplayer/HQVideoStream$CodecCallback;-><init>(Lcom/tendigi/hq/hqplayer/HQVideoStream;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaCodec$CodecException;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 12
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$CodecCallback;->this$0:Lcom/tendigi/hq/hqplayer/HQVideoStream;

    invoke-static {v1}, Lcom/tendigi/hq/hqplayer/HQVideoStream;->access$000(Lcom/tendigi/hq/hqplayer/HQVideoStream;)Lcom/tendigi/hq/hqplayer/HQVideoStream$VideoStreamListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$CodecCallback;->this$0:Lcom/tendigi/hq/hqplayer/HQVideoStream;

    invoke-static {v1}, Lcom/tendigi/hq/hqplayer/HQVideoStream;->access$000(Lcom/tendigi/hq/hqplayer/HQVideoStream;)Lcom/tendigi/hq/hqplayer/HQVideoStream$VideoStreamListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/tendigi/hq/hqplayer/HQVideoStream$VideoStreamListener;->onVideoCodecRefresh()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$CodecCallback;->this$0:Lcom/tendigi/hq/hqplayer/HQVideoStream;

    invoke-static {v0}, Lcom/tendigi/hq/hqplayer/HQVideoStream;->access$100(Lcom/tendigi/hq/hqplayer/HQVideoStream;)Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->access$200(Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;D)Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 122
    iget-object v2, v0, Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;->data:[B

    .line 123
    iget v3, v0, Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;->start:I

    iget v4, v0, Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;->size:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    .line 124
    iget v8, v0, Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;->size:I

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move v1, p2

    .line 126
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p3, 0x1

    .line 136
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 149
    iget-object p1, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$CodecCallback;->this$0:Lcom/tendigi/hq/hqplayer/HQVideoStream;

    invoke-static {p1}, Lcom/tendigi/hq/hqplayer/HQVideoStream;->access$300(Lcom/tendigi/hq/hqplayer/HQVideoStream;)V

    return-void
.end method
