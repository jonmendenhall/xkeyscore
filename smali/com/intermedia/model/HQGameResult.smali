.class public Lcom/intermedia/model/HQGameResult;
.super Ljava/lang/Object;
.source "HQGameResult.java"


# instance fields
.field private numWinners:I

.field showId:I

.field winners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/intermedia/model/HQGameWinner;",
            ">;"
        }
    .end annotation
.end field

.field youWon:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 20
    instance-of p1, p1, Lcom/intermedia/model/HQGameResult;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 20
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/HQGameResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/HQGameResult;

    invoke-virtual {p1, p0}, Lcom/intermedia/model/HQGameResult;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/model/HQGameResult;->getShowId()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQGameResult;->getShowId()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/intermedia/model/HQGameResult;->isYouWon()Z

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQGameResult;->isYouWon()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/intermedia/model/HQGameResult;->getWinners()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQGameResult;->getWinners()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_0
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/intermedia/model/HQGameResult;->getNumWinners()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQGameResult;->getNumWinners()I

    move-result p1

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public findWinner(Ljava/lang/String;)Lcom/intermedia/model/HQGameWinner;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/intermedia/model/HQGameResult;->winners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intermedia/model/HQGameWinner;

    .line 29
    invoke-virtual {v1}, Lcom/intermedia/model/HQGameWinner;->getName()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {v2}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNumWinners()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/intermedia/model/HQGameResult;->numWinners:I

    return v0
.end method

.method public getShowId()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/intermedia/model/HQGameResult;->showId:I

    return v0
.end method

.method public getWinners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/intermedia/model/HQGameWinner;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/intermedia/model/HQGameResult;->winners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 20
    invoke-virtual {p0}, Lcom/intermedia/model/HQGameResult;->getShowId()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/HQGameResult;->isYouWon()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x4f

    goto :goto_0

    :cond_0
    const/16 v2, 0x61

    :goto_0
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/model/HQGameResult;->getWinners()Ljava/util/ArrayList;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_1

    const/16 v2, 0x2b

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/HQGameResult;->getNumWinners()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isYouWon()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/intermedia/model/HQGameResult;->youWon:Z

    return v0
.end method

.method public setNumWinners(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/intermedia/model/HQGameResult;->numWinners:I

    return-void
.end method

.method public setShowId(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/intermedia/model/HQGameResult;->showId:I

    return-void
.end method

.method public setWinners(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/intermedia/model/HQGameWinner;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/intermedia/model/HQGameResult;->winners:Ljava/util/ArrayList;

    return-void
.end method

.method public setYouWon(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/intermedia/model/HQGameResult;->youWon:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HQGameResult(showId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQGameResult;->getShowId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", youWon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQGameResult;->isYouWon()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", winners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQGameResult;->getWinners()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", numWinners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQGameResult;->getNumWinners()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
