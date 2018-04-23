.class public Lcom/tendigi/hq/hqplayer/HQAudioStream;
.super Lcom/tendigi/hq/hqplayer/HQStreamBase;
.source "HQAudioStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;,
        Lcom/tendigi/hq/hqplayer/HQAudioStream$AudioStreamListener;
    }
.end annotation


# static fields
.field private static final MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final TAG:Ljava/lang/String;

.field private static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private audioTrack:Landroid/media/AudioTrack;

.field private codec:Landroid/media/MediaCodec;

.field private holder:Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;

.field private listener:Lcom/tendigi/hq/hqplayer/HQAudioStream$AudioStreamListener;

.field private volatile play:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->executor:Ljava/util/concurrent/ExecutorService;

    .line 70
    const-class v0, Lcom/tendigi/hq/hqplayer/HQStreamBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/tendigi/hq/hqplayer/HQStreamBase;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->play:Z

    .line 77
    new-instance v0, Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;-><init>(Lcom/tendigi/hq/hqplayer/HQAudioStream;Lcom/tendigi/hq/hqplayer/HQAudioStream$1;)V

    iput-object v0, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->holder:Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;

    return-void
.end method

.method private audioTrackIsInitialized()Z
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method final synthetic lambda$onExtraData$0$HQAudioStream(II[B)V
    .locals 10

    const/16 v0, 0xc

    const/4 v1, 0x2

    .line 89
    invoke-static {p1, v0, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v7

    .line 93
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v3, 0x3

    const/16 v5, 0xc

    const/4 v6, 0x2

    const/4 v8, 0x1

    move-object v2, v0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->audioTrack:Landroid/media/AudioTrack;

    .line 99
    invoke-direct {p0}, Lcom/tendigi/hq/hqplayer/HQAudioStream;->audioTrackIsInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "audio/mp4a-latm"

    .line 104
    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->codec:Landroid/media/MediaCodec;

    const-string v1, "audio/mp4a-latm"

    .line 106
    invoke-static {v1, p1, p2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string p2, "csd-0"

    .line 107
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 108
    iget-object p2, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->codec:Landroid/media/MediaCodec;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, v0, v0, p3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 109
    iget-object p1, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 111
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->play:Z

    if-eqz p1, :cond_5

    .line 115
    iget-object p1, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->listener:Lcom/tendigi/hq/hqplayer/HQAudioStream$AudioStreamListener;

    if-eqz p1, :cond_2

    .line 116
    iget-object p1, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->listener:Lcom/tendigi/hq/hqplayer/HQAudioStream$AudioStreamListener;

    invoke-interface {p1}, Lcom/tendigi/hq/hqplayer/HQAudioStream$AudioStreamListener;->onAudioCodecRefresh()Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 118
    iget-object p2, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->holder:Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {p2, v1, v2}, Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;->access$200(Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;D)Lcom/tendigi/hq/hqplayer/HQStreamPacket;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    const-wide/16 v1, 0x2710

    if-eqz p1, :cond_3

    .line 123
    iget-object p2, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p2, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-ltz v4, :cond_3

    .line 125
    iget-object p2, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p2, v4}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 126
    invoke-virtual {p1}, Lcom/tendigi/hq/hqplayer/HQStreamPacket;->getData()[B

    move-result-object p1

    .line 127
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 128
    iget-object v3, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->codec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    array-length v6, p1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 133
    :cond_3
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 134
    iget-object p2, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p2

    if-ltz p2, :cond_1

    .line 136
    iget-object v1, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 137
    iget v2, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v2, v2, [B

    .line 138
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 139
    invoke-direct {p0}, Lcom/tendigi/hq/hqplayer/HQAudioStream;->audioTrackIsInitialized()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 140
    iget-object v1, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->audioTrack:Landroid/media/AudioTrack;

    iget v3, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v1, v2, v3, p1}, Landroid/media/AudioTrack;->write([BII)I

    .line 142
    :cond_4
    iget-object p1, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 145
    :cond_5
    iget-object p1, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->stop()V

    .line 146
    iget-object p1, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 148
    iput-object v0, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->codec:Landroid/media/MediaCodec;

    .line 149
    sget-object p2, Lcom/tendigi/hq/hqplayer/HQAudioStream;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method final synthetic lambda$release$1$HQAudioStream()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tendigi/hq/hqplayer/HQAudioStream;->audioTrackIsInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_0
    return-void
.end method

.method onExtraData(II[B)V
    .locals 2

    .line 88
    sget-object v0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tendigi/hq/hqplayer/HQAudioStream$$Lambda$0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tendigi/hq/hqplayer/HQAudioStream$$Lambda$0;-><init>(Lcom/tendigi/hq/hqplayer/HQAudioStream;II[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method readPacket(Lcom/tendigi/hq/hqplayer/HQStreamPacket;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->holder:Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;

    invoke-static {v0, p1}, Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;->access$100(Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;Lcom/tendigi/hq/hqplayer/HQStreamPacket;)V

    return-void
.end method

.method release()V
    .locals 2

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->play:Z

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v0}, Lcom/tendigi/hq/hqplayer/HQAudioStream;->setListener(Lcom/tendigi/hq/hqplayer/HQAudioStream$AudioStreamListener;)V

    .line 167
    sget-object v0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tendigi/hq/hqplayer/HQAudioStream$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/tendigi/hq/hqplayer/HQAudioStream$$Lambda$1;-><init>(Lcom/tendigi/hq/hqplayer/HQAudioStream;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 172
    invoke-super {p0}, Lcom/tendigi/hq/hqplayer/HQStreamBase;->release()V

    return-void
.end method

.method public setListener(Lcom/tendigi/hq/hqplayer/HQAudioStream$AudioStreamListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream;->listener:Lcom/tendigi/hq/hqplayer/HQAudioStream$AudioStreamListener;

    return-void
.end method
