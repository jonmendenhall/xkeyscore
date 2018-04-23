.class Lcom/tendigi/hq/hqplayer/HQStreamPacket;
.super Ljava/lang/Object;
.source "HQStreamPacket.java"


# instance fields
.field private data:[B

.field private dts:J

.field private duration:J

.field private pts:J


# direct methods
.method public constructor <init>([BJJJ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/tendigi/hq/hqplayer/HQStreamPacket;->data:[B

    .line 20
    iput-wide p2, p0, Lcom/tendigi/hq/hqplayer/HQStreamPacket;->pts:J

    .line 21
    iput-wide p4, p0, Lcom/tendigi/hq/hqplayer/HQStreamPacket;->dts:J

    .line 22
    iput-wide p6, p0, Lcom/tendigi/hq/hqplayer/HQStreamPacket;->duration:J

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQStreamPacket;->data:[B

    return-object v0
.end method

.method public getDts()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/tendigi/hq/hqplayer/HQStreamPacket;->dts:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/tendigi/hq/hqplayer/HQStreamPacket;->duration:J

    return-wide v0
.end method

.method public getPts()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/tendigi/hq/hqplayer/HQStreamPacket;->pts:J

    return-wide v0
.end method
