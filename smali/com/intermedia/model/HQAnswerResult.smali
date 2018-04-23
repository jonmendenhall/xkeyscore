.class public Lcom/intermedia/model/HQAnswerResult;
.super Ljava/lang/Object;
.source "HQAnswerResult.java"


# instance fields
.field private answer:Ljava/lang/String;

.field private answerId:I

.field private correct:Z

.field private total:I

.field private votes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZIII)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/intermedia/model/HQAnswerResult;->answer:Ljava/lang/String;

    .line 27
    iput-boolean p2, p0, Lcom/intermedia/model/HQAnswerResult;->correct:Z

    .line 28
    iput p3, p0, Lcom/intermedia/model/HQAnswerResult;->votes:I

    .line 29
    iput p4, p0, Lcom/intermedia/model/HQAnswerResult;->total:I

    .line 30
    iput p5, p0, Lcom/intermedia/model/HQAnswerResult;->answerId:I

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 17
    instance-of p1, p1, Lcom/intermedia/model/HQAnswerResult;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 17
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/HQAnswerResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/HQAnswerResult;

    invoke-virtual {p1, p0}, Lcom/intermedia/model/HQAnswerResult;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/model/HQAnswerResult;->getAnswer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQAnswerResult;->getAnswer()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/intermedia/model/HQAnswerResult;->isCorrect()Z

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQAnswerResult;->isCorrect()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/intermedia/model/HQAnswerResult;->getVotes()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQAnswerResult;->getVotes()I

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/intermedia/model/HQAnswerResult;->getTotal()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQAnswerResult;->getTotal()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/intermedia/model/HQAnswerResult;->getAnswerId()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQAnswerResult;->getAnswerId()I

    move-result p1

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public getAnswer()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/intermedia/model/HQAnswerResult;->answer:Ljava/lang/String;

    return-object v0
.end method

.method public getAnswerId()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/intermedia/model/HQAnswerResult;->answerId:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/intermedia/model/HQAnswerResult;->total:I

    return v0
.end method

.method public getVotes()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/intermedia/model/HQAnswerResult;->votes:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 17
    invoke-virtual {p0}, Lcom/intermedia/model/HQAnswerResult;->getAnswer()Ljava/lang/String;

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

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/HQAnswerResult;->isCorrect()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x4f

    goto :goto_1

    :cond_1
    const/16 v2, 0x61

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/HQAnswerResult;->getVotes()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/HQAnswerResult;->getTotal()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/HQAnswerResult;->getAnswerId()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isCorrect()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/intermedia/model/HQAnswerResult;->correct:Z

    return v0
.end method

.method public setAnswer(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/intermedia/model/HQAnswerResult;->answer:Ljava/lang/String;

    return-void
.end method

.method public setAnswerId(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/intermedia/model/HQAnswerResult;->answerId:I

    return-void
.end method

.method public setCorrect(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/intermedia/model/HQAnswerResult;->correct:Z

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/intermedia/model/HQAnswerResult;->total:I

    return-void
.end method

.method public setVotes(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/intermedia/model/HQAnswerResult;->votes:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HQAnswerResult(answer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQAnswerResult;->getAnswer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", correct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQAnswerResult;->isCorrect()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", votes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQAnswerResult;->getVotes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQAnswerResult;->getTotal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", answerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQAnswerResult;->getAnswerId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
