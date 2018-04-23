.class public Lcom/tendigi/hq/hqplayer/HQStream;
.super Ljava/lang/Object;
.source "HQStream.java"

# interfaces
.implements Lcom/tendigi/hq/hqplayer/HQVideoStream$VideoStreamListener;
.implements Lcom/tendigi/hq/hqplayer/HQAudioStream$AudioStreamListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendigi/hq/hqplayer/HQStream$Listener;
    }
.end annotation


# static fields
.field private static final FRAME_BUFFER_SIZE:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "HQStream"


# instance fields
.field private final audioStream:Lcom/tendigi/hq/hqplayer/HQAudioStream;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private volatile formatContext:J

.field private final frameRateSampler:Lcom/tendigi/hq/hqplayer/FrameRateSampler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private volatile play:Z

.field private volatile playbackStarted:Z

.field private volatile startTime:D

.field private final streamListener:Lcom/tendigi/hq/hqplayer/HQStream$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final surfaceHolder:Landroid/view/SurfaceHolder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final videoStream:Lcom/tendigi/hq/hqplayer/HQVideoStream;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "hqplayer"

    .line 26
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tendigi/hq/hqplayer/HQStream$Listener;Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/tendigi/hq/hqplayer/HQStream$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/SurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;

    invoke-direct {v0}, Lcom/tendigi/hq/hqplayer/FrameRateSampler;-><init>()V

    iput-object v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->frameRateSampler:Lcom/tendigi/hq/hqplayer/FrameRateSampler;

    .line 31
    new-instance v0, Lcom/tendigi/hq/hqplayer/HQAudioStream;

    invoke-direct {v0}, Lcom/tendigi/hq/hqplayer/HQAudioStream;-><init>()V

    iput-object v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->audioStream:Lcom/tendigi/hq/hqplayer/HQAudioStream;

    .line 33
    new-instance v0, Lcom/tendigi/hq/hqplayer/HQVideoStream;

    invoke-direct {v0}, Lcom/tendigi/hq/hqplayer/HQVideoStream;-><init>()V

    iput-object v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->videoStream:Lcom/tendigi/hq/hqplayer/HQVideoStream;

    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->executor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v0, 0x0

    .line 62
    iput-wide v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->startTime:D

    .line 67
    iput-object p1, p0, Lcom/tendigi/hq/hqplayer/HQStream;->context:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/tendigi/hq/hqplayer/HQStream;->streamListener:Lcom/tendigi/hq/hqplayer/HQStream$Listener;

    .line 69
    iput-object p3, p0, Lcom/tendigi/hq/hqplayer/HQStream;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method private native closeFormatContext()V
.end method

.method private configure()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->audioStream:Lcom/tendigi/hq/hqplayer/HQAudioStream;

    invoke-virtual {v0, p0}, Lcom/tendigi/hq/hqplayer/HQAudioStream;->setListener(Lcom/tendigi/hq/hqplayer/HQAudioStream$AudioStreamListener;)V

    .line 118
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->videoStream:Lcom/tendigi/hq/hqplayer/HQVideoStream;

    invoke-virtual {v0, p0}, Lcom/tendigi/hq/hqplayer/HQVideoStream;->setListener(Lcom/tendigi/hq/hqplayer/HQVideoStream$VideoStreamListener;)V

    return-void
.end method

.method private native connect(Ljava/lang/String;Lcom/tendigi/hq/hqplayer/HQStreamContext;)Z
.end method

.method private native demux()V
.end method

.method static getMediaTimeSeconds()D
    .locals 4

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public addLongAverageFrameRateListener(Lcom/tendigi/hq/hqplayer/FrameRateSampler$LongAverageFrameRateListener;)V
    .locals 1
    .param p1    # Lcom/tendigi/hq/hqplayer/FrameRateSampler$LongAverageFrameRateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 79
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->frameRateSampler:Lcom/tendigi/hq/hqplayer/FrameRateSampler;

    invoke-virtual {v0, p1}, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->addLongAverageFrameRateListener(Lcom/tendigi/hq/hqplayer/FrameRateSampler$LongAverageFrameRateListener;)V

    return-void
