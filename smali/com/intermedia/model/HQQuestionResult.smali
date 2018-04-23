.class public Lcom/intermedia/model/HQQuestionResult;
.super Ljava/lang/Object;
.source "HQQuestionResult.java"


# instance fields
.field private correctAnswer:Lcom/intermedia/model/HQAnswerResult;

.field private extraLivesRemaining:I

.field private question:Ljava/lang/String;

.field private questionId:J

.field private results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/intermedia/model/HQAnswerResult;",
            ">;"
        }
    .end annotation
.end field

.field private savedByExtraLife:Z

.field private totalVotes:I

.field private userCorrect:Z

.field private yourAnswer:Lcom/intermedia/model/HQAnswerResult;

.field private yourAnswerId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 12
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "questionId"

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intermedia/model/HQQuestionResult;->questionId:J

    const-string v0, "question"

    .line 35
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/model/HQQuestionResult;->question:Ljava/lang/String;

    const-string v0, "youGotItRight"

    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/intermedia/model/HQQuestionResult;->userCorrect:Z

    const-string v0, "savedByExtraLife"

    .line 37
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/intermedia/model/HQQuestionResult;->savedByExtraLife:Z

    const-string v0, "yourAnswerId"

    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/intermedia/model/HQQuestionResult;->yourAnswerId:I

    const-string v0, "extraLivesRemaining"

    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/intermedia/model/HQQuestionResult;->extraLivesRemaining:I

    const-string v0, "answerCounts"

    .line 41
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    .line 43
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 49
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v10, v3

    :goto_0
    if-ge v3, v1, :cond_1

    .line 53
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "count"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v10, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, v1, :cond_4

    .line 57
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "answer"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "count"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 59
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "answerId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 60
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "correct"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 62
    new-instance v11, Lcom/intermedia/model/HQAnswerResult;

    move-object v4, v11

    move v6, v3

    move v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/intermedia/model/HQAnswerResult;-><init>(Ljava/lang/String;ZIII)V

    .line 64
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {v11}, Lcom/intermedia/model/HQAnswerResult;->getAnswerId()I

    move-result v4

    iget v5, p0, Lcom/intermedia/model/HQQuestionResult;->yourAnswerId:I

    if-ne v4, v5, :cond_2

    .line 67
    iput-object v11, p0, Lcom/intermedia/model/HQQuestionResult;->yourAnswer:Lcom/intermedia/model/HQAnswerResult;

    :cond_2
    if-eqz v3, :cond_3

    .line 70
    iput-object v11, p0, Lcom/intermedia/model/HQQuestionResult;->correctAnswer:Lcom/intermedia/model/HQAnswerResult;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 73
    :cond_4
    iput-object v0, p0, Lcom/intermedia/model/HQQuestionResult;->results:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 20
    instance-of p1, p1, Lcom/intermedia/model/HQQuestionResult;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 20
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/HQQuestionResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/HQQuestionResult;

    invoke-virtual {p1, p0}, Lcom/intermedia/model/HQQuestionResult;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->isUserCorrect()Z

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQQuestionResult;->isUserCorrect()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->isSavedByExtraLife()Z

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQQuestionResult;->isSavedByExtraLife()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getExtraLivesRemaining()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQQuestionResult;->getExtraLivesRemaining()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getQuestionId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/intermedia/model/HQQuestionResult;->getQuestionId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getYourAnswerId()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQQuestionResult;->getYourAnswerId()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getQuestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQQuestionResult;->getQuestion()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_8

    if-eqz v3, :cond_9

    goto :goto_0

    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_0
    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getTotalVotes()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQQuestionResult;->getTotalVotes()I

    move-result v3

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getCorrectAnswer()Lcom/intermedia/model/HQAnswerResult;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQQuestionResult;->getCorrectAnswer()Lcom/intermedia/model/HQAnswerResult;

    move-result-object v3

    if-nez v1, :cond_b

    if-eqz v3, :cond_c

    goto :goto_1

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_1
    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getResults()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQQuestionResult;->getResults()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v1, :cond_d

    if-eqz v3, :cond_e

    goto :goto_2

    :cond_d
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_2
    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getYourAnswer()Lcom/intermedia/model/HQAnswerResult;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQQuestionResult;->getYourAnswer()Lcom/intermedia/model/HQAnswerResult;

    move-result-object p1

    if-nez v1, :cond_f

    if-eqz p1, :cond_10

    goto :goto_3

    :cond_f
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    :goto_3
    return v2

    :cond_10
    return v0
