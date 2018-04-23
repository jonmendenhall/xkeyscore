.class public Lcom/intermedia/model/Leader;
.super Ljava/lang/Object;
.source "Leader.java"


# instance fields
.field public avatarUrl:Ljava/lang/String;

.field public total:Ljava/lang/String;

.field public totalCents:J

.field public userId:J

.field public username:Ljava/lang/String;

.field public wins:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    instance-of p1, p1, Lcom/intermedia/model/Leader;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 13
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/Leader;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/Leader;

    invoke-virtual {p1, p0}, Lcom/intermedia/model/Leader;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/model/Leader;->getUserId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/intermedia/model/Leader;->getUserId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/intermedia/model/Leader;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Leader;->getUsername()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/intermedia/model/Leader;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Leader;->getAvatarUrl()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/intermedia/model/Leader;->getTotalCents()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/intermedia/model/Leader;->getTotalCents()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/intermedia/model/Leader;->getWins()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/intermedia/model/Leader;->getWins()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/intermedia/model/Leader;->getTotal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Leader;->getTotal()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_a

    if-eqz p1, :cond_b

    goto :goto_2

    :cond_a
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    :goto_2
    return v2

    :cond_b
    return v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/intermedia/model/Leader;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/intermedia/model/Leader;->total:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCents()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/intermedia/model/Leader;->totalCents:J

    return-wide v0
.end method

.method public getUserId()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/intermedia/model/Leader;->userId:J

    return-wide v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/intermedia/model/Leader;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getWins()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/intermedia/model/Leader;->wins:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 9

    .line 13
    invoke-virtual {p0}, Lcom/intermedia/model/Leader;->getUserId()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/Leader;->getUsername()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v1

    const/16 v4, 0x2b

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/Leader;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v1

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/Leader;->getTotalCents()J

    move-result-wide v5

    mul-int/2addr v0, v1

    ushr-long v7, v5, v2

    xor-long/2addr v5, v7

    long-to-int v3, v5

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/Leader;->getWins()J

    move-result-wide v5

    mul-int/2addr v0, v1

    ushr-long v2, v5, v2

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/model/Leader;->getTotal()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_2
    add-int/2addr v0, v4

    return v0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/intermedia/model/Leader;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/intermedia/model/Leader;->total:Ljava/lang/String;

    return-void
.end method

.method public setTotalCents(J)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/intermedia/model/Leader;->totalCents:J

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/intermedia/model/Leader;->userId:J

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/intermedia/model/Leader;->username:Ljava/lang/String;

    return-void
.end method

.method public setWins(J)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/intermedia/model/Leader;->wins:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Leader(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Leader;->getUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Leader;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", avatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Leader;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalCents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Leader;->getTotalCents()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", wins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Leader;->getWins()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Leader;->getTotal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
