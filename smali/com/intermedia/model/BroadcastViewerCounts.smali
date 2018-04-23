.class public Lcom/intermedia/model/BroadcastViewerCounts;
.super Ljava/lang/Object;
.source "BroadcastViewerCounts.java"


# instance fields
.field private connected:I

.field private playing:I

.field private watching:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 17
    instance-of p1, p1, Lcom/intermedia/model/BroadcastViewerCounts;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 17
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/BroadcastViewerCounts;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/BroadcastViewerCounts;

    invoke-virtual {p1, p0}, Lcom/intermedia/model/BroadcastViewerCounts;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/model/BroadcastViewerCounts;->getConnected()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/BroadcastViewerCounts;->getConnected()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/intermedia/model/BroadcastViewerCounts;->getPlaying()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/BroadcastViewerCounts;->getPlaying()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/intermedia/model/BroadcastViewerCounts;->getWatching()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/BroadcastViewerCounts;->getWatching()I

    move-result p1

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getConnected()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/intermedia/model/BroadcastViewerCounts;->connected:I

    return v0
.end method

.method public getPlaying()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/intermedia/model/BroadcastViewerCounts;->playing:I

    return v0
.end method

.method public getWatching()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/intermedia/model/BroadcastViewerCounts;->watching:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 17
    invoke-virtual {p0}, Lcom/intermedia/model/BroadcastViewerCounts;->getConnected()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/BroadcastViewerCounts;->getPlaying()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/BroadcastViewerCounts;->getWatching()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setConnected(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/intermedia/model/BroadcastViewerCounts;->connected:I

    return-void
.end method

.method public setPlaying(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/intermedia/model/BroadcastViewerCounts;->playing:I

    return-void
.end method

.method public setWatching(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/intermedia/model/BroadcastViewerCounts;->watching:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastViewerCounts(connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/BroadcastViewerCounts;->getConnected()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", playing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/BroadcastViewerCounts;->getPlaying()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", watching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/BroadcastViewerCounts;->getWatching()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
