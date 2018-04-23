.class Lcom/tendigi/hq/hqplayer/HQVideoStream;
.super Lcom/tendigi/hq/hqplayer/HQStreamBase;
.source "HQVideoStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendigi/hq/hqplayer/HQVideoStream$CodecCallback;,
        Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;,
        Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;,
        Lcom/tendigi/hq/hqplayer/HQVideoStream$VideoStreamListener;
    }
.end annotation


# static fields
.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "HQVideoStream"


# instance fields
.field private codec:Landroid/media/MediaCodec;

.field private holder:Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;

.field private listener:Lcom/tendigi/hq/hqplayer/HQVideoStream$VideoStreamListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/tendigi/hq/hqplayer/HQStreamBase;-><init>()V

    .line 163
    new-instance v0, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;-><init>(Lcom/tendigi/hq/hqplayer/HQVideoStream;Lcom/tendigi/hq/hqplayer/HQVideoStream$1;)V

    iput-object v0, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream;->holder:Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;

    return-void
.end method

.method static synthetic access$000(Lcom/tendigi/hq/hqplayer/HQVideoStream;)Lcom/tendigi/hq/hqplayer/HQVideoStream$VideoStreamListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream;->listener:Lcom/tendigi/hq/hqplayer/HQVideoStream$VideoStreamListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tendigi/hq/hqplayer/HQVideoStream;)Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream;->holder:Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tendigi/hq/hqplayer/HQVideoStream;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/tendigi/hq/hqplayer/HQVideoStream;->configureScalingMode()V

    return-void
.end method

.method private configureScalingMode()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream;->codec:Landroid/media/MediaCodec;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    :cond_0
    return-void
.end method

