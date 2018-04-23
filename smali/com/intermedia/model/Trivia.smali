.class public Lcom/intermedia/model/Trivia;
.super Ljava/lang/Object;
.source "Trivia.java"


# instance fields
.field private answer:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private optionB:Ljava/lang/String;

.field private optionC:Ljava/lang/String;

.field private question:Ljava/lang/String;


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
    instance-of p1, p1, Lcom/intermedia/model/Trivia;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 17
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/Trivia;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/Trivia;

    invoke-virtual {p1, p0}, Lcom/intermedia/model/Trivia;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/model/Trivia;->getQuestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Trivia;->getQuestion()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/intermedia/model/Trivia;->getAnswer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Trivia;->getAnswer()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/intermedia/model/Trivia;->getOptionB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Trivia;->getOptionB()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/intermedia/model/Trivia;->getOptionC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Trivia;->getOptionC()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/intermedia/model/Trivia;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Trivia;->getCategory()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_b

    if-eqz p1, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    :goto_4
    return v2

    :cond_c
    return v0
.end method

.method public getAnswer()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/intermedia/model/Trivia;->answer:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/intermedia/model/Trivia;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionB()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/intermedia/model/Trivia;->optionB:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionC()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/intermedia/model/Trivia;->optionC:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestion()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/intermedia/model/Trivia;->question:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 17
    invoke-virtual {p0}, Lcom/intermedia/model/Trivia;->getQuestion()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/intermedia/model/Trivia;->getAnswer()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/intermedia/model/Trivia;->getOptionB()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/Trivia;->getOptionC()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/Trivia;->getCategory()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public setAnswer(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/intermedia/model/Trivia;->answer:Ljava/lang/String;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/intermedia/model/Trivia;->category:Ljava/lang/String;

    return-void
.end method

.method public setOptionB(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/intermedia/model/Trivia;->optionB:Ljava/lang/String;

    return-void
.end method

.method public setOptionC(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/intermedia/model/Trivia;->optionC:Ljava/lang/String;

    return-void
.end method

.method public setQuestion(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/intermedia/model/Trivia;->question:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trivia(question="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Trivia;->getQuestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", answer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Trivia;->getAnswer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", optionB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Trivia;->getOptionB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", optionC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Trivia;->getOptionC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Trivia;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
