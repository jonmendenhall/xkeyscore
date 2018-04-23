.class public Lcom/intermedia/model/message/GameStatusMessage;
.super Ljava/lang/Object;
.source "GameStatusMessage.java"


# instance fields
.field private extraLives:I

.field private extraLivesRemaining:I

.field private inTheGame:Z

.field private prize:Ljava/lang/String;

.field private questionCount:J

.field private questionNumber:J


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
    instance-of p1, p1, Lcom/intermedia/model/message/GameStatusMessage;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 17
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/message/GameStatusMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/message/GameStatusMessage;

    invoke-virtual {p1, p0}, Lcom/intermedia/model/message/GameStatusMessage;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/model/message/GameStatusMessage;->isInTheGame()Z

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/message/GameStatusMessage;->isInTheGame()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/intermedia/model/message/GameStatusMessage;->getPrize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/message/GameStatusMessage;->getPrize()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/intermedia/model/message/GameStatusMessage;->getQuestionNumber()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/intermedia/model/message/GameStatusMessage;->getQuestionNumber()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/intermedia/model/message/GameStatusMessage;->getQuestionCount()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/intermedia/model/message/GameStatusMessage;->getQuestionCount()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/intermedia/model/message/GameStatusMessage;->getExtraLives()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/message/GameStatusMessage;->getExtraLives()I

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/intermedia/model/message/GameStatusMessage;->getExtraLivesRemaining()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/message/GameStatusMessage;->getExtraLivesRemaining()I

    move-result p1

    if-eq v1, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public getExtraLives()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/intermedia/model/message/GameStatusMessage;->extraLives:I

    return v0
.end method

.method public getExtraLivesRemaining()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/intermedia/model/message/GameStatusMessage;->extraLivesRemaining:I

    return v0
.end method

.method public getPrize()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/intermedia/model/message/GameStatusMessage;->prize:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestionCount()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/intermedia/model/message/GameStatusMessage;->questionCount:J

    return-wide v0
.end method

.method public getQuestionNumber()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/intermedia/model/message/GameStatusMessage;->questionNumber:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 17
    invoke-virtual {p0}, Lcom/intermedia/model/message/GameStatusMessage;->isInTheGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/message/GameStatusMessage;->getPrize()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/intermedia/model/message/GameStatusMessage;->getQuestionNumber()J

    move-result-wide v2

    mul-int/2addr v0, v1

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/model/message/GameStatusMessage;->getQuestionCount()J

    move-result-wide v2

    mul-int/2addr v0, v1

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/message/GameStatusMessage;->getExtraLives()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/message/GameStatusMessage;->getExtraLivesRemaining()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isInTheGame()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/intermedia/model/message/GameStatusMessage;->inTheGame:Z

    return v0
.end method

.method public setExtraLives(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/intermedia/model/message/GameStatusMessage;->extraLives:I

    return-void
.end method

.method public setExtraLivesRemaining(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/intermedia/model/message/GameStatusMessage;->extraLivesRemaining:I

    return-void
.end method

.method public setInTheGame(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/intermedia/model/message/GameStatusMessage;->inTheGame:Z

    return-void
.end method

.method public setPrize(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/intermedia/model/message/GameStatusMessage;->prize:Ljava/lang/String;

    return-void
.end method

.method public setQuestionCount(J)V
    .locals 0

    .line 14
    iput-wide p1, p0, Lcom/intermedia/model/message/GameStatusMessage;->questionCount:J

    return-void
.end method

.method public setQuestionNumber(J)V
    .locals 0

    .line 14
    iput-wide p1, p0, Lcom/intermedia/model/message/GameStatusMessage;->questionNumber:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameStatusMessage(inTheGame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/message/GameStatusMessage;->isInTheGame()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", prize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/message/GameStatusMessage;->getPrize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", questionNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/message/GameStatusMessage;->getQuestionNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", questionCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/message/GameStatusMessage;->getQuestionCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", extraLives="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/message/GameStatusMessage;->getExtraLives()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extraLivesRemaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/message/GameStatusMessage;->getExtraLivesRemaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
