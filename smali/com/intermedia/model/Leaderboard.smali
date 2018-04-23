.class public Lcom/intermedia/model/Leaderboard;
.super Ljava/lang/Object;
.source "Leaderboard.java"


# instance fields
.field public alltime:Lcom/intermedia/model/PersonalStatistics;

.field public rank:J

.field public total:Ljava/lang/String;

.field public totalCents:J

.field public unclaimed:Ljava/lang/String;

.field public weekly:Lcom/intermedia/model/PersonalStatistics;

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
    instance-of p1, p1, Lcom/intermedia/model/Leaderboard;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 13
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/Leaderboard;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/Leaderboard;

    invoke-virtual {p1, p0}, Lcom/intermedia/model/Leaderboard;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/model/Leaderboard;->getRank()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/intermedia/model/Leaderboard;->getRank()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/intermedia/model/Leaderboard;->getTotalCents()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/intermedia/model/Leaderboard;->getTotalCents()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/intermedia/model/Leaderboard;->getWins()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/intermedia/model/Leaderboard;->getWins()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/intermedia/model/Leaderboard;->getAlltime()Lcom/intermedia/model/PersonalStatistics;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Leaderboard;->getAlltime()Lcom/intermedia/model/PersonalStatistics;

    move-result-object v3

    if-nez v1, :cond_6

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_0
    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/intermedia/model/Leaderboard;->getWeekly()Lcom/intermedia/model/PersonalStatistics;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Leaderboard;->getWeekly()Lcom/intermedia/model/PersonalStatistics;

    move-result-object v3

    if-nez v1, :cond_8

    if-eqz v3, :cond_9

    goto :goto_1

    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_1
    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/intermedia/model/Leaderboard;->getTotal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Leaderboard;->getTotal()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_a

    if-eqz v3, :cond_b

    goto :goto_2

    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_2
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/intermedia/model/Leaderboard;->getUnclaimed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Leaderboard;->getUnclaimed()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_c

    if-eqz p1, :cond_d

    goto :goto_3

    :cond_c
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    :goto_3
    return v2

    :cond_d
    return v0
.end method

.method public formattedRank()Ljava/lang/String;
    .locals 4

    .line 27
    iget-wide v0, p0, Lcom/intermedia/model/Leaderboard;->rank:J

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string/jumbo v0, "\u2014"

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/intermedia/model/Leaderboard;->rank:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAlltime()Lcom/intermedia/model/PersonalStatistics;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/intermedia/model/Leaderboard;->alltime:Lcom/intermedia/model/PersonalStatistics;

    return-object v0
.end method

.method public getRank()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/intermedia/model/Leaderboard;->rank:J

    return-wide v0
.end method

.method public getTotal()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/intermedia/model/Leaderboard;->total:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCents()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/intermedia/model/Leaderboard;->totalCents:J

    return-wide v0
.end method

.method public getUnclaimed()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/intermedia/model/Leaderboard;->unclaimed:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekly()Lcom/intermedia/model/PersonalStatistics;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/intermedia/model/Leaderboard;->weekly:Lcom/intermedia/model/PersonalStatistics;

    return-object v0
.end method

.method public getWins()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/intermedia/model/Leaderboard;->wins:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 13
    invoke-virtual {p0}, Lcom/intermedia/model/Leaderboard;->getRank()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/Leaderboard;->getTotalCents()J

    move-result-wide v3

    mul-int/2addr v0, v1

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/Leaderboard;->getWins()J

    move-result-wide v3

    mul-int/2addr v0, v1

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/model/Leaderboard;->getAlltime()Lcom/intermedia/model/PersonalStatistics;

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

    invoke-virtual {p0}, Lcom/intermedia/model/Leaderboard;->getWeekly()Lcom/intermedia/model/PersonalStatistics;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/model/Leaderboard;->getTotal()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/model/Leaderboard;->getUnclaimed()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    return v0
.end method

.method public setAlltime(Lcom/intermedia/model/PersonalStatistics;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/intermedia/model/Leaderboard;->alltime:Lcom/intermedia/model/PersonalStatistics;

    return-void
.end method

.method public setRank(J)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/intermedia/model/Leaderboard;->rank:J

    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/intermedia/model/Leaderboard;->total:Ljava/lang/String;

    return-void
.end method

.method public setTotalCents(J)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/intermedia/model/Leaderboard;->totalCents:J

    return-void
.end method

.method public setUnclaimed(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/intermedia/model/Leaderboard;->unclaimed:Ljava/lang/String;

    return-void
.end method

.method public setWeekly(Lcom/intermedia/model/PersonalStatistics;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/intermedia/model/Leaderboard;->weekly:Lcom/intermedia/model/PersonalStatistics;

    return-void
.end method

.method public setWins(J)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/intermedia/model/Leaderboard;->wins:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Leaderboard(rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Leaderboard;->getRank()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalCents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Leaderboard;->getTotalCents()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", wins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Leaderboard;->getWins()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", alltime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Leaderboard;->getAlltime()Lcom/intermedia/model/PersonalStatistics;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", weekly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Leaderboard;->getWeekly()Lcom/intermedia/model/PersonalStatistics;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Leaderboard;->getTotal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", unclaimed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Leaderboard;->getUnclaimed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
