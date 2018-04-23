.class Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;
.super Ljava/lang/Object;
.source "HQVideoStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendigi/hq/hqplayer/HQVideoStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrameHolder"
.end annotation


# instance fields
.field private buffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tendigi/hq/hqplayer/HQVideoStream;


# direct methods
.method private constructor <init>(Lcom/tendigi/hq/hqplayer/HQVideoStream;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->this$0:Lcom/tendigi/hq/hqplayer/HQVideoStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->buffers:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tendigi/hq/hqplayer/HQVideoStream;Lcom/tendigi/hq/hqplayer/HQVideoStream$1;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;-><init>(Lcom/tendigi/hq/hqplayer/HQVideoStream;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;D)Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->getFrame(D)Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->add(Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;)V

    return-void
.end method

.method private add(Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->buffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getFrame(D)Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 79
    :goto_0
    iget-object v2, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->buffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->buffers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;

    .line 81
    iget-object v4, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->this$0:Lcom/tendigi/hq/hqplayer/HQVideoStream;

    iget-wide v5, v2, Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;->pts:J

    invoke-virtual {v4, v5, v6}, Lcom/tendigi/hq/hqplayer/HQVideoStream;->convertTimestampToSeconds(J)D

    move-result-wide v4

    cmpl-double v2, v4, p1

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    if-ne v1, v3, :cond_2

    .line 87
    iget-object p1, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->buffers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 88
    iget-object p1, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->buffers:Ljava/util/List;

    iget-object p2, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->buffers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;

    .line 89
    iget-object p2, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->buffers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    return-object p1

    :cond_2
    if-gtz v1, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 97
    :cond_3
    iget-object p1, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->buffers:Ljava/util/List;

    add-int/lit8 p2, v1, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;

    move p2, v0

    :goto_2
    if-ge p2, v1, :cond_4

    .line 100
    iget-object v2, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->buffers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-object p1
.end method


# virtual methods
.method getBufferedFrameCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->buffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getFirstTimestampSeconds()D
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->buffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->this$0:Lcom/tendigi/hq/hqplayer/HQVideoStream;

    iget-object v1, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->buffers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;

    iget-wide v1, v1, Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;->pts:J

    invoke-virtual {v0, v1, v2}, Lcom/tendigi/hq/hqplayer/HQVideoStream;->convertTimestampToSeconds(J)D

    move-result-wide v0

    return-wide v0
.end method

.method getNewestTimestamp()D
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->buffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->this$0:Lcom/tendigi/hq/hqplayer/HQVideoStream;

    iget-object v1, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->buffers:Ljava/util/List;

    iget-object v2, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$FrameHolder;->buffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;

    iget-wide v1, v1, Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;->pts:J

    invoke-virtual {v0, v1, v2}, Lcom/tendigi/hq/hqplayer/HQVideoStream;->convertTimestampToSeconds(J)D

    move-result-wide v0

    return-wide v0
.end method
