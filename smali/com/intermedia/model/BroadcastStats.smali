.class public Lcom/intermedia/model/BroadcastStats;
.super Ljava/lang/Object;
.source "BroadcastStats.java"


# instance fields
.field private broadcastSubscribers:[Ljava/lang/String;

.field private likeCount:I

.field private statusMessage:Ljava/lang/String;

.field private viewerCounts:Lcom/intermedia/model/BroadcastViewerCounts;


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
    instance-of p1, p1, Lcom/intermedia/model/BroadcastStats;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 17
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/BroadcastStats;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/BroadcastStats;

    invoke-virtual {p1, p0}, Lcom/intermedia/model/BroadcastStats;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/model/BroadcastStats;->getLikeCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/BroadcastStats;->getLikeCount()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/intermedia/model/BroadcastStats;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/BroadcastStats;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_0
    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/intermedia/model/BroadcastStats;->getViewerCounts()Lcom/intermedia/model/BroadcastViewerCounts;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/BroadcastStats;->getViewerCounts()Lcom/intermedia/model/BroadcastViewerCounts;

    move-result-object v3

    if-nez v1, :cond_6

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_1
    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/intermedia/model/BroadcastStats;->getBroadcastSubscribers()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/BroadcastStats;->getBroadcastSubscribers()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public getBroadcastSubscribers()[Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/intermedia/model/BroadcastStats;->broadcastSubscribers:[Ljava/lang/String;

    return-object v0
.end method

.method public getLikeCount()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/intermedia/model/BroadcastStats;->likeCount:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/intermedia/model/BroadcastStats;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getViewerCounts()Lcom/intermedia/model/BroadcastViewerCounts;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/intermedia/model/BroadcastStats;->viewerCounts:Lcom/intermedia/model/BroadcastViewerCounts;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 17
    invoke-virtual {p0}, Lcom/intermedia/model/BroadcastStats;->getLikeCount()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/BroadcastStats;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    const/16 v3, 0x2b

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/model/BroadcastStats;->getViewerCounts()Lcom/intermedia/model/BroadcastViewerCounts;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/BroadcastStats;->getBroadcastSubscribers()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setBroadcastSubscribers([Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/intermedia/model/BroadcastStats;->broadcastSubscribers:[Ljava/lang/String;

    return-void
.end method

.method public setLikeCount(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/intermedia/model/BroadcastStats;->likeCount:I

    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/intermedia/model/BroadcastStats;->statusMessage:Ljava/lang/String;

    return-void
.end method

.method public setViewerCounts(Lcom/intermedia/model/BroadcastViewerCounts;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/intermedia/model/BroadcastStats;->viewerCounts:Lcom/intermedia/model/BroadcastViewerCounts;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastStats(likeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/BroadcastStats;->getLikeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", statusMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/BroadcastStats;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", viewerCounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/BroadcastStats;->getViewerCounts()Lcom/intermedia/model/BroadcastViewerCounts;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", broadcastSubscribers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/BroadcastStats;->getBroadcastSubscribers()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
