.class public Lcom/intermedia/model/GameInfo;
.super Ljava/lang/Object;
.source "GameInfo.java"


# instance fields
.field private activeQuestion:Z

.field private eligibleForRound:Z

.field private extraLives:I

.field private extraLivesRemaining:I

.field private inTheGame:Z

.field private questionCount:I

.field private questionNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/intermedia/model/GameInfo;->inTheGame:Z

    .line 16
    iput-boolean v0, p0, Lcom/intermedia/model/GameInfo;->eligibleForRound:Z

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/intermedia/model/GameInfo;->activeQuestion:Z

    .line 18
    iput v0, p0, Lcom/intermedia/model/GameInfo;->extraLives:I

    .line 19
    iput v0, p0, Lcom/intermedia/model/GameInfo;->extraLivesRemaining:I

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    instance-of p1, p1, Lcom/intermedia/model/GameInfo;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 13
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/GameInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/GameInfo;

    invoke-virtual {p1, p0}, Lcom/intermedia/model/GameInfo;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/model/GameInfo;->isInTheGame()Z

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/GameInfo;->isInTheGame()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/intermedia/model/GameInfo;->isEligibleForRound()Z

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/GameInfo;->isEligibleForRound()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/intermedia/model/GameInfo;->isActiveQuestion()Z

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/GameInfo;->isActiveQuestion()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/intermedia/model/GameInfo;->getExtraLives()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/GameInfo;->getExtraLives()I

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/intermedia/model/GameInfo;->getExtraLivesRemaining()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/GameInfo;->getExtraLivesRemaining()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/intermedia/model/GameInfo;->getQuestionNumber()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/GameInfo;->getQuestionNumber()I

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/intermedia/model/GameInfo;->getQuestionCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/GameInfo;->getQuestionCount()I

    move-result p1

    if-eq v1, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public getExtraLives()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/intermedia/model/GameInfo;->extraLives:I

    return v0
.end method

.method public getExtraLivesRemaining()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/intermedia/model/GameInfo;->extraLivesRemaining:I

    return v0
.end method

.method public getQuestionCount()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/intermedia/model/GameInfo;->questionCount:I

    return v0
.end method

.method public getQuestionNumber()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/intermedia/model/GameInfo;->questionNumber:I

    return v0
.end method

.method public hasExtraLife()Z
    .locals 1

    .line 24
    iget v0, p0, Lcom/intermedia/model/GameInfo;->extraLivesRemaining:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/intermedia/model/GameInfo;->inTheGame:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 13
    invoke-virtual {p0}, Lcom/intermedia/model/GameInfo;->isInTheGame()Z

    move-result v0

    const/16 v1, 0x61

    const/16 v2, 0x4f

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v3, 0x3b

    add-int/2addr v0, v3

    mul-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/GameInfo;->isEligibleForRound()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    add-int/2addr v0, v4

    mul-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/GameInfo;->isActiveQuestion()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v0, v1

    mul-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/GameInfo;->getExtraLives()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/GameInfo;->getExtraLivesRemaining()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/GameInfo;->getQuestionNumber()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/GameInfo;->getQuestionCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isActiveQuestion()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/intermedia/model/GameInfo;->activeQuestion:Z

    return v0
.end method

.method public isEligibleForRound()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/intermedia/model/GameInfo;->eligibleForRound:Z

    return v0
.end method

.method public isInTheGame()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/intermedia/model/GameInfo;->inTheGame:Z

    return v0
.end method

.method public setActiveQuestion(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/intermedia/model/GameInfo;->activeQuestion:Z

    return-void
.end method

.method public setEligibleForRound(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/intermedia/model/GameInfo;->eligibleForRound:Z

    return-void
.end method

.method public setExtraLives(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/intermedia/model/GameInfo;->extraLives:I

    return-void
.end method

.method public setExtraLivesRemaining(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/intermedia/model/GameInfo;->extraLivesRemaining:I

    return-void
.end method

.method public setInTheGame(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/intermedia/model/GameInfo;->inTheGame:Z

    return-void
.end method

.method public setQuestionCount(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/intermedia/model/GameInfo;->questionCount:I

    return-void
.end method

.method public setQuestionNumber(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/intermedia/model/GameInfo;->questionNumber:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameInfo(inTheGame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/GameInfo;->isInTheGame()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", eligibleForRound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/GameInfo;->isEligibleForRound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", activeQuestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/GameInfo;->isActiveQuestion()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", extraLives="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/GameInfo;->getExtraLives()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extraLivesRemaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/GameInfo;->getExtraLivesRemaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", questionNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/GameInfo;->getQuestionNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", questionCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/GameInfo;->getQuestionCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
