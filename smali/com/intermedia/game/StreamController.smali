.class public Lcom/intermedia/game/StreamController;
.super Ljava/lang/Object;
.source "StreamController.java"

# interfaces
.implements Lcom/tendigi/hq/hqplayer/HQStream$Listener;


# static fields
.field private static final STATE_STREAM_URL:Ljava/lang/String; = "stream_url"

.field private static final TAG:Ljava/lang/String; = "HQStream-Controller"


# instance fields
.field private final debugReporter:Lcom/intermedia/util/logging/DebugReporter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private hqStream:Lcom/tendigi/hq/hqplayer/HQStream;

.field private final laListener:Lcom/tendigi/hq/hqplayer/FrameRateSampler$LongAverageFrameRateListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final saListener:Lcom/tendigi/hq/hqplayer/FrameRateSampler$ShortAverageFrameRateListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final stListener:Lcom/tendigi/hq/hqplayer/FrameRateSampler$StreamTimeoutListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private streamType:Lcom/intermedia/model/StreamType;

.field private final userConfigRepository:Lcom/intermedia/config/UserConfigRepository;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final viewHost:Lcom/intermedia/game/GameStreamViewHost;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/intermedia/game/GameStreamViewHost;Lcom/intermedia/model/Streams;Lcom/intermedia/config/UserConfigRepository;Lcom/intermedia/network/NetworkConnectivityManager;Lcom/intermedia/util/logging/DebugReporter;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Lcom/intermedia/game/GameStreamViewHost;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/model/Streams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/intermedia/config/UserConfigRepository;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/intermedia/network/NetworkConnectivityManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/intermedia/util/logging/DebugReporter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/intermedia/game/StreamController;->viewHost:Lcom/intermedia/game/GameStreamViewHost;

    .line 44
    iput-object p3, p0, Lcom/intermedia/game/StreamController;->userConfigRepository:Lcom/intermedia/config/UserConfigRepository;

    .line 45
    iput-object p5, p0, Lcom/intermedia/game/StreamController;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    .line 46
    invoke-static {p6}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "stream_url"

    .line 47
    invoke-virtual {p6, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    invoke-static {p1}, Lcom/intermedia/util/ObjectUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/model/StreamType;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/intermedia/model/StreamType$High;

    invoke-direct {p1, p2}, Lcom/intermedia/model/StreamType$High;-><init>(Lcom/intermedia/model/Streams;)V

    :goto_0
    iput-object p1, p0, Lcom/intermedia/game/StreamController;->streamType:Lcom/intermedia/model/StreamType;

    .line 50
    new-instance p1, Lcom/intermedia/game/StreamController$$Lambda$0;

    invoke-direct {p1, p0}, Lcom/intermedia/game/StreamController$$Lambda$0;-><init>(Lcom/intermedia/game/StreamController;)V

    iput-object p1, p0, Lcom/intermedia/game/StreamController;->saListener:Lcom/tendigi/hq/hqplayer/FrameRateSampler$ShortAverageFrameRateListener;

    .line 66
    new-instance p1, Lcom/intermedia/game/StreamController$$Lambda$1;

    invoke-direct {p1, p0}, Lcom/intermedia/game/StreamController$$Lambda$1;-><init>(Lcom/intermedia/game/StreamController;)V

    iput-object p1, p0, Lcom/intermedia/game/StreamController;->laListener:Lcom/tendigi/hq/hqplayer/FrameRateSampler$LongAverageFrameRateListener;

    .line 79
    new-instance p1, Lcom/intermedia/game/StreamController$$Lambda$2;

    invoke-direct {p1, p0, p4}, Lcom/intermedia/game/StreamController$$Lambda$2;-><init>(Lcom/intermedia/game/StreamController;Lcom/intermedia/network/NetworkConnectivityManager;)V

    iput-object p1, p0, Lcom/intermedia/game/StreamController;->stListener:Lcom/tendigi/hq/hqplayer/FrameRateSampler$StreamTimeoutListener;

    return-void
.end method

.method private start(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 94
    iget-object v0, p0, Lcom/intermedia/game/StreamController;->viewHost:Lcom/intermedia/game/GameStreamViewHost;

    invoke-virtual {v0}, Lcom/intermedia/game/GameStreamViewHost;->showLoadingIndicator()V

    .line 95
    new-instance v0, Lcom/tendigi/hq/hqplayer/HQStream;

    iget-object v1, p0, Lcom/intermedia/game/StreamController;->viewHost:Lcom/intermedia/game/GameStreamViewHost;

    iget-object v1, v1, Lcom/intermedia/game/GameStreamViewHost;->videoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/intermedia/game/StreamController;->viewHost:Lcom/intermedia/game/GameStreamViewHost;

    iget-object v2, v2, Lcom/intermedia/game/GameStreamViewHost;->videoSurface:Landroid/view/SurfaceView;

    .line 96
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/tendigi/hq/hqplayer/HQStream;-><init>(Landroid/content/Context;Lcom/tendigi/hq/hqplayer/HQStream$Listener;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/intermedia/game/StreamController;->hqStream:Lcom/tendigi/hq/hqplayer/HQStream;

    .line 97
    iget-object v0, p0, Lcom/intermedia/game/StreamController;->hqStream:Lcom/tendigi/hq/hqplayer/HQStream;

    iget-object v1, p0, Lcom/intermedia/game/StreamController;->laListener:Lcom/tendigi/hq/hqplayer/FrameRateSampler$LongAverageFrameRateListener;

    invoke-virtual {v0, v1}, Lcom/tendigi/hq/hqplayer/HQStream;->addLongAverageFrameRateListener(Lcom/tendigi/hq/hqplayer/FrameRateSampler$LongAverageFrameRateListener;)V

    .line 98
    iget-object v0, p0, Lcom/intermedia/game/StreamController;->hqStream:Lcom/tendigi/hq/hqplayer/HQStream;

    iget-object v1, p0, Lcom/intermedia/game/StreamController;->saListener:Lcom/tendigi/hq/hqplayer/FrameRateSampler$ShortAverageFrameRateListener;

    invoke-virtual {v0, v1}, Lcom/tendigi/hq/hqplayer/HQStream;->addShortAverageFrameRateListener(Lcom/tendigi/hq/hqplayer/FrameRateSampler$ShortAverageFrameRateListener;)V

    .line 99
    iget-object v0, p0, Lcom/intermedia/game/StreamController;->hqStream:Lcom/tendigi/hq/hqplayer/HQStream;

    iget-object v1, p0, Lcom/intermedia/game/StreamController;->stListener:Lcom/tendigi/hq/hqplayer/FrameRateSampler$StreamTimeoutListener;

    invoke-virtual {v0, v1}, Lcom/tendigi/hq/hqplayer/HQStream;->addStreamTimeoutListener(Lcom/tendigi/hq/hqplayer/FrameRateSampler$StreamTimeoutListener;)V

    const-string v0, "HQStream-Controller"

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Playing stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/intermedia/game/StreamController;->streamType:Lcom/intermedia/model/StreamType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/intermedia/game/StreamController;->hqStream:Lcom/tendigi/hq/hqplayer/HQStream;

    invoke-virtual {v0, p1}, Lcom/tendigi/hq/hqplayer/HQStream;->play(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final synthetic lambda$new$1$StreamController(I)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/intermedia/game/StreamController;->userConfigRepository:Lcom/intermedia/config/UserConfigRepository;

    invoke-virtual {v0}, Lcom/intermedia/config/UserConfigRepository;->getCachedConfig()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/game/StreamController$$Lambda$4;

    invoke-direct {v1, p0, p1}, Lcom/intermedia/game/StreamController$$Lambda$4;-><init>(Lcom/intermedia/game/StreamController;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method final synthetic lambda$new$3$StreamController(I)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/intermedia/game/StreamController;->userConfigRepository:Lcom/intermedia/config/UserConfigRepository;

    invoke-virtual {v0}, Lcom/intermedia/config/UserConfigRepository;->getCachedConfig()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/game/StreamController$$Lambda$3;

    invoke-direct {v1, p0, p1}, Lcom/intermedia/game/StreamController$$Lambda$3;-><init>(Lcom/intermedia/game/StreamController;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method final synthetic lambda$new$4$StreamController(Lcom/intermedia/network/NetworkConnectivityManager;)V
    .locals 1
    .param p1    # Lcom/intermedia/network/NetworkConnectivityManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 80
    invoke-virtual {p1}, Lcom/intermedia/network/NetworkConnectivityManager;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "HQStream-Controller"

    const-string v0, "Stream timed out, will reconnect"

    .line 81
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Lcom/intermedia/game/StreamController;->stop()V

    .line 83
    iget-object p1, p0, Lcom/intermedia/game/StreamController;->streamType:Lcom/intermedia/model/StreamType;

    invoke-virtual {p1}, Lcom/intermedia/model/StreamType;->url()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intermedia/util/StringUtils;->emptyIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/intermedia/game/StreamController;->start(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final synthetic lambda$null$0$StreamController(ILcom/intermedia/model/config/Config;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-virtual {p2}, Lcom/intermedia/model/config/Config;->streamConfig()Lcom/intermedia/model/config/StreamConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/intermedia/model/config/StreamConfig;->downStepFloor()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Lcom/intermedia/game/StreamController;->streamType:Lcom/intermedia/model/StreamType;

    .line 56
    invoke-virtual {p1}, Lcom/intermedia/model/StreamType;->canDownstep()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/intermedia/game/StreamController;->streamType:Lcom/intermedia/model/StreamType;

    invoke-virtual {p1}, Lcom/intermedia/model/StreamType;->downStep()Lcom/intermedia/model/StreamType;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/game/StreamController;->streamType:Lcom/intermedia/model/StreamType;

    const-string p1, "HQStream-Controller"

    const-string p2, "Stepping down stream"

    .line 58
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object p1, p0, Lcom/intermedia/game/StreamController;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    new-instance p2, Lcom/intermedia/util/logging/events/SubscriberStream$Switched;

    const-string v0, "HQStream-Controller"

    iget-object v1, p0, Lcom/intermedia/game/StreamController;->streamType:Lcom/intermedia/model/StreamType;

    invoke-direct {p2, v0, v1}, Lcom/intermedia/util/logging/events/SubscriberStream$Switched;-><init>(Ljava/lang/String;Lcom/intermedia/model/StreamType;)V

    invoke-virtual {p1, p2}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    .line 60
    invoke-virtual {p0}, Lcom/intermedia/game/StreamController;->stop()V

    .line 61
    iget-object p1, p0, Lcom/intermedia/game/StreamController;->streamType:Lcom/intermedia/model/StreamType;

    invoke-virtual {p1}, Lcom/intermedia/model/StreamType;->url()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intermedia/util/StringUtils;->emptyIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/intermedia/game/StreamController;->start(Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/intermedia/game/StreamController;->streamType:Lcom/intermedia/model/StreamType;

    invoke-static {p1}, Lcom/intermedia/game/GameStreamReporter;->reportQualityDecrease(Lcom/intermedia/model/StreamType;)V

    :cond_0
    return-void
.end method

.method final synthetic lambda$null$2$StreamController(ILcom/intermedia/model/config/Config;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-virtual {p2}, Lcom/intermedia/model/config/Config;->streamConfig()Lcom/intermedia/model/config/StreamConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/intermedia/model/config/StreamConfig;->upStepCeil()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lcom/intermedia/game/StreamController;->streamType:Lcom/intermedia/model/StreamType;

    .line 69
    invoke-virtual {p1}, Lcom/intermedia/model/StreamType;->canUpstep()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/intermedia/game/StreamController;->streamType:Lcom/intermedia/model/StreamType;

    invoke-virtual {p1}, Lcom/intermedia/model/StreamType;->upStep()Lcom/intermedia/model/StreamType;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/game/StreamController;->streamType:Lcom/intermedia/model/StreamType;

    const-string p1, "HQStream-Controller"

    const-string p2, "Stepping up stream"

    .line 71
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p1, p0, Lcom/intermedia/game/StreamController;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    new-instance p2, Lcom/intermedia/util/logging/events/SubscriberStream$Switched;

    const-string v0, "HQStream-Controller"

    iget-object v1, p0, Lcom/intermedia/game/StreamController;->streamType:Lcom/intermedia/model/StreamType;

    invoke-direct {p2, v0, v1}, Lcom/intermedia/util/logging/events/SubscriberStream$Switched;-><init>(Ljava/lang/String;Lcom/intermedia/model/StreamType;)V

    invoke-virtual {p1, p2}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    .line 73
    invoke-virtual {p0}, Lcom/intermedia/game/StreamController;->stop()V

    .line 74
    iget-object p1, p0, Lcom/intermedia/game/StreamController;->streamType:Lcom/intermedia/model/StreamType;

    invoke-virtual {p1}, Lcom/intermedia/model/StreamType;->url()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intermedia/util/StringUtils;->emptyIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/intermedia/game/StreamController;->start(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/intermedia/game/StreamController;->streamType:Lcom/intermedia/model/StreamType;

    invoke-static {p1}, Lcom/intermedia/game/GameStreamReporter;->reportQualityIncrease(Lcom/intermedia/model/StreamType;)V

    :cond_0
    return-void
.end method

.method public onConnected()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/intermedia/game/StreamController;->streamType:Lcom/intermedia/model/StreamType;

    invoke-static {v0}, Lcom/intermedia/game/GameStreamReporter;->reportConnected(Lcom/intermedia/model/StreamType;)V

    return-void
.end method

.method public onPlaybackStarted()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/intermedia/game/StreamController;->streamType:Lcom/intermedia/model/StreamType;

    invoke-static {v0}, Lcom/intermedia/game/GameStreamReporter;->reportPlaybackStarted(Lcom/intermedia/model/StreamType;)V

    .line 117
    iget-object v0, p0, Lcom/intermedia/game/StreamController;->viewHost:Lcom/intermedia/game/GameStreamViewHost;

    invoke-virtual {v0}, Lcom/intermedia/game/GameStreamViewHost;->hideLoadingIndicator()V

    return-void
.end method

.method public onPlaybackStopped()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/intermedia/game/StreamController;->viewHost:Lcom/intermedia/game/GameStreamViewHost;

    invoke-virtual {v0}, Lcom/intermedia/game/GameStreamViewHost;->resetFpsLabel()V

    .line 123
    iget-object v0, p0, Lcom/intermedia/game/StreamController;->viewHost:Lcom/intermedia/game/GameStreamViewHost;

    invoke-virtual {v0}, Lcom/intermedia/game/GameStreamViewHost;->showLoadingIndicator()V

    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "stream_url"

    .line 127
    iget-object v1, p0, Lcom/intermedia/game/StreamController;->streamType:Lcom/intermedia/model/StreamType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public start()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/intermedia/game/StreamController;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    new-instance v1, Lcom/intermedia/util/logging/events/SubscriberStream$Initial;

    const-string v2, "HQStream-Controller"

    iget-object v3, p0, Lcom/intermedia/game/StreamController;->streamType:Lcom/intermedia/model/StreamType;

    invoke-direct {v1, v2, v3}, Lcom/intermedia/util/logging/events/SubscriberStream$Initial;-><init>(Ljava/lang/String;Lcom/intermedia/model/StreamType;)V

    invoke-virtual {v0, v1}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    .line 90
    iget-object v0, p0, Lcom/intermedia/game/StreamController;->streamType:Lcom/intermedia/model/StreamType;

    invoke-virtual {v0}, Lcom/intermedia/model/StreamType;->url()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/intermedia/util/NullableUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/intermedia/game/StreamController;->start(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/intermedia/game/StreamController;->hqStream:Lcom/tendigi/hq/hqplayer/HQStream;

    invoke-virtual {v0}, Lcom/tendigi/hq/hqplayer/HQStream;->stop()V

    return-void
.end method
