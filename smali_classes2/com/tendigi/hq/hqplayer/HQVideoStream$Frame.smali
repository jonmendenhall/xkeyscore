.class Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;
.super Ljava/lang/Object;
.source "HQVideoStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendigi/hq/hqplayer/HQVideoStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Frame"
.end annotation


# instance fields
.field data:[B

.field pts:J

.field size:I

.field start:I

.field type:I


# direct methods
.method private constructor <init>([BIIIJ)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;->data:[B

    .line 37
    iput p2, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;->start:I

    .line 38
    iput p3, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;->size:I

    .line 39
    iput p4, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;->type:I

    .line 40
    iput-wide p5, p0, Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;->pts:J

    return-void
.end method

.method synthetic constructor <init>([BIIIJLcom/tendigi/hq/hqplayer/HQVideoStream$1;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p6}, Lcom/tendigi/hq/hqplayer/HQVideoStream$Frame;-><init>([BIIIJ)V

    return-void
.end method
