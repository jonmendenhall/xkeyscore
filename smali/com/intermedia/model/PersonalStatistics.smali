.class public Lcom/intermedia/model/PersonalStatistics;
.super Ljava/lang/Object;
.source "PersonalStatistics.java"


# instance fields
.field rank:J

.field total:Ljava/lang/String;

.field wins:J


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
    instance-of p1, p1, Lcom/intermedia/model/PersonalStatistics;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 17
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/PersonalStatistics;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/PersonalStatistics;

    invoke-virtual {p1, p0}, Lcom/intermedia/model/PersonalStatistics;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/model/PersonalStatistics;->getTotal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/PersonalStatistics;->getTotal()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/intermedia/model/PersonalStatistics;->getWins()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/intermedia/model/PersonalStatistics;->getWins()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/intermedia/model/PersonalStatistics;->getRank()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/intermedia/model/PersonalStatistics;->getRank()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public getRank()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/intermedia/model/PersonalStatistics;->rank:J

    return-wide v0
.end method

.method public getTotal()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/intermedia/model/PersonalStatistics;->total:Ljava/lang/String;

    return-object v0
.end method

.method public getWins()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/intermedia/model/PersonalStatistics;->wins:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 17
    invoke-virtual {p0}, Lcom/intermedia/model/PersonalStatistics;->getTotal()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/PersonalStatistics;->getWins()J

    move-result-wide v2

    mul-int/2addr v0, v1

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/model/PersonalStatistics;->getRank()J

    move-result-wide v2

    mul-int/2addr v0, v1

    ushr-long v4, v2, v4

    xor-long v1, v4, v2

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setRank(J)V
    .locals 0

    .line 14
    iput-wide p1, p0, Lcom/intermedia/model/PersonalStatistics;->rank:J

    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/intermedia/model/PersonalStatistics;->total:Ljava/lang/String;

    return-void
.end method

.method public setWins(J)V
    .locals 0

    .line 14
    iput-wide p1, p0, Lcom/intermedia/model/PersonalStatistics;->wins:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersonalStatistics(total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/PersonalStatistics;->getTotal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", wins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/PersonalStatistics;->getWins()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/PersonalStatistics;->getRank()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
