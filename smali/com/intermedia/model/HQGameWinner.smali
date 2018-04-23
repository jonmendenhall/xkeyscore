.class public Lcom/intermedia/model/HQGameWinner;
.super Ljava/lang/Object;
.source "HQGameWinner.java"


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private prize:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/intermedia/model/HQGameWinner;->avatarUrl:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/intermedia/model/HQGameWinner;->name:Ljava/lang/String;

    const-string p1, "$3.40"

    .line 20
    iput-object p1, p0, Lcom/intermedia/model/HQGameWinner;->prize:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 11
    instance-of p1, p1, Lcom/intermedia/model/HQGameWinner;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 11
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/HQGameWinner;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/HQGameWinner;

    invoke-virtual {p1, p0}, Lcom/intermedia/model/HQGameWinner;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/model/HQGameWinner;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQGameWinner;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/intermedia/model/HQGameWinner;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQGameWinner;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/intermedia/model/HQGameWinner;->getPrize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQGameWinner;->getPrize()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_7

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :goto_2
    return v2

    :cond_8
    return v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/intermedia/model/HQGameWinner;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/intermedia/model/HQGameWinner;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrize()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/intermedia/model/HQGameWinner;->prize:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 11
    invoke-virtual {p0}, Lcom/intermedia/model/HQGameWinner;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/model/HQGameWinner;->getName()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/HQGameWinner;->getPrize()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/intermedia/model/HQGameWinner;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/intermedia/model/HQGameWinner;->name:Ljava/lang/String;

    return-void
.end method

.method public setPrize(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/intermedia/model/HQGameWinner;->prize:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HQGameWinner(avatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQGameWinner;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQGameWinner;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQGameWinner;->getPrize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