.end method

.method public addShortAverageFrameRateListener(Lcom/tendigi/hq/hqplayer/FrameRateSampler$ShortAverageFrameRateListener;)V
    .locals 1
    .param p1    # Lcom/tendigi/hq/hqplayer/FrameRateSampler$ShortAverageFrameRateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->frameRateSampler:Lcom/tendigi/hq/hqplayer/FrameRateSampler;

    invoke-virtual {v0, p1}, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->addShortAverageFrameRateListener(Lcom/tendigi/hq/hqplayer/FrameRateSampler$ShortAverageFrameRateListener;)V

    return-void
.end method

.method public addStreamTimeoutListener(Lcom/tendigi/hq/hqplayer/FrameRateSampler$StreamTimeoutListener;)V
    .locals 1
    .param p1    # Lcom/tendigi/hq/hqplayer/FrameRateSampler$StreamTimeoutListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->frameRateSampler:Lcom/tendigi/hq/hqplayer/FrameRateSampler;

    invoke-virtual {v0, p1}, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->addStreamTimeoutListener(Lcom/tendigi/hq/hqplayer/FrameRateSampler$StreamTimeoutListener;)V

    return-void
.end method

.method final synthetic lambda$play$0$HQStream(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "HQStream"

    const-string v1, "Obtaining video surface"

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 97
    :goto_0
    iget-boolean v1, p0, Lcom/tendigi/hq/hqplayer/HQStream;->play:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 102
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/tendigi/hq/hqplayer/HQStream;->play:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 103
    new-instance v1, Lcom/tendigi/hq/hqplayer/HQStreamContext;

    invoke-direct {v1, v0}, Lcom/tendigi/hq/hqplayer/HQStreamContext;-><init>(Landroid/view/Surface;)V

    invoke-direct {p0, p1, v1}, Lcom/tendigi/hq/hqplayer/HQStream;->connect(Ljava/lang/String;Lcom/tendigi/hq/hqplayer/HQStreamContext;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/tendigi/hq/hqplayer/HQStream;->closeFormatContext()V

    goto :goto_1

    .line 109
    :cond_2
    iget-boolean p1, p0, Lcom/tendigi/hq/hqplayer/HQStream;->play:Z

    if-eqz p1, :cond_3

    .line 110
    iget-object p1, p0, Lcom/tendigi/hq/hqplayer/HQStream;->streamListener:Lcom/tendigi/hq/hqplayer/HQStream$Listener;

    invoke-interface {p1}, Lcom/tendigi/hq/hqplayer/HQStream$Listener;->onConnected()V

    .line 111
    invoke-direct {p0}, Lcom/tendigi/hq/hqplayer/HQStream;->demux()V

    :cond_3
    return-void
.end method

.method final synthetic lambda$stop$1$HQStream()V
    .locals 2

    const-string v0, "HQStream"

    const-string v1, "Closing streams and cleaning up"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->audioStream:Lcom/tendigi/hq/hqplayer/HQAudioStream;

    invoke-virtual {v0}, Lcom/tendigi/hq/hqplayer/HQAudioStream;->release()V

    .line 126
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->videoStream:Lcom/tendigi/hq/hqplayer/HQVideoStream;

    invoke-virtual {v0}, Lcom/tendigi/hq/hqplayer/HQVideoStream;->release()V

    .line 127
    invoke-direct {p0}, Lcom/tendigi/hq/hqplayer/HQStream;->closeFormatContext()V

    .line 128
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 129
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tendigi/hq/hqplayer/HQStream;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/tendigi/hq/hqplayer/HQStream;->streamListener:Lcom/tendigi/hq/hqplayer/HQStream$Listener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/tendigi/hq/hqplayer/HQStream$$Lambda$3;->get$Lambda(Lcom/tendigi/hq/hqplayer/HQStream$Listener;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAudioCodecRefresh()Ljava/lang/Double;
    .locals 4

    .line 169
    iget-boolean v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->play:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 173
    :cond_0
    invoke-static {}, Lcom/tendigi/hq/hqplayer/HQStream;->getMediaTimeSeconds()D

    move-result-wide v2

    .line 174
    iget-boolean v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->playbackStarted:Z

    if-eqz v0, :cond_1

    .line 175
    iget-wide v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->startTime:D

    sub-double/2addr v2, v0

    .line 176
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public onVideoCodecRefresh()Ljava/lang/Double;
    .locals 11

    .line 135
    iget-boolean v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->play:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 139
    :cond_0
    invoke-static {}, Lcom/tendigi/hq/hqplayer/HQStream;->getMediaTimeSeconds()D

    move-result-wide v2

    .line 140
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->videoStream:Lcom/tendigi/hq/hqplayer/HQVideoStream;

    invoke-virtual {v0}, Lcom/tendigi/hq/hqplayer/HQVideoStream;->getHolder()Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->getBufferedFrameCount()I

    move-result v4

    .line 143
    iget-boolean v5, p0, Lcom/tendigi/hq/hqplayer/HQStream;->playbackStarted:Z

    if-nez v5, :cond_2

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_2

    const/4 v5, 0x1

    .line 144
    iput-boolean v5, p0, Lcom/tendigi/hq/hqplayer/HQStream;->playbackStarted:Z

    .line 145
    invoke-virtual {v0}, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->getFirstTimestampSeconds()D

    move-result-wide v5

    .line 146
    iget-wide v7, p0, Lcom/tendigi/hq/hqplayer/HQStream;->startTime:D

    const-wide/16 v9, 0x0

    cmpl-double v0, v7, v9

    if-lez v0, :cond_1

    iget-wide v7, p0, Lcom/tendigi/hq/hqplayer/HQStream;->startTime:D

    sub-double/2addr v7, v5

    goto :goto_0

    :cond_1
    sub-double v7, v2, v5

    :goto_0
    iput-wide v7, p0, Lcom/tendigi/hq/hqplayer/HQStream;->startTime:D

    .line 147
    new-instance v0, Landroid/os/Handler;

    iget-object v5, p0, Lcom/tendigi/hq/hqplayer/HQStream;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v5, p0, Lcom/tendigi/hq/hqplayer/HQStream;->streamListener:Lcom/tendigi/hq/hqplayer/HQStream$Listener;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/tendigi/hq/hqplayer/HQStream$$Lambda$2;->get$Lambda(Lcom/tendigi/hq/hqplayer/HQStream$Listener;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    :cond_2
    iget-boolean v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->playbackStarted:Z

    if-eqz v0, :cond_4

    .line 151
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->frameRateSampler:Lcom/tendigi/hq/hqplayer/FrameRateSampler;

    invoke-virtual {v0, v4}, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->recordBufferedFrameCount(I)V

    .line 152
    iget-wide v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->startTime:D

    sub-double v0, v2, v0

    .line 153
    iget-object v4, p0, Lcom/tendigi/hq/hqplayer/HQStream;->videoStream:Lcom/tendigi/hq/hqplayer/HQVideoStream;

    invoke-virtual {v4}, Lcom/tendigi/hq/hqplayer/HQVideoStream;->getHolder()Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->getNewestTimestamp()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    add-double/2addr v0, v6

    cmpl-double v0, v4, v0

    if-lez v0, :cond_3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    sub-double v0, v2, v4

    .line 157
    iput-wide v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->startTime:D

    .line 160
    :cond_3
    iget-wide v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->startTime:D

    sub-double/2addr v2, v0

    .line 161
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1
.end method

.method public play(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    invoke-direct {p0}, Lcom/tendigi/hq/hqplayer/HQStream;->configure()V

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->play:Z

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stream url cannot be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tendigi/hq/hqplayer/HQStream$$Lambda$0;

    invoke-direct {v1, p0, p1}, Lcom/tendigi/hq/hqplayer/HQStream$$Lambda$0;-><init>(Lcom/tendigi/hq/hqplayer/HQStream;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->play:Z

    .line 123
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQStream;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tendigi/hq/hqplayer/HQStream$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/tendigi/hq/hqplayer/HQStream$$Lambda$1;-><init>(Lcom/tendigi/hq/hqplayer/HQStream;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
