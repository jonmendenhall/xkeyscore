.class Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;
.super Ljava/lang/Object;
.source "HQAudioStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendigi/hq/hqplayer/HQAudioStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BufferHolder"
.end annotation


# instance fields
.field packets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tendigi/hq/hqplayer/HQStreamPacket;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tendigi/hq/hqplayer/HQAudioStream;


# direct methods
.method private constructor <init>(Lcom/tendigi/hq/hqplayer/HQAudioStream;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;->this$0:Lcom/tendigi/hq/hqplayer/HQAudioStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;->packets:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tendigi/hq/hqplayer/HQAudioStream;Lcom/tendigi/hq/hqplayer/HQAudioStream$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;-><init>(Lcom/tendigi/hq/hqplayer/HQAudioStream;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;Lcom/tendigi/hq/hqplayer/HQStreamPacket;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;->add(Lcom/tendigi/hq/hqplayer/HQStreamPacket;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;D)Lcom/tendigi/hq/hqplayer/HQStreamPacket;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;->getBuffer(D)Lcom/tendigi/hq/hqplayer/HQStreamPacket;

    move-result-object p0

    return-object p0
.end method

.method private add(Lcom/tendigi/hq/hqplayer/HQStreamPacket;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;->packets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getBuffer(D)Lcom/tendigi/hq/hqplayer/HQStreamPacket;
    .locals 6

    .line 47
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;->packets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 48
    iget-object v2, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;->packets:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendigi/hq/hqplayer/HQStreamPacket;

    .line 49
    iget-object v3, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;->this$0:Lcom/tendigi/hq/hqplayer/HQAudioStream;

    invoke-virtual {v2}, Lcom/tendigi/hq/hqplayer/HQStreamPacket;->getPts()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/tendigi/hq/hqplayer/HQAudioStream;->convertTimestampToSeconds(J)D

    move-result-wide v3

    cmpg-double v3, v3, p1

    if-gez v3, :cond_0

    invoke-virtual {v2}, Lcom/tendigi/hq/hqplayer/HQStreamPacket;->getPts()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    move p2, p1

    :goto_1
    if-gt p2, v1, :cond_2

    .line 55
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;->packets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 58
    :cond_2
    iget-object p2, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;->packets:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 59
    iget-object p2, p0, Lcom/tendigi/hq/hqplayer/HQAudioStream$BufferHolder;->packets:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tendigi/hq/hqplayer/HQStreamPacket;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
