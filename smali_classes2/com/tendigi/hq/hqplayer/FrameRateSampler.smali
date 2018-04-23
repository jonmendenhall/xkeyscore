.class public Lcom/tendigi/hq/hqplayer/FrameRateSampler;
.super Ljava/lang/Object;
.source "FrameRateSampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendigi/hq/hqplayer/FrameRateSampler$StreamTimeoutListener;,
        Lcom/tendigi/hq/hqplayer/FrameRateSampler$LongAverageFrameRateListener;,
        Lcom/tendigi/hq/hqplayer/FrameRateSampler$ShortAverageFrameRateListener;
    }
.end annotation


# static fields
.field private static final MIN_SAMPLES_LONG:I = 0x3c

.field private static final MIN_SAMPLES_SHORT:I = 0xa

.field private static final MIN_SAMPLES_TIMEOUT:I = 0x14

.field private static final SAMPLE_INTERVAL_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "HQStream-FRSampler"

.field private static final TIMEOUT_FPS_FLOOR:I


# instance fields
.field private final fpsSamples:Ljava/util/LinkedList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final laListeners:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tendigi/hq/hqplayer/FrameRateSampler$LongAverageFrameRateListener;",
            ">;"
        }
    .end annotation
.end field

.field private lastSampledAt:J

.field private final mainHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final saListeners:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tendigi/hq/hqplayer/FrameRateSampler$ShortAverageFrameRateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final stListeners:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tendigi/hq/hqplayer/FrameRateSampler$StreamTimeoutListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->mainHandler:Landroid/os/Handler;

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->fpsSamples:Ljava/util/LinkedList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->saListeners:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->laListeners:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->stListeners:Ljava/util/ArrayList;

    return-void
.end method

.method static final synthetic lambda$recordBufferedFrameCount$0$FrameRateSampler(Lcom/tendigi/hq/hqplayer/FrameRateSampler$ShortAverageFrameRateListener;I)V
    .locals 0

    .line 84
    invoke-interface {p0, p1}, Lcom/tendigi/hq/hqplayer/FrameRateSampler$ShortAverageFrameRateListener;->call(I)V

    return-void
.end method

.method static final synthetic lambda$recordBufferedFrameCount$1$FrameRateSampler(Lcom/tendigi/hq/hqplayer/FrameRateSampler$LongAverageFrameRateListener;I)V
    .locals 0

    .line 95
    invoke-interface {p0, p1}, Lcom/tendigi/hq/hqplayer/FrameRateSampler$LongAverageFrameRateListener;->call(I)V

    return-void
.end method


# virtual methods
.method addLongAverageFrameRateListener(Lcom/tendigi/hq/hqplayer/FrameRateSampler$LongAverageFrameRateListener;)V
    .locals 1
    .param p1    # Lcom/tendigi/hq/hqplayer/FrameRateSampler$LongAverageFrameRateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->laListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addShortAverageFrameRateListener(Lcom/tendigi/hq/hqplayer/FrameRateSampler$ShortAverageFrameRateListener;)V
    .locals 1
    .param p1    # Lcom/tendigi/hq/hqplayer/FrameRateSampler$ShortAverageFrameRateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->saListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addStreamTimeoutListener(Lcom/tendigi/hq/hqplayer/FrameRateSampler$StreamTimeoutListener;)V
    .locals 1
    .param p1    # Lcom/tendigi/hq/hqplayer/FrameRateSampler$StreamTimeoutListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->stListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method recordBufferedFrameCount(I)V
    .locals 6

    const-string v0, "HQStream-FRSampler"

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffered frames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tendigi/hq/hqplayer/SamplingLogger;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 56
    iget-wide v2, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->lastSampledAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    .line 57
    iput-wide v0, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->lastSampledAt:J

    .line 58
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->fpsSamples:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 60
    iget-object p1, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->fpsSamples:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0x14

    const/4 v1, 0x0

    if-le p1, v0, :cond_2

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    .line 66
    iget-object v4, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->fpsSamples:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v3, :cond_2

    const-string p1, "HQStream-FRSampler"

    const-string v0, "Stream has timed out"

    .line 69
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p1, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->stListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendigi/hq/hqplayer/FrameRateSampler$StreamTimeoutListener;

    .line 71
    iget-object v1, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/tendigi/hq/hqplayer/FrameRateSampler$$Lambda$0;->get$Lambda(Lcom/tendigi/hq/hqplayer/FrameRateSampler$StreamTimeoutListener;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0xa

    if-le p1, v0, :cond_4

    move v2, v1

    move v3, v2

    :goto_2
    if-ge v2, v0, :cond_3

    .line 80
    iget-object v4, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->fpsSamples:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 82
    :cond_3
    div-int/2addr v3, v0

    .line 83
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->saListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendigi/hq/hqplayer/FrameRateSampler$ShortAverageFrameRateListener;

    .line 84
    iget-object v4, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->mainHandler:Landroid/os/Handler;

    new-instance v5, Lcom/tendigi/hq/hqplayer/FrameRateSampler$$Lambda$1;

    invoke-direct {v5, v2, v3}, Lcom/tendigi/hq/hqplayer/FrameRateSampler$$Lambda$1;-><init>(Lcom/tendigi/hq/hqplayer/FrameRateSampler$ShortAverageFrameRateListener;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_4
    const/16 v0, 0x3c

    if-le p1, v0, :cond_7

    move p1, v1

    :goto_4
    if-ge v1, v0, :cond_5

    .line 91
    iget-object v2, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->fpsSamples:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 93
    :cond_5
    div-int/2addr p1, v0

    .line 94
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->laListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendigi/hq/hqplayer/FrameRateSampler$LongAverageFrameRateListener;

    .line 95
    iget-object v2, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/tendigi/hq/hqplayer/FrameRateSampler$$Lambda$2;

    invoke-direct {v3, v1, p1}, Lcom/tendigi/hq/hqplayer/FrameRateSampler$$Lambda$2;-><init>(Lcom/tendigi/hq/hqplayer/FrameRateSampler$LongAverageFrameRateListener;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 97
    :cond_6
    iget-object p1, p0, Lcom/tendigi/hq/hqplayer/FrameRateSampler;->fpsSamples:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_7
    return-void
.end method