.method static final synthetic lambda$onExtraData$0$HQVideoStream(Landroid/media/MediaFormat;[BIII)V
    .locals 0

    const-string p2, "csd-0"

    .line 195
    invoke-static {p1, p3, p4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static final synthetic lambda$onExtraData$1$HQVideoStream(Landroid/media/MediaFormat;[BIII)V
    .locals 0

    const-string p2, "csd-1"

    .line 198
    invoke-static {p1, p3, p4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method getHolder()Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream;->holder:Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;

    return-object v0
.end method

.method final synthetic lambda$readPacket$2$HQVideoStream([BLcom/tendigi/hq/hqplayer/HQStreamPacket;III)V
    .locals 9

    .line 226
    iget-object p3, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream;->holder:Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;

    new-instance v8, Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;

    .line 227
    invoke-virtual {p2}, Lcom/tendigi/hq/hqplayer/HQStreamPacket;->getPts()J

    move-result-wide v5

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move v2, p4

    move v3, p5

    invoke-direct/range {v0 .. v7}, Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;-><init>([BIIIJLcom/tendigi/hq/hqplayer/HQVideoStream$1;)V

    invoke-static {p3, v8}, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->access$700(Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;)V

    return-void
.end method

.method final synthetic lambda$readPacket$3$HQVideoStream([BLcom/tendigi/hq/hqplayer/HQStreamPacket;III)V
    .locals 9

    .line 229
    iget-object p3, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream;->holder:Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;

    new-instance v8, Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;

    .line 230
    invoke-virtual {p2}, Lcom/tendigi/hq/hqplayer/HQStreamPacket;->getPts()J

    move-result-wide v5

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move v2, p4

    move v3, p5

    invoke-direct/range {v0 .. v7}, Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;-><init>([BIIIJLcom/tendigi/hq/hqplayer/HQVideoStream$1;)V

    invoke-static {p3, v8}, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->access$700(Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;)V

    return-void
.end method

.method onExtraData(II[B)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "video/avc"

    .line 188
    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream;->codec:Landroid/media/MediaCodec;

    const-string v1, "video/avc"

    .line 190
    invoke-static {v1, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    .line 192
    new-instance p2, Lcom/tendigi/hq/hqplayer/HQNALParser;

    invoke-direct {p2, p3}, Lcom/tendigi/hq/hqplayer/HQNALParser;-><init>([B)V

    const/4 v1, 0x7

    .line 194
    new-instance v2, Lcom/tendigi/hq/hqplayer/HQVideoStream$$Lambda$0;

    invoke-direct {v2, p1, p3}, Lcom/tendigi/hq/hqplayer/HQVideoStream$$Lambda$0;-><init>(Landroid/media/MediaFormat;[B)V

    invoke-virtual {p2, v1, v2}, Lcom/tendigi/hq/hqplayer/HQNALParser;->addListener(ILcom/tendigi/hq/hqplayer/HQNALParser$NALListener;)V

    const/16 v1, 0x8

    .line 197
    new-instance v2, Lcom/tendigi/hq/hqplayer/HQVideoStream$$Lambda$1;

    invoke-direct {v2, p1, p3}, Lcom/tendigi/hq/hqplayer/HQVideoStream$$Lambda$1;-><init>(Landroid/media/MediaFormat;[B)V

    invoke-virtual {p2, v1, v2}, Lcom/tendigi/hq/hqplayer/HQNALParser;->addListener(ILcom/tendigi/hq/hqplayer/HQNALParser$NALListener;)V

    .line 200
    invoke-virtual {p2}, Lcom/tendigi/hq/hqplayer/HQNALParser;->parse()V

    .line 202
    invoke-virtual {p0}, Lcom/tendigi/hq/hqplayer/HQVideoStream;->getContext()Lcom/tendigi/hq/hqplayer/HQStreamContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tendigi/hq/hqplayer/HQStreamContext;->getSurface()Landroid/view/Surface;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 203
    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/tendigi/hq/hqplayer/HQVideoStream;->configureScalingMode()V

    .line 205
    iget-object p3, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream;->codec:Landroid/media/MediaCodec;

    new-instance v1, Lcom/tendigi/hq/hqplayer/HQVideoStream$CodecCallback;

    invoke-direct {v1, p0, v0}, Lcom/tendigi/hq/hqplayer/HQVideoStream$CodecCallback;-><init>(Lcom/tendigi/hq/hqplayer/HQVideoStream;Lcom/tendigi/hq/hqplayer/HQVideoStream$1;)V

    invoke-virtual {p3, v1}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 206
    iget-object p3, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream;->codec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {p3, p1, p2, v0, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 207
    iget-object p1, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 210
    iput-object v0, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream;->codec:Landroid/media/MediaCodec;

    .line 211
    sget-object p2, Lcom/tendigi/hq/hqplayer/HQVideoStream;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method readPacket(Lcom/tendigi/hq/hqplayer/HQStreamPacket;)V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    invoke-virtual {p1}, Lcom/tendigi/hq/hqplayer/HQStreamPacket;->getData()[B

    move-result-object v0

    .line 224
    new-instance v1, Lcom/tendigi/hq/hqplayer/HQNALParser;

    invoke-direct {v1, v0}, Lcom/tendigi/hq/hqplayer/HQNALParser;-><init>([B)V

    const/4 v2, 0x5

    .line 226
    new-instance v3, Lcom/tendigi/hq/hqplayer/HQVideoStream$$Lambda$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/tendigi/hq/hqplayer/HQVideoStream$$Lambda$2;-><init>(Lcom/tendigi/hq/hqplayer/HQVideoStream;[BLcom/tendigi/hq/hqplayer/HQStreamPacket;)V

    invoke-virtual {v1, v2, v3}, Lcom/tendigi/hq/hqplayer/HQNALParser;->addListener(ILcom/tendigi/hq/hqplayer/HQNALParser$NALListener;)V

    const/4 v2, 0x1

    .line 229
    new-instance v3, Lcom/tendigi/hq/hqplayer/HQVideoStream$$Lambda$3;

    invoke-direct {v3, p0, v0, p1}, Lcom/tendigi/hq/hqplayer/HQVideoStream$$Lambda$3;-><init>(Lcom/tendigi/hq/hqplayer/HQVideoStream;[BLcom/tendigi/hq/hqplayer/HQStreamPacket;)V

    invoke-virtual {v1, v2, v3}, Lcom/tendigi/hq/hqplayer/HQNALParser;->addListener(ILcom/tendigi/hq/hqplayer/HQNALParser$NALListener;)V

    .line 232
    invoke-virtual {v1}, Lcom/tendigi/hq/hqplayer/HQNALParser;->parse()V

    return-void
.end method

.method release()V
    .locals 1

    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0, v0}, Lcom/tendigi/hq/hqplayer/HQVideoStream;->setListener(Lcom/tendigi/hq/hqplayer/HQVideoStream$VideoStreamListener;)V

    .line 238
    invoke-super {p0}, Lcom/tendigi/hq/hqplayer/HQStreamBase;->release()V

    .line 240
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 243
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setListener(Lcom/tendigi/hq/hqplayer/HQVideoStream$VideoStreamListener;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream;->listener:Lcom/tendigi/hq/hqplayer/HQVideoStream$VideoStreamListener;

    return-void
.end method