.end method

.method public getCorrectAnswer()Lcom/intermedia/model/HQAnswerResult;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/intermedia/model/HQQuestionResult;->correctAnswer:Lcom/intermedia/model/HQAnswerResult;

    return-object v0
.end method

.method public getExtraLivesRemaining()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/intermedia/model/HQQuestionResult;->extraLivesRemaining:I

    return v0
.end method

.method public getQuestion()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/intermedia/model/HQQuestionResult;->question:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestionId()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/intermedia/model/HQQuestionResult;->questionId:J

    return-wide v0
.end method

.method public getResults()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/intermedia/model/HQAnswerResult;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/intermedia/model/HQQuestionResult;->results:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalVotes()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/intermedia/model/HQQuestionResult;->totalVotes:I

    return v0
.end method

.method public getYourAnswer()Lcom/intermedia/model/HQAnswerResult;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/intermedia/model/HQQuestionResult;->yourAnswer:Lcom/intermedia/model/HQAnswerResult;

    return-object v0
.end method

.method public getYourAnswerId()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/intermedia/model/HQQuestionResult;->yourAnswerId:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 20
    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->isUserCorrect()Z

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

    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->isSavedByExtraLife()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getExtraLivesRemaining()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getQuestionId()J

    move-result-wide v1

    mul-int/2addr v0, v3

    const/16 v4, 0x20

    ushr-long v4, v1, v4

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getYourAnswerId()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getQuestion()Ljava/lang/String;

    move-result-object v1

    mul-int/2addr v0, v3

    const/16 v2, 0x2b

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getTotalVotes()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getCorrectAnswer()Lcom/intermedia/model/HQAnswerResult;

    move-result-object v1

    mul-int/2addr v0, v3

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getResults()Ljava/util/ArrayList;

    move-result-object v1

    mul-int/2addr v0, v3

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getYourAnswer()Lcom/intermedia/model/HQAnswerResult;

    move-result-object v1

    mul-int/2addr v0, v3

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public isSavedByExtraLife()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/intermedia/model/HQQuestionResult;->savedByExtraLife:Z

    return v0
.end method

.method public isUserCorrect()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/intermedia/model/HQQuestionResult;->userCorrect:Z

    return v0
.end method

.method public playerDidAnswer()Z
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getYourAnswerId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCorrectAnswer(Lcom/intermedia/model/HQAnswerResult;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/intermedia/model/HQQuestionResult;->correctAnswer:Lcom/intermedia/model/HQAnswerResult;

    return-void
.end method

.method public setExtraLivesRemaining(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/intermedia/model/HQQuestionResult;->extraLivesRemaining:I

    return-void
.end method

.method public setQuestion(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/intermedia/model/HQQuestionResult;->question:Ljava/lang/String;

    return-void
.end method

.method public setQuestionId(J)V
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/intermedia/model/HQQuestionResult;->questionId:J

    return-void
.end method

.method public setResults(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/intermedia/model/HQAnswerResult;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/intermedia/model/HQQuestionResult;->results:Ljava/util/ArrayList;

    return-void
.end method

.method public setSavedByExtraLife(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/intermedia/model/HQQuestionResult;->savedByExtraLife:Z

    return-void
.end method

.method public setTotalVotes(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/intermedia/model/HQQuestionResult;->totalVotes:I

    return-void
.end method

.method public setUserCorrect(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/intermedia/model/HQQuestionResult;->userCorrect:Z

    return-void
.end method

.method public setYourAnswer(Lcom/intermedia/model/HQAnswerResult;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/intermedia/model/HQQuestionResult;->yourAnswer:Lcom/intermedia/model/HQAnswerResult;

    return-void
.end method

.method public setYourAnswerId(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/intermedia/model/HQQuestionResult;->yourAnswerId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HQQuestionResult(userCorrect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->isUserCorrect()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", savedByExtraLife="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->isSavedByExtraLife()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", extraLivesRemaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getExtraLivesRemaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", questionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getQuestionId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", yourAnswerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getYourAnswerId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", question="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getQuestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalVotes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getTotalVotes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", correctAnswer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getCorrectAnswer()Lcom/intermedia/model/HQAnswerResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", results="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getResults()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", yourAnswer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQQuestionResult;->getYourAnswer()Lcom/intermedia/model/HQAnswerResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
